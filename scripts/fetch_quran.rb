require 'net/http'
require 'json'
require 'fileutils'

def fetch_data(surah, lang)
  url = URI("http://api.alquran.cloud/v1/surah/#{surah}/#{lang}")
  res = Net::HTTP.get(url)
  JSON.parse(res)["data"]
end

puts "📥 Téléchargement des 114 sourates..."

all = []

(1..114).each do |num|
  puts "→ Sourate #{num}"

  begin
    arabic_data = fetch_data(num, 'ar')
    french_data = fetch_data(num, 'fr.hamidullah')

    verses = arabic_data["ayahs"].each_with_index.map do |aya, i|
      {
        "arabic" => aya["text"],
        "french" => french_data["ayahs"][i]["text"]
      }
    end

    all << {
      "number" => arabic_data["number"],
      "name" => arabic_data["englishName"],
      "arabic_name" => arabic_data["name"],
      "verses" => verses
    }
  rescue => e
    puts "❌ Erreur pour la sourate #{num} : #{e.message}"
  end
end

FileUtils.mkdir_p("db")
File.write("db/quran.json", JSON.pretty_generate(all))
puts "✅ Fichier db/quran.json généré avec succès."
