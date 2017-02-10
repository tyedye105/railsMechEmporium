require "rails_helper"


describe "it will take users to the list of bears after the landing page" do
  it 'takes users to see the bears(if any)' do
    test_bear = Bear.create({ :name => "Freedom Bear", :cost => 5000000, :country => "USA", :forte => "Front Line Operations", :description => "This crazy mecha-bear is constructed of good ol' Detriot steel, and painted up to give Uncle Sam a run for his money. This particular model is an jack of all trades, good for scouting, defending positions, or dispensing 'freedom' from its robust weapon systems." })
    visit edit_bear_path(test_bear)
    fill_in "Name", :with => "Panda"
    fill_in "in USD", :with => "321412"
    fill_in "Country", :with => "Not-China"
    fill_in "Specialty", :with => "Stealth"
    fill_in "Description", :with => "Things"
    click_on "Update Bear"
    expect(page).to have_content "Panda"
  end

  it "gives errors when any of the sumbitted forms are empty" do
    test_bear = Bear.create({ :name => "Freedom Bear", :cost => 5000000, :country => "USA", :forte => "Front Line Operations", :description => "This crazy mecha-bear is constructed of good ol' Detriot steel, and painted up to give Uncle Sam a run for his money. This particular model is an jack of all trades, good for scouting, defending positions, or dispensing 'freedom' from its robust weapon systems." })
    visit edit_bear_path(test_bear)
    fill_in "Name", :with => ""
    fill_in "in USD", :with => ""
    fill_in "Country", :with => ""
    fill_in "Specialty", :with => ""
    fill_in "Description", :with => ""
    click_on "Update Bear"
    expect(page).to have_content "errors"
  end

  it "gives errors when cost is not a number" do
    test_bear = Bear.create({ :name => "Freedom Bear", :cost => 5000000, :country => "USA", :forte => "Front Line Operations", :description => "This crazy mecha-bear is constructed of good ol' Detriot steel, and painted up to give Uncle Sam a run for his money. This particular model is an jack of all trades, good for scouting, defending positions, or dispensing 'freedom' from its robust weapon systems." })
    visit edit_bear_path(test_bear)
    fill_in "in USD" , :with =>"soup"
    click_on "Update Bear"
    expect(page).to have_content "errors"
  end

end
