class Restaurant < ActiveRecord::Base
  has_one :schedule
  has_many :pizzas
  attr_accessible :name, :pizzas_attributes, :schedule_attributes

  accepts_nested_attributes_for :pizzas, :schedule

  validates :name, uniqueness: true, presence: true

  def to_param
    [id, name.parameterize].join("-")
  end
end
