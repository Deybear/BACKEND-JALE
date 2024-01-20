class CreateReviews < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :reviews do |t|
      t.string :review_title
      t.string :review_desc
      t.integer :review_score
      t.boolean :review_display

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :reviews

  end

end
