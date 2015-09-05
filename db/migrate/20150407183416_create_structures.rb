class CreateStructures < ActiveRecord::Migration
  def change
    create_table(:structures, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|

      t.string "name" 
      t.integer "user_id"
      t.string "example"
      t.string "romaji"
      t.string "english_meaning"
      t.string "formation"
      t.integer "jlpt_level"
      t.text "notes"
      t.string "related"

      t.timestamps null: false
    end
  end
end