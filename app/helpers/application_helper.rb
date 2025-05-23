module ApplicationHelper
end



def extract_youtube_id(url)
  uri = URI.parse(url)
  if uri.host == "youtu.be"
    uri.path[1..]
  elsif uri.host.include?("youtube.com")
    Rack::Utils.parse_query(uri.query)["v"]
  else
    nil
  end
rescue
  nil
end
