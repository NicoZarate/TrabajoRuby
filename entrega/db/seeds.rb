# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
d1="2016-10-09".to_date
d2="2016-12-22".to_date


list = List.create(name: 'Lista 0')

SimpleTask.create(description: 's1', state: 'Pendiente', priority: 'alta', list: list)
SimpleTask.create(description: 's2', state: 'Pendiente', priority: 'baja', list: list)

TemporalTask.create(description: 't1', state: 'Pendiente', priority: 'media', validation_start: d1, validation_end: d2, list: list)
TemporalTask.create(description: 't2', state: 'Pendiente', priority: 'baja', validation_start:d1, validation_end: d2, list: list)

LongTask.create(description: 'l1', state: 'Pendiente', priority: 'alta', percentage: '22', list: list)
LongTask.create(description: 'l2', state: 'curso', priority: 'baja', percentage: '11', list: list)