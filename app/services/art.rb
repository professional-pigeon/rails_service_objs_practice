class Art
  attr_accessor :art_me
  require 'pry'

  def initialize(art_me)
    @art_me = art_me
  end

  def get_art
    response = HTTParty.get('https://api.artic.edu/api/v1/artworks/search?q=' + @art_me + '')
    # response["data"][0]["thumbnail"]["lqip"]
    JSON.parse(response.body)["data"][0]["thumbnail"]["lqip"]
  end

  def get_art_really
    response = HTTParty.get('https://api.artic.edu/api/v1/artworks/search?q=' + @art_me + '')
    @link = JSON.parse(response.body)["data"][2]["api_link"]
    response2 = HTTParty.get(@link)
    piece1 = JSON.parse(response2.body)["config"]["iiif_url"]
    piece2 = JSON.parse(response2.body)["data"]["image_id"]
    return piece1 + "/" + piece2 + "/full/843,/0/default.jpg"
  end

end

    # response["data"][0]["thumbnail"]["lqip"]
    # TRYING OUT THE RESTCLIENT
    # # response = RestClient::Request.execute(method: :get, url: 'https://api.artic.edu/api/v1/artworks')
    # @link = JSON.parse(response.body)["data"][0]["thumbnail"]["lqip"]
    # response2 = HTTParty.get(@link)
    # piece1 = JSON.parse(response2.body)["config"]["iiif-url"]
    # piece2 = JSON.parse(response2.body)["data"]["image_id"]
    # + "/full/843,/0/default.jpg"

