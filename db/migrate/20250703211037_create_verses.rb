class CreateVerses < ActiveRecord::Migration[7.2]
  def change
    create_table :verses do |t|
      t.references :subject, null: false, foreign_key: true
      t.integer :surah_number
      t.integer :verse_number
      t.text :text

      t.timestamps
    end
  end
end


# class CreateVerses < ActiveRecord::Migration[7.2]
#   def change
#     create_table :verses do |t|
#       t.integer :surah_number, null: false
#       t.integer :verse_number, null: false
#       t.text :content, null: false
#       t.references :subject, null: false, foreign_key: true

#       t.timestamps
#     end

#     add_index :verses, [:surah_number, :verse_number]
#   end
# end
