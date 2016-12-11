
Preparación para su buen funcionamiento:

En linux

Realizar un en la consola:  git clone https://github.com/NicoZarate/TrabajoRuby.git

Posicionarse dentro de la carpeta entega con: cd TrabajoRuby/entrega 

Hacer correr las migraciones con: rails db:migrate

Correr los seeds con: rails db:seed , para verificar que carga bien la base
para verificar el funcionamiento de que se cargo bien los seed se ingresa en el navegador
la url http://localhost:3000/lists/mi-lista

Iniciar el servidor con: rails s o rails server

En el navegador ingresar la url:  http://localhost:3000/

si se desea vaciar la base de datos con : rails db:reset

####para correr los test ####
lista:

rails test test/models/list_test.rb 

tareas:

rails test test/models/simple_task_test.rb
rails test test/models/temporal_task_test.rb 
rails test test/models/long_task_test.rb
