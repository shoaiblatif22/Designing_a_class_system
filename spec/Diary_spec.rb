require "Diary"

RSpec.describe Diary do
  let(:diary) { Diary.new }

  describe "#add_entry" do
    it "adds a new diary entry to the diary" do
      diary.add_entry("Today was a great day!", "21-05-2023", 30)
      expect(diary.read_entries.size).to eq(1)
    end
  end
end
