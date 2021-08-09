require 'rails_helper'

describe Art do 
  it "returns a 200 success header when the API call is made" do
    response = Art.get_art
    expect(response.code).to(eq(200))
  end 
  
  it "returns art when the API call is made" do
    response = JSON.parse(Art.get_art)
    expect(response["data"]["title"]).to_not(eq(nil))
  end

end 