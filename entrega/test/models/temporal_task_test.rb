require 'test_helper'

class TemporalTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


setup do
    @list = List.create(name: 'list de test')
end
  test "crear tarea sin datos" do
      task = TemporalTask.new()
      assert_not task.save, "si se muetra msj de error es que se guardo"
  end
  test "crear tarea con datos" do
      task = TemporalTask.new(description: 't1', state: 'Pendiente', priority: 'media', validation_start: "2016-10-09", validation_end: "2016-12-22", list: @list)
      assert task.save, "no se guardo"
  end    
   test "crear tarea con datos con fechas invertidas" do
      task = TemporalTask.new(description: 't2', state: 'Pendiente', priority: 'media', validation_start: "2016-12-22", validation_end: "2016-10-22", list: @list)
      assert_not task.save, "se guardo, error"
  end    
end
