require "DiaryEntry"

RSpec.describe DiaryEntry do
  let(:content) { "Today was a good day" }
  let(:date) { "21-05-2023" }
  let(:time_spent) { 30 }
  subject { DiaryEntry.new(content, date, time_spent) }

  describe "#content" do
    it "returnst he content of the diary entry" do
      expect(subject.content).to eq(content)
    end
  end

  describe "#date" do
    it "returns the date of the diary entry" do
      expect(subject.date).to eq(date)
    end
  end

  describe "#time_spent" do
    it "returns the time spent writing the diary entry" do
      expect(subject.time_spent).to eq (time_spent)
    end
  end
end
