class CreateSubjectVerses < ActiveRecord::Migration[7.2]
  def change
    create_table :subject_verses do |t|
      t.references :subject, null: false, foreign_key: true
      t.integer :verse_number
      t.integer :surah_number

      t.timestamps
    end
  end
end
