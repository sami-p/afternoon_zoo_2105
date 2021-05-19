class Animal
  attr_reader :kind,
              :weight,
              :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight.to_s + " pounds"
    @age = age.to_s + " weeks"
  end
end
