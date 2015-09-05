class CreateSentenceTranslations < ActiveRecord::Migration
  def change
    create_table(:sentence_translations, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|

    	t.integer "sentence_id"
    	t.integer "language_id"
    	t.integer "user_id"
    	t.string "translation"

      t.timestamps null: false
    end
  end
end
