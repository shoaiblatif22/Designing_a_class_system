require "Diary"

RSpec.describe Diary do
  let(:diary) { Diary.new }

  describe "#add_entry" do
    it "adds a new diary entry to the diary" do
      diary.add_entry("Today was a great day!", "21-05-2023", 30)
      expect(diary.read_entries.size).to eq(1)
    end
  end

  describe "#read_entries" do
    it "returns all the diary entries" do
      diary.add_entry("Today was a great day!", "2023-05-20", 30)
      diary.add_entry("Feeling tired but accomplished.", "2023-05-19", 45)
      expect { diary.read_entries }.to output(/Today was a great day!.*Feeling tired but accomplished./m).to_stdout
    end
  end

  describe "#filter_entries" do
    it "returns filtered diary entries based on reading time" do
      diary.add_entry("Today was a great day!", "2023-05-20", 30)
      diary.add_entry("Feeling tired but accomplished.", "2023-05-19", 45)
      diary.add_entry("Spent the day with friends.", "2023-05-18", 60)
      
      expect { diary.filter_entries(40, 150) }.to output(/Today was a great day!/).to_stdout
      expect { diary.filter_entries(40, 150) }.not_to output(/Feeling tired but accomplished./).to_stdout
      expect { diary.filter_entries(40, 150) }.not_to output(/Spent the day with friends./).to_stdout
    end
  end
  
end
