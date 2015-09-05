class CreateLanguages < ActiveRecord::Migration
  def change
    create_table(:languages, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|

      t.string "language_name" 
      t.string "language_en" 
      t.string "language_code", :limit => 2

      t.timestamps null: false
    end
  end
end
