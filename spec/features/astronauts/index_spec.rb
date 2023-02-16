require 'rails_helper'

RSpec.describe 'Astronauts index page' do
  describe "As a visitor" do

  before do
    @neil = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Astronaut")
    @buzz = Astronaut.create!(name: "Buzz Aldrin", age: 50, job: "Astronaut")
  end

  #   User Story 1 of 4

    describe " When I visit the Astronauts index page ('/astronauts')" do
      it "I see a list of astronauts with the following info:" do
        visit '/astronauts'

        expect(page).to have_content("Name: Neil Armstrong")
        expect(page).to have_content("Age: 37")
        expect(page).to have_content("Job: Astronaut")
      end
    end
    
    #   User Story 2 of 4
    
    # As a visitor,
    # When I visit the Astronauts index page ('/astronauts')
    # I see the average age of all astronauts.
    
    # (e.g. "Average Age: 34")
    
    describe "When I visit the Astronauts index page ('/astronauts')" do
      it " I see the average age of all astronauts." do
        visit '/astronauts'
        
        expect(page).to have_content("Average Age: 43.5")
      end
    end
  end
end