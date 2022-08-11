dueno2 = [23546987,  "Maria",  "Perez", 4789689,  "Pueyrredon  811"];
contador = 0;
while contador < len(dueno2):
    if dueno2.index(dueno2[contador]) == 2 or dueno2.index(dueno2[contador]) == 3 :
        contador = contador + 1
    else:
        print(dueno2[contador])
        contador = contador + 1
