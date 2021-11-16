require 'rails_helper'

RSpec.describe User, type: :model do
 
  describe 'Validations' do

    it 'Validates password has been entered' do
      user = User.new(password: 'campagnolo', password_confirmation: 'campagnolo')
      expect(user).to be_valid
    end


    it 'Validates passwords must match' do
      user = User.new(password: 'pass', password_confirmation: 'ssap')
      expect(user).to_not be_valid
    end
   
    it 'Validates that emails are unique' do
      user = User.create(
        email: "jimmymuscles@gmail.com"
      )
      userTest = User.new(email: 'chaosdwarfs@gmail.com')
      expect(userTest).to_not be_valid
    end


    it 'validates attributes are valid' do
      user = User.new(first_name: 'jimmy', last_name: 'muscles',  password: 'pass', password_confirmation: 'pass', email: 'jimmymuscles@gmail.com')
      expect(user).to be_valid
    end
  
    it 'Validate that password lenght is 3 characters or greater' do 
      user = User.new(first_name: 'jimmy', last_name: 'muscles',  password: 'pass', password_confirmation: 'pass', email: 'jimmymuscles@gmail.com')
      expect(user.password.length).to be >= 3
    end

  
    describe '.authenticate_with_credentials' do
      # examples for this class method here

      it 'Valid when email and password match' do
        user = User.create(first_name: 'jimmy', last_name: 'muscles',  password: 'pass', password_confirmation: 'pass', email: 'jimmymuscles@gmail.com')
        authentic_user = User.authenticate_with_credentials(' jimmymuscles@gmail.com ', 'pass')
        expect(authentic_user).to_not be(nil)
      end





    end
  
  
  
  end 

end
