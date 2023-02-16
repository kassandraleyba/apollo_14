require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many(:missions).through(:astronaut_missions)}
  end

  describe '#class methods' do
    before do
      Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Astronaut")
      Astronaut.create!(name: "Buzz Aldrin", age: 50, job: "Astronaut")
    end
    
    it 'should return an average age' do
      expect(Astronaut.average_age).to eq(43.5)
    end
  end
end
