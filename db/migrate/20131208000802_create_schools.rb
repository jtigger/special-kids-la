class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :avatar_url
      t.decimal :overall_rating

      t.timestamps
    end
  end
end
