class Zoo
  attr_reader :name,
              :street,
              :city,
              :state

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
  end
end
