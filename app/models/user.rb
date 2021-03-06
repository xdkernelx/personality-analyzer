require 'bcrypt'
require 'traitify'

class User < ActiveRecord::Base
  include BCrypt, Traitify

  has_many :assessments

  validates :username, :email, :hashed_password, { presence: true }
  validates :email, :username, { uniqueness: true }
  validates :email, format: { with: /^[a-zA-Z0-9]+.?[a-zA-Z0-9]*@[a-zA-Z0-9]*.?[a-zA-Z0-9]*.[a-zA-Z]{2,}.?[a-zA-Z]{2,}$/, multiline: true }
  validates :username, format: { with: /^[a-zA-Z0-9_]{6,}$/, multiline: true }
  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    self.hashed_password = Password.create(new_password)
  end

  def self.authenticate( email, password )

    user = User.find_by(email: email.strip)
    if user && (user.password == password)
      return user
    end
      return nil
  end

  def self.authenticate_by_username( username, password )

    user = User.find_by(username: username.strip)
    if user && (user.password == password)
      return user
    end
      return nil
  end

  def self.traitify_access
    traitify = Traitify.new(
      host: "https://api-sandbox.traitify.com",
      version: "v1",
      secret_key: ENV['SECRET']
    )
    return traitify
  end

end
