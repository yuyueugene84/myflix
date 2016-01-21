require 'spec_helper'

describe Category do
  it { should have_many(:videos)}

  describe "#recent_videos" do 
    it "should return an empty arrayif there is no video" do
      drama = Category.create(name: "Drama")
      expect(drama.recent_videos).to eq([])
    end

    it "should return videos that belong in the same category" do
      house_of_cards = Video.create(
        title: "House of Cards",
        description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
        created_at: 1.day.ago)

      man_in_the_high_castle = Video.create(
        title: "Man in High Castle",
        description: "Series based on novel about an alternate world where Axis power won WWII")

      drama = Category.create(name: "Drama")
      drama.videos << man_in_the_high_castle
      drama.videos << house_of_cards

      expect(drama.recent_videos).to eq([man_in_the_high_castle, house_of_cards])
    end

    it "should return all videos if there are less than 6 videos" do
      house_of_cards = Video.create(
        title: "House of Cards",
        description: "Story about Dirty Politician, Frank Underwood, and his rise to power.",
        created_at: 1.day.ago)

      man_in_the_high_castle = Video.create(
        title: "Man in High Castle",
        description: "Series based on novel about an alternate world where Axis power won WWII")

      drama = Category.create(name: "Drama")
      drama.videos << man_in_the_high_castle
      drama.videos << house_of_cards

      expect(drama.recent_videos).to eq([man_in_the_high_castle, house_of_cards])
    end

    it "should return the six videos if there are more than six videos" do
      drama = Category.create(name: "Drama")

      7.times do |v|
        video = Video.create(
        title: "test video#{v}",
        description: "test data video#{v}",
        created_at: v.day.ago)
        drama.videos << video
      end

      expect(drama.recent_videos.length).to eq(6)
    end
  end


end