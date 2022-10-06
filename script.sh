
#genero la página estática con los cambios.
npx @11ty/eleventy --pathprefix='/home/alemd/Github/alemd-11ty'

#copio la página estática generada al repositorio github
cp -r /home/alemd/Github/alemd-11ty/_site/* /home/alemd/Github/alemd-cutreblog

#Realizamos los cambios en github
git add .
git commit -am "cambios automatizado"
git push
