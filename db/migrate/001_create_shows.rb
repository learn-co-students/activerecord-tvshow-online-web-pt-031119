class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |elements|
      elements.string :name
      elements.string :network
      elements.string :day
      elements.integer :rating
    end

  end
  
end