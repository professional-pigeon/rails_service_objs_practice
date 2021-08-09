class Art
  attr_accessor :art_me

  def initialize(art_me)
    @art_me = art_me
  end

  def get_art
    response = HTTParty.get('https://api.artic.edu/api/v1/artworks/search?q=' + @art_me + '')
    # response["data"][0]["thumbnail"]["lqip"]
    JSON.parse(response.body)["data"][0]["thumbnail"]["lqip"]
  end

end

    # response["data"][0]["thumbnail"]["lqip"]
    # TRYING OUT THE RESTCLIENT
    # response = RestClient::Request.execute(method: :get, url: 'https://api.artic.edu/api/v1/artworks')

