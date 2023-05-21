class Diary
  def initialize
    @entries = []
  end

  def add_entry(content, date, time_spent)
    entry = DiaryEntry.new(content, date, time_spent)
    @entries << entry
  end

  def read_entries
    @entries.each { |entry| puts "#{entry.date}: #{entry.content}" }
  end

  def filter_entries(max_reading_time, reading_speed)
    filtered_entries = @entries.select do |entry|
      entry.time_spent <= max_reading_time && entry.time_spent / reading_speed <= max_reading_time
    end

    filtered_entries.each { |entry| puts "#{entry.date}: #{entry.content}" }
  end
end
