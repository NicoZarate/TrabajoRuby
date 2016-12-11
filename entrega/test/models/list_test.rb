require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "sin nombre" do
	  list = List.new()
	  assert list.save, "no pudo guardarse por no poseer name"
  end
  test "con nombre" do
	  list = List.new(name: "hola mundo")
	  assert_not list.save, "se guardo el nombre de la lista y su url es #{list.url}"
  end
  test "Con nombre que cause un conflicto de unicidad de los slugs." do
    list = List.new(name: "hola    / uno /     rails")
    assert_not list.save, "se guardo el nombre de la lista y su url es #{list.url}"
  end
  



end
