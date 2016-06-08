
RSpec.describe SpaceTag, :type => :model do

  let(:new_post) { Post.new(content: "Best post eva, fo reel") }
  let(:new_tag) { SpaceTag.new(x: 10, y: 20, z: 300, units: "km", relational_body: "Earth", post: new_post) }
  let(:bad_tag1) { SpaceTag.new(x: 10, y: 20, z: "300", units: "km", relational_body: "Earth", post: new_post) }
  let(:bad_tag2) { SpaceTag.new(x: 10, y: 20, z: 300, units: "gamma rays", relational_body: "Earth", post: new_post) }

  context "that's a good spacetag" do

    it "knows which post it belongs to" do
      expect(new_tag.post).to eq(new_post)
    end
  end

  context "that's a bad spacetag! bad spacetag! now you go sit in the corner and think about what you've done" do
    it "must have coordinates as floats" do
      expect(bad_tag1.save).to be_falsey
    end

    it "must have proper units of measurement" do
      expect(bad_tag2.save).to be_falsey
    end
  end
end
