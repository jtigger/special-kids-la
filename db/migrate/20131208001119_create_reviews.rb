class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :summary
      t.decimal :rating
      t.text :body

      t.timestamps
    end
  end
end
