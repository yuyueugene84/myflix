require 'spec_helper'

describe Video do
  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "search_by_title" do 
    it 'if none of the videos found, return an empty array' do 
      futurama = Video.create(
        title: "Futurama",
        description: "A famous cartoon about future",
        thumbnail_url: "/tmp/futurama.jpg",
        cover_img_url: "/tmp/monk_large.jpg" )
      expect(Video.search_by_title("house of cards")).to eq([])
    end

    it 'should return video with title that matches the user input title' do 
      futurama = Video.create(
        title: "Futurama",
        description: "A famous cartoon about future",
        thumbnail_url: "/tmp/futurama.jpg",
        cover_img_url: "/tmp/monk_large.jpg" )
      expect(Video.search_by_title("Futurama")).to eq([futurama])
    end

    it 'should return video with title that only partially matches the user input' do 
      futurama = Video.create(
        title: "Futurama",
        description: "A famous cartoon about future",
        thumbnail_url: "/tmp/futurama.jpg",
        cover_img_url: "/tmp/monk_large.jpg" )
      expect(Video.search_by_title("Futur")).to eq([futurama])
    end

    it 'should return empty array if user input is nothing' do 
      futurama = Video.create(
        title: "Futurama",
        description: "A famous cartoon about future",
        thumbnail_url: "/tmp/futurama.jpg",
        cover_img_url: "/tmp/monk_large.jpg" )
      expect(Video.search_by_title("")).to eq([])
    end

    it 'should return matched videos ordered by created_at' do 
      futurama = Video.create(
        title: "Futurama",
        description: "A famous cartoon about future episode 1",
        created_at: Date.yesterday )

      futurama2 = Video.create(
        title: "Futurama2",
        description: "A famous cartoon about future episode 2",
        thumbnail_url: "/tmp/futurama.jpg",
        cover_img_url: "/tmp/monk_large.jpg" )

      expect(Video.search_by_title("Futurama")).to eq([futurama, futurama2])
    end
  end

end
