class Schedule < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible(:title,
                  :body,
                  :open_weekday,
                  :open_weekend,
                  :close_weekday,
                  :close_weekend)

  after_initialize :defaults

  validates(:open_weekday,
            :open_weekend,
            :close_weekday,
            :close_weekend,
            format: { with: /\A\s*\d\d:\d\d\s*/, message: "Use the following format: hh:mm " })

  validate :check_if_time_values_are_correct

  def open_weekend
    open_saturday
  end

  def open_weekend=(time)
    self.open_saturday = time.strip
  end

  def close_weekend
    close_saturday
  end

  def close_weekend=(time)
    self.close_saturday = time.strip
  end

  def open_weekday
    open_monday
  end

  def open_weekday=(time)
    self.open_monday = time.strip
  end

  def close_weekday
    close_monday
  end

  def close_weekday=(time)
    self.close_monday = time.strip
  end

  private
  def defaults
    open = '08:00'
    close = '20:00'
    self.open_saturday ||= open
    self.open_monday ||= open
    self.close_saturday ||= close
    self.close_monday ||= close
  end

  def check_if_time_values_are_correct
    [:open_weekday, :open_weekend, :close_weekday, :close_weekend].each do |method|
      time = send(method)
      h, m = time.split(":")
      if h.to_i > 24 || m.to_i > 59
        errors.add(method, "The time is incorrect")
      end
    end
  end

end
