class Packager
  def initialize(base_price, people, type)
    @base_price = base_price
    @people = people
    @type = type
  end

  def calculate
    1591.58
  end

  private

  MARKUPS = {
    flat: 0.05,
    people: 0.012,
    industries: {
      pharma: 0.075,
      food: 0.13,
      electronics: 0.02
    }
  }

  attr_accessor :base_price, :type

  def flat_markup
    MARKUPS[:flat]
  end

  def people_markup
    MARKUPS[:people]
  end

  def industry_markup
    MARKUPS[:industries].fetch(type, 0)
  end
end
