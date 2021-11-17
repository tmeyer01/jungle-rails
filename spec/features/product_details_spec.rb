require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  
  before :each do
    @category = Category.create! name: 'Apparel'


    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.12
      )
    end
  end    

  scenario "They click on one product's details" do
    
    visit root_path
    page.all(".product header a")[0].click
    expect(page).to have_css ".products-show"

    visit root_path
    page.all(".product footer a")[0].click
    save_screenshot
    expect(page).to have_css ".products-show"
    end



end
