class RenameReccomendationsToRecommendations < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :reccomendations, :recommendations
  end

  def self.down
    rename_table :recommendations, :reccomendations
  end
end
