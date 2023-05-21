class DiaryEntry
  attr_reader :content, :date, :time_spent

  def initialize(content, date, time_spent)
    @content = content
    @date = date
    @time_spent = time_spent
  end
end