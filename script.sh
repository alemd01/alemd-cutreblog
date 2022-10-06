
#genero la página estática con los cambios.
npx @11ty/eleventy --pathprefix='/home/alemd/Github/alemd-11ty' 2>/dev/null
echo "generada la página estática..."
#copio la página estática generada al repositorio github
cp -r /home/alemd/Github/alemd-11ty/_site/* /home/alemd/Github/alemd-cutreblog 2>/dev/null
echo "actualizado el repositorio estático..."
#Realizamos los cambios en github
git add . 2>/dev/null
git commit -am "cambios automatizado" 2>/dev/null
git push 2>/dev/null
echo "Actualizada la página"
echo "fin."
