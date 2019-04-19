require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { agerange: @book.agerange, blurb: @book.blurb, description: @book.description, excerpt: @book.excerpt, format: @book.format, genre: @book.genre, pagecount: @book.pagecount, photo: @book.photo, relatedlink: @book.relatedlink, releasedate: @book.releasedate, title: @book.title, type: @book.type, wordcount: @book.wordcount } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { agerange: @book.agerange, blurb: @book.blurb, description: @book.description, excerpt: @book.excerpt, format: @book.format, genre: @book.genre, pagecount: @book.pagecount, photo: @book.photo, relatedlink: @book.relatedlink, releasedate: @book.releasedate, title: @book.title, type: @book.type, wordcount: @book.wordcount } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
