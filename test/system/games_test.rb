require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "creating a Game" do
    visit games_url
    click_on "New Game"

    check "4player game" if @game.4player_game
    fill_in "Created at", with: @game.created_at
    fill_in "Id", with: @game.id
    fill_in "Player0 name", with: @game.player0_name
    fill_in "Player1 name", with: @game.player1_name
    fill_in "Player2 name", with: @game.player2_name
    fill_in "Player3 name", with: @game.player3_name
    check "Pule game" if @game.pule_game
    fill_in "Updated at", with: @game.updated_at
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "updating a Game" do
    visit games_url
    click_on "Edit", match: :first

    check "4player game" if @game.4player_game
    fill_in "Created at", with: @game.created_at
    fill_in "Id", with: @game.id
    fill_in "Player0 name", with: @game.player0_name
    fill_in "Player1 name", with: @game.player1_name
    fill_in "Player2 name", with: @game.player2_name
    fill_in "Player3 name", with: @game.player3_name
    check "Pule game" if @game.pule_game
    fill_in "Updated at", with: @game.updated_at
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "destroying a Game" do
    visit games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game was successfully destroyed"
  end
end
