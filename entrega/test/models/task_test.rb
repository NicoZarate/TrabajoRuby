require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
     @list = List.create(name: 'list de test')
     @arreglo = []
     @arreglo << simple = SimpleTask.create(description: 's2', state: 'Hecha', priority: 'baja', list: @list)
     @arreglo << long = LongTask.create(description: 'l1', state: 'Pendiente', priority: 'alta', percentage: '22', list: @list)
     @arreglo << temporal = TemporalTask.new(description: 't1', state: 'Pendiente', priority: 'media', validation_start: "2016-10-09", validation_end: "2016-12-22", list: @list)
     
  end

 test "ordenamiento diferentes tipos, con diferentes prioridades"do
   @arreglo=@arreglo.sort
   assert_equal("alta",@arreglo.shift.priority)
   assert_equal("media",@arreglo.shift.priority)
   assert_equal("baja",@arreglo.shift.priority)
end


end
