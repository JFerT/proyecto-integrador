![git](https://blog.devsecopsgirl.in/img/blog/git/git-main.png)
# Comandos básicos de GIT

### git clone <urlRepo>
Me permite clonar el repositorio remoto en mi computadora con los últimos cambios que se hayan realizado
### git branch <nombreDeLaRama>
Se usa para crear una nueva rama en el repositorio

### git checkout <nombreDeLaRama>
Selecciono la rama creada para poder trabajar sobre ella

#### --> Realizo los cambios correspondientes y para guardar los cambios en el repo hago lo siguiente:

### git status
Permite conocer el estado del repositorio, es decir si se agregaron, modificaron o eliminaron archivos

### git add -A
Se utiliza para guardar los cambios realizados, pero aún no los sube al repositorio remoto, para subirlo hay que ejecutar git commit

### git commit -m "Breve descripción de lo realizado"
Le da la confirmación para que guarde las actualizaciones en el repositorio local, pero aún no son publicados los mismos en el remoto

### git pull origin main
Bajo los cambios que haya en las distintas ramas, antes de realizar la subida de las modificaciones.

### git push origin <nombreDeLaRama>
Subo los cambios de la rama al repositorio remoto

#### Ahora solo quedaría fusionar la rama creada con la principal
- Desde la web de github tienes la opción para realizar dicha acción, se llama Compare & pull request



## Comandos para configurar username y email en git

### git config --global user.name "nombreDeUsuario"
Establezco el nombre de usuario que utilizara Git a la hora de realizar los distintos commits

### git config --global user.email correoElectronico
Establezco el correo electrónico que utilizara Git a la hora de realizar los distintos commits

### git config --list
Permite visualizar los datos que se setearon anteriormente o cuando se configuró git por primera vez

## Otros comandos útiles

### git init
Se utiliza para inicializar un repositorio, este comando debe ejecutarse en la carpeta local.

### git remote add origin <urlRepo>
Utilizado para conectar el repositorio local con el remoto o otros repositorio

### git remote -v
Permite visualizar las conexiones con otros repositorios