require 'rails_helper'

describe "Songs tests" do
  let(:artist)  { create(:artist) }
  let(:artist2) { create(:artist, name: "Next big thing") }

  let!(:song)   { create(:song, artist: artist) }
  let!(:song2)  { create(:song, title: "Hello", artist: artist) }
  let!(:song3)  { create(:song, title: "Next big song", artist: artist2) }

  describe "Association tests" do

    it "belongs to it's own artist" do
      expect(song.artist).to eq(artist)
    end

    it "does belong to another artist" do
      expect(song.artist).to_not eq(artist2)
    end

  end

  describe "Validations tests" do

    it "doesn't work with no title" do
      song.title = nil
      expect(song).to_not be_valid
    end

    it "doesn't allow for songs with the same title" do
      song.title = song2.title
      expect(song).to_not be_valid
    end

  end
end
