require 'test_helper'

class CasetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casete = casetes(:one)
  end

  test "should get index" do
    get casetes_url
    assert_response :success
  end

  test "should get new" do
    get new_casete_url
    assert_response :success
  end

  test "should create casete" do
    assert_difference('Casete.count') do
      post casetes_url, params: { casete: { formato: @casete.formato, pelicula_id: @casete.pelicula_id } }
    end

    assert_redirected_to casete_url(Casete.last)
  end

  test "should show casete" do
    get casete_url(@casete)
    assert_response :success
  end

  test "should get edit" do
    get edit_casete_url(@casete)
    assert_response :success
  end

  test "should update casete" do
    patch casete_url(@casete), params: { casete: { formato: @casete.formato, pelicula_id: @casete.pelicula_id } }
    assert_redirected_to casete_url(@casete)
  end

  test "should destroy casete" do
    assert_difference('Casete.count', -1) do
      delete casete_url(@casete)
    end

    assert_redirected_to casetes_url
  end
end
