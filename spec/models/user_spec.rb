require 'rails_helper'

RSpec.describe User, type: :model do
 
  describe 'Validations for users' do

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
      user = User.new(name: 'jimmy muscles',  password: 'pass', password_confirmation: 'pass', email: 'jimmymuscles@gmail.com')
      expect(user).to be_valid
    end
  
  
  
  
  
  
  
  end 

end
