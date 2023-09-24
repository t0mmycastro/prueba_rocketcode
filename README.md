# prueba_rocketcode

Prueba ROCKETCODE de Tomás Castro

## Descripción

Aplicación realizada en el Framework Flutter y con el lenguaje Dart.

## Librerias utilizadas

- [Provider](https://pub.dev/packages/provider): Usada para el manejo correcto del estado independiente.
- [Shared_Preferences](https://pub.dev/packages/shared_preferences): Utilizada para el guardado de los datos en variables de sesión.

## Fuentes

Se utilizó una fuente de tipo OPEN SANS para este proyecto

## Como comenzar

La aplicación está hecha a base del problema dado por RocketCode, contiene una arquitectura basada en la arquitectura BloC e inspirada en Clean Architecture y principios SOLID.  

- Arquitectura:
    - `lib/`: Carpeta origen del proyecto
        - `core/`: Contiene todo tipo de código de lógica como los estados y modelos
            - `data/`: Contiene los modelos utilizados en distintas partes del proyecto
            - `provider/`: Acá se encuentra toda la lógica del estado de la aplicación
        - `presentation/`: Contiene todo tipo de código de diseño, widgets y las vistas
            - `views/`: Contiene solo las vistas de la aplicación
            - `widgets/`: Se encuentran los widgets utilizados en la aplicación
                - `app/`: Contiene los widgets globales de la aplicación
                - `views/`: Contiene los widgets exclusivos de las vistas

La aplicación es un chat tipo formulario, en el que tendrás que escribir cada dato, el cual se mostrará en un recuadro rosado y cuando completes todos los campos, darás a iniciar y mostrará tus datos que has rellenado.

## Recomendación

Se recomienda utilizar la aplicación en un emulador de Android Studio o de su mismo teléfono, la versión escritorio no es recomendable ya que no emula en verdad como sería la aplicación en un teléfono movil.

Tomás Castro - Desarrollador