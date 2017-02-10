require "rails_helper"


describe "it will take users to the list of bears after the landing page" do
  it 'takes users to see the bears(if any)' do
    test_bear = Bear.create({ :name => "Freedom Bear", :cost => 5000000, :country => "USA", :forte => "Front Line Operations", :description => "This crazy mecha-bear is constructed of good ol' Detriot steel, and painted up to give Uncle Sam a run for his money. This particular model is an jack of all trades, good for scouting, defending positions, or dispensing 'freedom' from its robust weapon systems." })
    visit bear_path(test_bear)
    click_on 'Delete this Bear'
    expect(page).to have_content "no bears"
  end
end
