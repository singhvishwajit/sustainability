require 'test_helper'

class InnovationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @innovation = innovations(:one)
  end

  test "should get index" do
    get innovations_url
    assert_response :success
  end

  test "should get new" do
    get new_innovation_url
    assert_response :success
  end

  test "should create innovation" do
    assert_difference('Innovation.count') do
      post innovations_url, params: { innovation: { address: @innovation.address, city: @innovation.city, country: @innovation.country, email: @innovation.email, facebook: @innovation.facebook, innovation_description: @innovation.innovation_description, innovation_name: @innovation.innovation_name, instagram: @innovation.instagram, linkedin: @innovation.linkedin, location: @innovation.location, organization: @innovation.organization, organization_description: @innovation.organization_description, organization_type: @innovation.organization_type, phone: @innovation.phone, region: @innovation.region, sector: @innovation.sector, strategy: @innovation.strategy, twitter: @innovation.twitter, website: @innovation.website } }
    end

    assert_redirected_to innovation_url(Innovation.last)
  end

  test "should show innovation" do
    get innovation_url(@innovation)
    assert_response :success
  end

  test "should get edit" do
    get edit_innovation_url(@innovation)
    assert_response :success
  end

  test "should update innovation" do
    patch innovation_url(@innovation), params: { innovation: { address: @innovation.address, city: @innovation.city, country: @innovation.country, email: @innovation.email, facebook: @innovation.facebook, innovation_description: @innovation.innovation_description, innovation_name: @innovation.innovation_name, instagram: @innovation.instagram, linkedin: @innovation.linkedin, location: @innovation.location, organization: @innovation.organization, organization_description: @innovation.organization_description, organization_type: @innovation.organization_type, phone: @innovation.phone, region: @innovation.region, sector: @innovation.sector, strategy: @innovation.strategy, twitter: @innovation.twitter, website: @innovation.website } }
    assert_redirected_to innovation_url(@innovation)
  end

  test "should destroy innovation" do
    assert_difference('Innovation.count', -1) do
      delete innovation_url(@innovation)
    end

    assert_redirected_to innovations_url
  end
end
