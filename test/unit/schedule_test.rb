require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  attr_accessor :schedule

  def setup
    @schedule = Schedule.new
  end

  test "initialize schedule with some openning and closing time" do
    assert schedule.open_weekday
    assert schedule.open_weekend
    assert schedule.close_weekday
    assert schedule.close_weekend
  end

  test "open_weekday= method should update monday time" do
    schedule.open_weekday = "11:00"
    assert_equal "11:00", schedule.open_monday
  end

  test "open_weekday= should accept only time in this form: HH:MM" do
    ["11:dd" "11:66" "33:22"].each do |time|
      assert_raises do
        schedule.open_weekday = time
        schedule.save!
      end
    end

    ["11:22", " 10:23 ", "   10:23"].each do |time|
      assert_nothing_raised do
        schedule.open_weekday = time
        schedule.save!
      end
    end
  end
end
