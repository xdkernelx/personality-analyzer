class Score < ActiveRecord::Base
  validates :email, :score, { presence: true }
  validates :email, :username, { uniqueness: true }
  validates :email, format: { with: /^[a-zA-Z0-9]+.?[a-zA-Z0-9]*@[a-zA-Z0-9]*.?[a-zA-Z0-9]*.[a-zA-Z]{2,}.?[a-zA-Z]{2,}/, multiline: true }
end
