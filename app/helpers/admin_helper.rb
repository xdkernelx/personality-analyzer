helpers do

  def sort_db

    match_pair = []
    elements = Assessment.all

    elements = elements.select { |element| !element.score.nil? }
    sorted_results = elements.sort_by { |item| -item.score }

    sorted_results.each do |res|
      user = User.find(res.id)
      match_pair << [user, res]
    end

    match_pair[0, 15]

  end

end