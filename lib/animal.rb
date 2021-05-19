class Animal
  attr_reader :kind,
              :weight,
              :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight.to_s + " pounds"
    @age = age.to_s + " weeks"
  end

  def age_in_days
    @age.to_i * 7
  end

  def feed!(servings)
    weight_num = @weight.to_i
    weight_num += servings
    @weight = weight_num.to_s + " pounds"
  end

  def weight_integer
    @weight.to_i
  end
end
