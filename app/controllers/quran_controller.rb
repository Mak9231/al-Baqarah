


class QuranController < ApplicationController
  def surahs
    path = Rails.root.join("db", "quran.json")
    @surahs = JSON.parse(File.read(path))
  end
  def show_surah
    path = Rails.root.join("db", "quran.json")
    data = JSON.parse(File.read(path))
    @surahs = data
    @surah = data.find { |s| s["number"].to_s == params[:id] }

    if @surah.nil?
      render plain: "Sourate non trouvée", status: 404
    else
      @surah_number = @surah["number"]
      @total_surahs = data.size
    end
  end


  def subjects
  end

  def arabic
  end


end



# def show
#   @surah_number = params[:id].to_i
#   file = File.read(Rails.root.join("db/quran.json"))
#   surahs = JSON.parse(file)
#   @surah = surahs.find { |s| s["number"] == @surah_number }

#   # Récitateur (valeur par défaut = saadghamdi)
#   @reciter = params[:reciter] || "ar.saadghamdi"
# end


# def test_json
#   path = Rails.root.join("db", "quran.json")

#   unless File.exist?(path)
#     render plain: "❌ Fichier non trouvé à #{path}", status: 404
#     return
#   end

#   begin
#     raw = File.read(path)
#     data = JSON.parse(raw)

#     if data.is_a?(Array) && data.first["verses"]
#       render plain: "✅ Fichier JSON chargé : #{data.first['name']} – #{data.first['verses'].size} versets."
#     else
#       render plain: "⚠️ Fichier trouvé mais format inattendu."
#     end
#   rescue => e
#     render plain: "❌ Erreur : #{e.message}", status: 500
#   end
# end
