require "test_helper"

class PastaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pastum = pasta(:one)
  end

  test "should get index" do
    get pasta_url
    assert_response :success
  end

  test "should get new" do
    get new_pastum_url
    assert_response :success
  end

  test "should create pastum" do
    assert_difference('Pastum.count') do
      post pasta_url, params: { pastum: { cottura: @pastum.cottura, descrizione: @pastum.descrizione, nome: @pastum.nome, peso: @pastum.peso, produttore: @pastum.produttore } }
    end

    assert_redirected_to pastum_url(Pastum.last)
  end

  test "should show pastum" do
    get pastum_url(@pastum)
    assert_response :success
  end

  test "should get edit" do
    get edit_pastum_url(@pastum)
    assert_response :success
  end

  test "should update pastum" do
    patch pastum_url(@pastum), params: { pastum: { cottura: @pastum.cottura, descrizione: @pastum.descrizione, nome: @pastum.nome, peso: @pastum.peso, produttore: @pastum.produttore } }
    assert_redirected_to pastum_url(@pastum)
  end

  test "should destroy pastum" do
    assert_difference('Pastum.count', -1) do
      delete pastum_url(@pastum)
    end

    assert_redirected_to pasta_url
  end
end
