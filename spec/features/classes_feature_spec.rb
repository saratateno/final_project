require 'rails_helper'

feature 'Activity' do

  before do
    visit '/activities'
  end

  scenario 'should display a prompt to add a activity' do
    expect(page).to have_link 'Add a activity'
  end

  context 'no activities have been added' do
    scenario 'should display message that no activities have been added' do
      expect(page).to have_content 'No activities yet'
    end
  end
end
