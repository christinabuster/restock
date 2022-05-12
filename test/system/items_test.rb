require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Current quantity", with: @item.current_quantity
    fill_in "Description", with: @item.description
    fill_in "Item name", with: @item.item_name
    fill_in "Msrp", with: @item.msrp
    fill_in "Sku", with: @item.sku
    fill_in "Wsp", with: @item.wsp
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Current quantity", with: @item.current_quantity
    fill_in "Description", with: @item.description
    fill_in "Item name", with: @item.item_name
    fill_in "Msrp", with: @item.msrp
    fill_in "Sku", with: @item.sku
    fill_in "Wsp", with: @item.wsp
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
