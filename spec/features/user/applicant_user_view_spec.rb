require "feature_helper"

describe "the applicant user view", type: :feature do

  before(:each) do
    listing  = default_job_listing
    @listing = listing

    category1 = Category.create(title: "Great Jobs", description: "Jobs that don't suck")
    category1.listings << listing

    visit home_path
  end

  context "the home view" do
    it "has a link to browse listings on the home page" do
      visit home_path
      expect(page).to have_link("Register")
    end
  end

  context "the registration process" do
    it "can go to the registration page" do
      visit home_path
      click_link("Register")
      expect(current_path).to eq(new_user_path)
    end
  end

  it 'has a link to browse current job listings' do
    expect(page).to have_link('Browse current job listings')
  end

  it 'can browse current job listings as an unauthenticated applicant user' do
    click_link('Browse current job listings')
    expect(current_path).to eq(listings_path)

    expect(page).to have_content(@listing.title)
    expect(page).to have_content(@listing.description)
  end

  it 'can view the details of a job listing as an unauthenticated applicant user' do
    visit listings_path
    expect(current_path).to eq(listings_path)

    click_link('Pastry Chef')
    expect(current_path).to eq(listing_path(@listing))

    expect(page).to have_content(@listing.title)
    expect(page).to have_content(@listing.description)
    expect(page).to have_content(@listing.pay_rate)
    expect(page).to have_content(@listing.employment_type)
    expect(page).to have_content(@listing.number_of_positions)
  end

  it 'has links to apply for a job' do
    visit listing_path(@listing)
    expect(page).to have_button('Add this Job')
    expect(page).to have_link('Back to browsing')
  end
end
