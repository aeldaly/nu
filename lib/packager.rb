class Packager
  def initialize(base_price, people, type)
    @base_price = base_price
    @people = people
    @type = type
  end

  def calculate
    (flat_markup * (1 + people_markup + industry_markup)).round(2)
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

  attr_accessor :base_price, :people, :type

  def flat_markup
    base_price * (1 + MARKUPS[:flat])
  end

  def people_markup
    MARKUPS[:people] * people
  end

  def industry_markup
    MARKUPS[:industries].fetch(type.to_sym, 0)
  end
end
