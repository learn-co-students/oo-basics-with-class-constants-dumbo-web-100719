require "pry"

class Shoe
  attr_accessor :color,:material, :condition, :size
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    self.brand = brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand= (brand)
    @brand = brand
      unless BRANDS.include?(@brand)
      BRANDS << brand
      end
  end
end