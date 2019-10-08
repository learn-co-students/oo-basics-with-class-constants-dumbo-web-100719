class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    # this will insert brand into BRANDS array UNLESS (opposite of IF) 
    # BRANDS already includes that brand
    # So unless is working as "INSERT into BRANDS[] UNLESS BRANDS[] already has that
    if !BRANDS.include?(brand) then
      BRANDS << brand
    end
    # BRANDS << brand unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  


end