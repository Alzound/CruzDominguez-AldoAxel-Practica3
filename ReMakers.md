# _**ReMakers**_ (idea para sitio tipo Pinterest)
###  ReMakers es un sitio donde la gente puede tomar juegos que ya sean algo viejos, y proponerlos para tener un remake o remaster, tomando todas las cualidades y errores del juego original y proponer mejoras. 
---
<br>

## **Entidades:**

- ### Usuario. 
- ### Juegos. 
- ### Status.
- ### Empresas responsables. 
- ### Distribuidores. 
- ### Comentarios.
- ### Posts.
- ### Estrellas.
- ### Puntuación.
- ### Probabilidad de retorno del juego. (porcentaje medible)
- ### Follows.
- ### Países(**CAT**).

<br>

---
## **Relaciones:** 

- ### Los usuarios dan estrellas (1 - 1).
- ### Un usuario puede ver el status de otro (1 - 1).
- ### Los usuarios publican Posts (1 - M).
- ### Los Post tienen comentarios (1 - M).
- ### Los usuarios puntuan el juego (1 - 1).
- ### La probabilidad se muestra a los usuarios (1 - M).
- ### La demografía es mostrada a los usuarios (1 - M).
- ### Los usuarios pueden ver la empresa responsable (1 - M).
- ### Los usuarios pueden destacar un Post (1 - M).
- ### Los usuarios pueden seguir las noticias y post de un juego en específico (1 - 1). 
- ### Los usuarios tienen un país (1 - 1).
- ### Los usuarios tiene un status (1 - 1).

<br>

---
## **Atributos:** 

<br>

### **Juegos**
- juego (**UQ**)
- categoría (**CAT**)
- juego_id (**PK**)
- juego_date
- juego_name
- probabilidad
- puntuación

### _Categorías de videojuegos:_
- Acción.
- Aventura.
- Terror. 
- Survival. 
- Disparos. 
- Arcade. 
- Romance.
- Deportivo. 
- Estrategia. 
- Simulación. 
- Musicales.

### **Status**
- status 
- status_id (**PK**)
- level

### _Categorías de Status:_
- Seguid@r.
- Fan.
- Conocedor@. 
- Maestr@.
- Iluminad@.


### **Posts**

- post_id (**PK**)
- post_date
- plot
- photo
- user (**FK**)

### **Users**

- user (**PK**)
- user_date
- user_name
- email (**UQ**)
- password
- phone (**UQ**)
- bio
- web
- avatar
- birthdate
- genre
- demografía
- country (**FK**)

#### **Comments**

- comment_id (**PK**)
- comment_date
- comment
- post_id (**FK**)
- user (**FK**)

#### **Estrellas**

- heart_id (**PK**)
- heart_date
- post_id (**FK**)
- user (**FK**)


### **Follows**

- follow_id (**PK**)
- follow_date
- follow_user
- user (**FK**)

### **Países** (**PK**)

- país_id (**PK**)
- país_name

### _Valores de países:_

- Afganistán
- Albania
- Alemania
- Andorra
- Angola
- Antigua y Barbuda
- Arabia Saudita
- Argelia
- Argentina
- Armenia
- Australia
- Austria
- Azerbaiyán
- Bahamas
- Bangladés
- Barbados
- Baréin
- Bélgica
- Belice
- Benín
- Bielorrusia
- Birmania
- Bolivia
- Bosnia y Herzegovina
- Botsuana
- Brasil
- Brunéi
- Bulgaria
- Burkina Faso
- Burundi
- Bután
- Cabo Verde
- Camboya
- Camerún
- Canadá
- Catar
- Chad
- Chile
- China
- Chipre
- Ciudad del Vaticano
- Colombia
- Comoras
- Corea del Norte
- Corea del Sur
- Costa de Marfil
- Costa Rica
- Croacia
- Cuba
- Dinamarca
- Dominica
- Ecuador
- Egipto
- El Salvador
- Emiratos Árabes Unidos
- Eritrea
- Eslovaquia
- Eslovenia
- España
- Estados Unidos
- Estonia
- Etiopía
- Filipinas
- Finlandia
- Fiyi
- Francia
- Gabón
- Gambia
- Georgia
- Ghana
- Granada
- Grecia
- Guatemala
- Guyana
- Guinea
- Guinea ecuatorial
- Guinea-Bisáu
- Haití
- Honduras
- Hungría
- India
- Indonesia
- Irak
- Irán
- Irlanda
- Islandia
- Islas Marshall
- Islas Salomón
- Israel
- Italia
- Jamaica
- Japón
- Jordania
- Kazajistán
- Kenia
- Kirguistán
- Kiribati
- Kuwait
- Laos
- Lesoto
- Letonia
- Líbano
- Liberia
- Libia
- Liechtenstein
- Lituania
- Luxemburgo
- Madagascar
- Malasia
- Malaui
- Maldivas
- Malí
- Malta
- Marruecos
- Mauricio
- Mauritania
- México
- Micronesia
- Moldavia
- Mónaco
- Mongolia
- Montenegro
- Mozambique
- Namibia
- Nauru
- Nepal
- Nicaragua
- Níger
- Nigeria
- Noruega
- Nueva Zelanda
- Omán
- Países Bajos
- Pakistán
- Palaos
- Panamá
- Papúa Nueva Guinea
- Paraguay
- Perú
- Polonia
- Portugal
- Reino Unido
- República Centroafricana
- República Checa
- República de Macedonia
- República del Congo
- República Democrática del Congo
- República Dominicana
- República Sudafricana
- Ruanda
- Rumanía
- Rusia
- Samoa
- San Cristóbal y Nieves
- San Marino
- San Vicente y las Granadinas
- Santa Lucía
- Santo Tomé y Príncipe
- Senegal
- Serbia
- Seychelles
- Sierra Leona
- Singapur
- Siria
- Somalia
- Sri Lanka
- Suazilandia
- Sudán
- Sudán del Sur
- Suecia
- Suiza
- Surinam
- Tailandia
- Tanzania
- Tayikistán
- Timor Oriental
- Togo
- Tonga
- Trinidad y Tobago
- Túnez
- Turkmenistán
- Turquía
- Tuvalu
- Ucrania
- Uganda
- Uruguay
- Uzbekistán
- Vanuatu
- Venezuela
- Vietnam
- Yemen
- Yibuti
- Zambia
- Zimbabue
--- 
