class Animal
  attr_reader :kind,
              :weight

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight.to_s + " pounds"
  end
end
