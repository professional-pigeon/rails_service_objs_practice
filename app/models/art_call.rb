class Art

  def initialize(art_me)
    @art_me = art_me
  end

  def get_art
    response = HTTParty.get('https://api.artic.edu/api/v1/artworks/search?q=' + @art_me + '')
    response.data[0].thumbnail.lqip
  end
end
