class RelateReviewsToUsersAndSchools < ActiveRecord::Migration
  def change
    add_reference :reviews, :users
    add_reference :reviews, :schools
  end
end
