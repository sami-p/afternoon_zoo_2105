class Zoo
  attr_reader :name,
              :street

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
  end
end
