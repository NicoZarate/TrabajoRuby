require 'test_helper'

class TemporalTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
d1="2016-10-09".to_date
d2="2016-12-22".to_date


list = List.create(name: 'mi lista')
  test "crear tarea sin datos" do
      task = TemporalTask.new()
      assert_not task.save, "si se muetra msj de error es que se guardo"
  end
  test "crear tarea con datos" do
      task = TemporalTask.new(description: 't1', state: 'Pendiente', priority: 'media', validation_start: d1, validation_end: d2, list: list)
      assert task.save, "no se guardo"
  end    
   test "crear tarea con datos con fechas invertidas" do
      task = TemporalTask.new(description: 't2', state: 'Pendiente', priority: 'media', validation_start: d2, validation_end: d1, list: list)
      assert_not task.save, "se guardo, error"
  end    
end
