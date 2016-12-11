require 'test_helper'

class TemporalTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "crear tarea sin datos" do
      task = TemporalTask.new()
      assert_not task.save, "si se muetra msj de error es que se guardo"
  end
  test "crear tarea con datos" do
      task = TemporalTask.new(description: "una Tarea", state:"Pendiente",priority:"alta",validation_start:"2016-3-4",validation_end:"2016-5-6")
      task.list_id=1
      assert task.save, "no se guardo"
  end    
end
