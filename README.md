JALE-FWD

Jale es un aplicativo web enfocado en el sector turismo, en un principio en la zona central de la provinvia de Puntarenas.

¿De donde nace la idea de JALE?
Nace de la falta de atención que tiene la provincia por parte del gobierno central y local.
En el cantón central de Puntarenas se dan muchas actividades que no nos damos cuentas, como por ejemplo las fiestas locales de Jicaral, Vainilla de Paquera o la Expo-anime que realizan año con año en el salón comunal del Roble.


Documentacion:
Para la base de datos(Sqlite) y el API(Back-end) en Ruby on Rails, corrimos los siguientes comandos:


/* - - - </> [TB_USER_TYPES] </> - - - */
rails generate model UserType user_type_desc:string

/* - - - </> [TB_USERS] </> - - - */
rails generate scaffold User user_name:string user_lastname:string user_email:string user_password:string user_birthdate:date

/* - - - </> [TB_CATEGORIES] </> - - - */
rails generate model Category category_desc:string

/* - - - </> [TB_PLACES] </> - - - */
rails generate scaffold Place place_name:string place_desc:string place_cost:float place_email:string place_score:integer place_phone:string place_website:string place_address:string place_time_open:time place_time_close:time

/* - - - </> [TB_PHOTOS] </> - - - */
rails generate model Photo photo_url:string

/* - - - </> [TB_COMMENTS] </> - - - */
rails generate model Comment comment_desc:string comment_score:integer comment_display:boolean

/* - - - </> [TB_EVENTS] </> - - - */
rails generate scaffold Event event_name:string event_desc:string event_cost:float event_email:string event_photo:string event_phone:string event_website:string event_address:string event_date_start:date event_time_start:time

/* - - - </> [TB_TOKENS] </> - - - */
rails generate model Token token_code:string token_date:datetime



/* - - - </> [TB_USER_TOURS] </> - - - */
rails generate model UserTour user:references place:references

/* - - - </> [TB_PLACE_CATEGORIES] </> - - - */
rails generate model PlaceCategory place:references category:references

/* - - - </> [TB_EVENT_CATEGORIES] </> - - - */
rails generate model EventCategory event:references category:references

/* - - - </> [TB_PLACE_COMMENTS] </> - - - */
rails generate model PlaceComment place:references comment:references user:references

Tambien utilizamos gemas como:

-Rspec
-Rack Cors


Esto nos genero cada uno de los componentes del API y las tablas de la DB.



Documentación del Front-end:
Para el front-end se utilizó el framework React.


/* - - - </> [Crea el app] </> - - - */
npx create-react-app JALE

/* - - - </> [Corre el app] </> - - - */
npm start


Tambien utilizamos Axios, para realizar los llamados de los endpoint.
/* - - - </> [Axios] </> - - - */
npm i axios


se utilizaron varias librerias externas para crear diferentes funciones del app

/* - - - </> [Correo electronico/ Email JS] </> - - - */
npm i @emailjs/browser

/* - - - </> [Google Maps] </> - - - */
npm install --save react-google-maps

/* - - - </> [JWT Tokens] </> - - - */
npm i jsonwebtoken