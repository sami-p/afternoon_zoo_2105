class Zoo
  attr_reader :name,
              :street,
              :city

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
  end
end
