


#Preparación del ambiente para su buen funcionamiento:

1)Realizar en la consola: 

```sh 
    git clone https://github.com/NicoZarate/TrabajoRuby.git
```
2)Posicionarse dentro de la carpeta entrega con: 
```sh
     cd TrabajoRuby/entrega 
```
3)Hacer en consola: 
```sh  
    bundler install
```
4)Hacer correr las migraciones con: 
```sh
  rails db:migrate
```
5)Correr los seeds con: 
  ```sh

   rails db:seed 
```
6)Iniciar el servidor con: 
``` sh
  rails s o rails server
```

 7)Para verificar el funcionamiento de que se cargo bien los seed en la base de datos se ingresa en el navegador
```sh
  la url http://localhost:3000/lists/Lista-0
```

#Como ejecutarla

1)En el navegador ingresar la url:  
```sh
 http://localhost:3000/
```


####para correr los test ####
lista:
```sh
rails test test/models/list_test.rb 
```
tareas:
```sh
rails test test/models/simple_task_test.rb
rails test test/models/temporal_task_test.rb 
rails test test/models/long_task_test.rb
rails test test/models/task_test.rb
```
si se desea vaciar la base de datos con : 
```sh
 rails db:reset
 ```
