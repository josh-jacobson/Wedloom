require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  setup do
    @venue = venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue" do
    assert_difference('Venue.count') do
      post :create, venue: { capacity: @venue.capacity, cost_per_plate: @venue.cost_per_plate, description: @venue.description, image: @venue.image, link: @venue.link, minimum: @venue.minimum, name: @venue.name, rental_cost: @venue.rental_cost, supporting_images: @venue.supporting_images, tags: @venue.tags, tier: @venue.tier }
    end

    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should show venue" do
    get :show, id: @venue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue
    assert_response :success
  end

  test "should update venue" do
    put :update, id: @venue, venue: { capacity: @venue.capacity, cost_per_plate: @venue.cost_per_plate, description: @venue.description, image: @venue.image, link: @venue.link, minimum: @venue.minimum, name: @venue.name, rental_cost: @venue.rental_cost, supporting_images: @venue.supporting_images, tags: @venue.tags, tier: @venue.tier }
    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should destroy venue" do
    assert_difference('Venue.count', -1) do
      delete :destroy, id: @venue
    end

    assert_redirected_to venues_path
  end
end
