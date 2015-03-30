class Contact
  attr_accessor :name

  def self.all
    [
      new("Alen"),
      new("Bob"),
      new("Chris"),
      new("Richie"),
      new("Oliver"),
      new("Zamy")
    ]
  end

  def initialize(title)
    self.name = title
  end
end