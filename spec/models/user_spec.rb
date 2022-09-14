require 'rails_helper'

describe User do 
    it "is valid when email end passwod be present" do
        user = User.new(
        email: 'luisfelipe@hotmail.com',
        password: '454fe494fe48'
        )
        expect(user).to be_valid 
        end
    end

describe User do 
    it "is invalid if email be empty" do 
        user = User.new(email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
    end
end    

describe User do 
    it "is invalid if password be empty" do 
        user = User.new(email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
    end
end    