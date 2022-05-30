require "application_system_test_case"

class PrestamosTest < ApplicationSystemTestCase
  setup do
    @prestamo = prestamos(:one)
  end

  test "visiting the index" do
    visit prestamos_url
    assert_selector "h1", text: "Prestamos"
  end

  test "should create prestamo" do
    visit prestamos_url
    click_on "New prestamo"

    fill_in "Usuario", with: @prestamo.Usuario_id
    check "Estado" if @prestamo.estado
    fill_in "Fecha", with: @prestamo.fecha
    click_on "Create Prestamo"

    assert_text "Prestamo was successfully created"
    click_on "Back"
  end

  test "should update Prestamo" do
    visit prestamo_url(@prestamo)
    click_on "Edit this prestamo", match: :first

    fill_in "Usuario", with: @prestamo.Usuario_id
    check "Estado" if @prestamo.estado
    fill_in "Fecha", with: @prestamo.fecha
    click_on "Update Prestamo"

    assert_text "Prestamo was successfully updated"
    click_on "Back"
  end

  test "should destroy Prestamo" do
    visit prestamo_url(@prestamo)
    click_on "Destroy this prestamo", match: :first

    assert_text "Prestamo was successfully destroyed"
  end
end
