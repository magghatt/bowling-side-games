require "application_system_test_case"

class AccessGroupsTest < ApplicationSystemTestCase
  setup do
    @access_group = access_groups(:one)
  end

  test "visiting the index" do
    visit access_groups_url
    assert_selector "h1", text: "Access groups"
  end

  test "should create access group" do
    visit access_groups_url
    click_on "New access group"

    fill_in "Description", with: @access_group.description
    fill_in "Name", with: @access_group.name
    click_on "Create Access group"

    assert_text "Access group was successfully created"
    click_on "Back"
  end

  test "should update Access group" do
    visit access_group_url(@access_group)
    click_on "Edit this access group", match: :first

    fill_in "Description", with: @access_group.description
    fill_in "Name", with: @access_group.name
    click_on "Update Access group"

    assert_text "Access group was successfully updated"
    click_on "Back"
  end

  test "should destroy Access group" do
    visit access_group_url(@access_group)
    click_on "Destroy this access group", match: :first

    assert_text "Access group was successfully destroyed"
  end
end
