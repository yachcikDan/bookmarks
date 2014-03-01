require 'spec_helper'

describe Bookmark do
  before do
    @bookmark = Bookmark.new(name: "bookmark example", url: "http://www.bookmark.com")
  end

  subject { @bookmark }

  it { should respond_to(:name) }
  it { should respond_to(:url) }

  it { should be_valid }

  describe "when name is not present" do
    before { @bookmark.name = " " }
    it { should_not be_valid }
  end
  
  describe "when url is not present" do
      before { @bookmark.url = " " }
      it { should_not be_valid }
    end
end
