require "test_helper"

class Api::AlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = Artist.create! name: "The Beatles"
    @album = Album.create! title: "Abbey Road", artist: @artist
  end

  test "index" do
    get api_artist_albums_url(@artist, format: :json)
    assert_response :success
    body = JSON.parse(response.body)
    assert_equal 1, body.length
  end
end
