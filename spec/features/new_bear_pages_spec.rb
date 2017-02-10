require "rails_helper"

describe "it will take users to the list of bears after the landing page" do
  it 'takes users to see the bears(if any)' do
    visit bears_path
    click_link 'Add A Bear'
    fill_in "Name", :with => "Panda"
    fill_in "in USD", :with => "321412"
    fill_in "Country", :with => "Not-China"
    fill_in "Specialty", :with => "Stealth"
    fill_in "Description", :with => "Things"
    click_on "Create Bear"
    expect(page).to have_content "Panda"
  end

  it "gives errors when any of the sumbitted forms are empty" do
    visit new_bear_path
    click_on "Create Bear"
    expect(page).to have_content "errors"
  end

  it "gives errors when cost is not a number" do
    visit new_bear_path
    fill_in "in USD" , :with =>"soup"
    click_on "Create Bear"
    expect(page).to have_content "errors"
  end

end
