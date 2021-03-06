require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    
    it 'validates valid attributes' do
      @category = Category.new(name: "testing")
      @product = @category.products.new(name: 'Slim Jimmy', price: 10, quantity: 10)
      expect(@product).to  be_valid
    end

    it 'not valid without a name' do 
      @category = Category.new(name: "testing")
      @product = @category.products.new(name: nil, price: 10, quantity: 10)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'not valid without a price' do
      @category = Category.new(name: "testing")
      @product = Product.new(name: 'Slim Jimmy', price: nil, quantity: 3, category: @category)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end
    
    it 'not valid without a quantity' do
      @category = Category.new(name: "testing")
      @product = Product.new(name: 'Slim Jimmy', price: 777, quantity: nil, category: @category)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'not valid without a category' do
      @product = Product.new(name: 'Slim Jimmy v4', price: 3, quantity: 600)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  
  end
end
