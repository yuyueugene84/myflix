require 'spec_helper'

describe Category do
  it { should have_many(:videos)}

  describe "#recent_videos" do 
    it 'should return the most recent six videos from this category' do 
      drama = Category.create(name: "Drama")
      dramas = []
      7.times do |v|
        video = Video.create(title: "drama_#{v}", description: "test data", category_id: drama.id)
        dramas << video
      end
      dramas.pop
      expect(drama.recent_videos).to eq(dramas)
    end

    it 'return all videos if there are less than six videos' do 
      drama = Category.create(name: "Drama")
      futurama = Video.create(
        title: "Futurama",
        description: "A famous cartoon about future",
        category_id: drama.id)
      house_of_cards = Video.create(
        title: "House of Cards",
        description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
        category_id: drama.id)
      man_in_the_high_castle = Video.create(
        title: "Man in High Castle",
        description: "Series based on novel about an alternate world where Axis power won WWII",
        category_id: drama.id)

      expect(drama.recent_videos).to eq([futurama, house_of_cards, man_in_the_high_castle])
    end

    it 'order of video should be reverse chronically ordered' do 
      drama = Category.create(name: "Drama")
      dramas = []
      6.times do |v|
        video = Video.create(title: "drama_#{v}", description: "test data", category_id: drama.id, created_at: v.days.ago)
        dramas << video
      end

      expect(drama.recent_videos).to eq(dramas.reverse!)
    end

    it 'should return empty array if there is no videos in the category' do 
      comedy = Category.create(name: "comedy")
      expect(comedy.recent_videos).to eq([])
    end
  end
end