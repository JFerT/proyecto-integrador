'''
4)      Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

      14,  Fido,  12/12/2012 , Macho, 23546987

Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
'''
#Defino la lista de elementos
perro2 = [14,'Fido','12/12/2012','Macho',23546987]
#Recorro la lista y imprimo cada uno de sus elementos
#inicializo i en cero
i = 0
#Recorre la lista de manera inversa
for i in reversed(perro2):
    print(i)
    i=+1

  