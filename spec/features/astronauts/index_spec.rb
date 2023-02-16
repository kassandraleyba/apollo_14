require 'rails_helper'

RSpec.describe 'Astronauts index page' do

  before do
    @neil = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Astronaut")
  end
  
  #   User Story 1 of 4

  describe "As a visitor" do
    describe " When I visit the Astronauts index page ('/astronauts')" do
      it "I see a list of astronauts with the following info:" do
        visit '/astronauts'

        expect(page).to have_content("Name: Neil Armstrong")
        expect(page).to have_content("Age: 37")
        expect(page).to have_content("Job: Astronaut")
      end
    end
  end
end