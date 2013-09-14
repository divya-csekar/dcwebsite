require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "album attributes must not be empty" do
    album = Album.new
    assert album.invalid?
    assert album.errors[:title].any?
    assert album.errors[:description].any?
    assert album.errors[:price].any?
    assert album.errors[:artistid].any?
  end

  test "album price must be positive" do
    album = Album.new(:title => "My Book Title",
                          :description => "yyy",
                          :artistid => "zzzjpg")
    album.price = -1
    assert album.invalid?
    assert_equal "must be greater than or equal to 0.99",
      album.errors[:price].join('; ')

    album.price = 0
    assert album.invalid?
    assert_equal "must be greater than or equal to 0.99",
      album.errors[:price].join('; ')

    album.price = 1
    assert album.valid?
end
  # test "the truth" do
  #   assert true
  # end
end
