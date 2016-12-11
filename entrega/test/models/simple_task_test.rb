require 'test_helper'

class SimpleTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  list = List.create(name: 'list de test')
  test "crear tarea sin datos" do
      task = SimpleTask.new()
      assert_not task.save, "si se muetra msj de error es que se guardo"
  end
  test "crear tarea con datos" do
      task = SimpleTask.new(description: 's2', state: 'Hecha', priority: 'baja', list: list)
      assert task.save, "no se guardo"
  end    
end
