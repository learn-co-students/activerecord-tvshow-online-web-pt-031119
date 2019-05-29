class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)

  end

  def Show::most_popular_show
    Show.select(:id, :name, :network, :day, :rating, :season).where("rating = #{maximum(:rating)}")[0]
  end

  def Show::lowest_rating
    Show.minimum(:rating)

  end

  def Show::least_popular_show
    Show.select(:id, :name, :network, :day, :rating, :season).where("rating = #{minimum(:rating)}")[0]

  end

  def Show::ratings_sum
    Show.sum(:rating)

  end

  def Show::popular_shows
    Show.select(:id, :name, :network, :day, :rating, :season).where("rating > 5")

  end

  def Show::shows_by_alphabetical_order
    Show.select(:id, :name, :network, :day, :rating, :season).order(name: :asc)

  end
  
end