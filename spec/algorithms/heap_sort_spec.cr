require "../spec_helper"

describe Algorithms::HeapSort do
  context "with sorted array" do
    it "should sort" do
      hs = Algorithms::HeapSort.new
      array = hs.sort([1, 2, 3, 4, 5, 6, 7, 8, 9])
      array.should eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end

  context "with not sorted array" do
    it "should sort" do
      hs = Algorithms::HeapSort.new
      array = hs.sort([6, 4, 3, 1, 5, 8, 2, 9, 7])
      array.should eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end

  context "with inversely sorted array" do
    it "should sort" do
      hs = Algorithms::HeapSort.new
      array = hs.sort([9, 8, 7, 6, 5, 4, 3, 2, 1])
      array.should eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
