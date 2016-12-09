require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save list without title" do
	  list = List.new()
	  assert_not list.save, "Saved the list without a title"
  end
end
