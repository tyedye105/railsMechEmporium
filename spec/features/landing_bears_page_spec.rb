require "rails_helper"

describe "it will take users to the list of bears after the landing page" do
  it 'takes users to see the bears(if any)' do
    visit '/'
    click_link 'See the Bears'
    expect(page).to have_content "no bears"
  end
end
