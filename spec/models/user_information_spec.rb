require 'rails_helper'

describe UserInformation do 
    it "is valid when name, email, cpf end date be present " do
        user_information = UserInformation.new(name: 'Luis Felipe',
        email: 'luisfelipe@hotmail.com',
        cpf: '999.999.999-99',
        date: '20-12-2002')

        expect(user_information).to be_valid 
        end
    end

describe UserInformation do 
    it "is invalid if name be empty" do 
        user_information = UserInformation.new(name: nil)
        user_information.valid?
        expect(user_information.errors[:name]).to include("can't be blank")
    end
end

describe UserInformation do 
    it "is invalid if there is already a registered email address" do
        user_information = UserInformation.create(name: 'Luis',
        cpf: '999.999.999-99',
        date: '20-12-2002',
        email: 'luisfelipe1582@hotmail.com')
        user_information = UserInformation.new(name: 'Ricardo', 
        cpf: '999.999.999-99',
        date: '20-12-2002',    
        email: 'luisfelipe1582@hotmail.com')
        user_information.valid?
        expect(user_information.errors[:email]).to include("has already been taken")
    end
end

describe UserInformation do 
    it "is invalid if there is already a registered CPF" do
        user_information = UserInformation.create(name: 'Luis',
        cpf: '999.999.999-99',
        date: '20-12-2002',
        email: 'luisfelipe1582@hotmail.com')
        user_information = UserInformation.new(name: 'Ricardo', 
        cpf: '999.999.999-99',
        date: '20-12-2002',    
        email: 'ricardo@hotmail.com')
        user_information.valid?
        expect(user_information.errors[:cpf]).to include("has already been taken")
    end
end
