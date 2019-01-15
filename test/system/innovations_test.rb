require "application_system_test_case"

class InnovationsTest < ApplicationSystemTestCase
  setup do
    @innovation = innovations(:one)
  end

  test "visiting the index" do
    visit innovations_url
    assert_selector "h1", text: "Innovations"
  end

  test "creating a Innovation" do
    visit innovations_url
    click_on "New Innovation"

    fill_in "Address", with: @innovation.address
    fill_in "City", with: @innovation.city
    fill_in "Country", with: @innovation.country
    fill_in "Email", with: @innovation.email
    fill_in "Facebook", with: @innovation.facebook
    fill_in "Innovation description", with: @innovation.innovation_description
    fill_in "Innovation name", with: @innovation.innovation_name
    fill_in "Instagram", with: @innovation.instagram
    fill_in "Linkedin", with: @innovation.linkedin
    fill_in "Location", with: @innovation.location
    fill_in "Organization", with: @innovation.organization
    fill_in "Organization description", with: @innovation.organization_description
    fill_in "Organization type", with: @innovation.organization_type
    fill_in "Phone", with: @innovation.phone
    fill_in "Region", with: @innovation.region
    fill_in "Sector", with: @innovation.sector
    fill_in "Strategy", with: @innovation.strategy
    fill_in "Twitter", with: @innovation.twitter
    fill_in "Website", with: @innovation.website
    click_on "Create Innovation"

    assert_text "Innovation was successfully created"
    click_on "Back"
  end

  test "updating a Innovation" do
    visit innovations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @innovation.address
    fill_in "City", with: @innovation.city
    fill_in "Country", with: @innovation.country
    fill_in "Email", with: @innovation.email
    fill_in "Facebook", with: @innovation.facebook
    fill_in "Innovation description", with: @innovation.innovation_description
    fill_in "Innovation name", with: @innovation.innovation_name
    fill_in "Instagram", with: @innovation.instagram
    fill_in "Linkedin", with: @innovation.linkedin
    fill_in "Location", with: @innovation.location
    fill_in "Organization", with: @innovation.organization
    fill_in "Organization description", with: @innovation.organization_description
    fill_in "Organization type", with: @innovation.organization_type
    fill_in "Phone", with: @innovation.phone
    fill_in "Region", with: @innovation.region
    fill_in "Sector", with: @innovation.sector
    fill_in "Strategy", with: @innovation.strategy
    fill_in "Twitter", with: @innovation.twitter
    fill_in "Website", with: @innovation.website
    click_on "Update Innovation"

    assert_text "Innovation was successfully updated"
    click_on "Back"
  end

  test "destroying a Innovation" do
    visit innovations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Innovation was successfully destroyed"
  end
end
