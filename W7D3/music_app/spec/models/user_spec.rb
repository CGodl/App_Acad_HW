require './spec/models/rails_helper.rb'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6)}
    

  end


end

 
#Test for validations, associations, class methods, and error messages