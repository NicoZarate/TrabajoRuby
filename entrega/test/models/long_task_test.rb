require 'test_helper'

class LongTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @list = List.create(name: 'list de test')
  end
   test "crear tarea sin datos" do
      task = LongTask.new()
      assert_not task.save, "si se muetra msj de error es que se guardo"
  end
  test "crear tarea con datos" do
      task = LongTask.new(description: 'l1', state: 'Pendiente', priority: 'alta', percentage: '22', list: @list)
      assert task.save, "no se guardo"
  end    
end
