class CreateSentences < ActiveRecord::Migration
  def change
    create_table(:sentences, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|

   	  t.integer "structure_id" 
   	  t.integer "language_id" 
   	  t.integer "user_id" 
      t.string "sentence"
   	  t.string "phonetic_version"
   	  t.integer "score" 

      t.timestamps null: false
    end
  end
end
