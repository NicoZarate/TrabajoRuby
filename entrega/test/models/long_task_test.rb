require 'test_helper'

class LongTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   test "crear tarea sin datos" do
      task = LongTask.new()
      assert_not task.save, "si se muetra msj de error es que se guardo"
  end
  test "crear tarea con datos" do
      task = LongTask.new(description: "una Tarea", state:"Pendiente",priority:"alta",percentage: 20 )
      task.list_id=1
      assert task.save, "no se guardo"
  end    
end
