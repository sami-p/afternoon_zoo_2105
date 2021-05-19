class Zoo
  attr_reader :name,
              :street,
              :city,
              :state,
              :zip_code,
              :inventory,
              :animal_count

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
    @animal_count = 0
  end

  def address
    @street + " " + @city + ", " + @state + " " + @zip_code
  end

  def add_animal(animal)
    @inventory << animal
    @animal_count += 1
  end

  def animals_older_than(weeks)
    animals = []
    @inventory.each do |animal|
      if animal.age.to_i > weeks
        animals << animal
      end
    end
    animals
  end

  def total_weight_of_animals
    total_weight = 0
    @inventory.each do |animal|
      total_weight += animal.weight.to_i
    end
    total_weight
  end

  def details
    details = {
                "total_weight" => total_weight_of_animals,
                "street_address" => @street
              }
    return details
  end

  def animals_sorted_by_weight
    animal_array = @inventory
    animal_array.sort_by!(&:weight_integer)
    animal_array.reverse
  end
end
