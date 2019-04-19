require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Agerange", with: @book.agerange
    fill_in "Blurb", with: @book.blurb
    fill_in "Description", with: @book.description
    fill_in "Excerpt", with: @book.excerpt
    fill_in "Format", with: @book.format
    fill_in "Genre", with: @book.genre
    fill_in "Pagecount", with: @book.pagecount
    fill_in "Photo", with: @book.photo
    fill_in "Relatedlink", with: @book.relatedlink
    fill_in "Releasedate", with: @book.releasedate
    fill_in "Title", with: @book.title
    fill_in "Type", with: @book.type
    fill_in "Wordcount", with: @book.wordcount
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Agerange", with: @book.agerange
    fill_in "Blurb", with: @book.blurb
    fill_in "Description", with: @book.description
    fill_in "Excerpt", with: @book.excerpt
    fill_in "Format", with: @book.format
    fill_in "Genre", with: @book.genre
    fill_in "Pagecount", with: @book.pagecount
    fill_in "Photo", with: @book.photo
    fill_in "Relatedlink", with: @book.relatedlink
    fill_in "Releasedate", with: @book.releasedate
    fill_in "Title", with: @book.title
    fill_in "Type", with: @book.type
    fill_in "Wordcount", with: @book.wordcount
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
