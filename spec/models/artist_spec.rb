require 'rails_helper'

describe "Artist tests" do
  let(:artist)  { create(:artist) }
  let(:artist2) { create(:artist, name: "Next big thing") }

  let!(:song)   { create(:song, artist: artist) }
  let!(:song2)  { create(:song, title: "Hello", artist: artist) }
  let!(:song3)  { create(:song, title: "Next big song", artist: artist2) }

  describe "Association tests" do

    it "can have more than one song" do
      expect(artist.songs.length).to eq(2)
    end

    it "does not have another artists songs" do
      expect(artist.songs).to_not include(song3)
    end

  end

  describe "Validations tests" do
      
    it "doesn't work with no name" do
      artist.name = ""
      expect(artist).to_not be_valid
    end

    it "doesn't allow for artists with the same name" do
      artist.name = artist2.name
      expect(artist).to_not be_valid
    end

  end
end
