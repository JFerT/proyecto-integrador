Historial5 = (8520, 9510, 7530, 3570, 1590)

def max(tuple):
    m = 0
    for i in tuple:
        if i > m:
            m = i
    return m

print('El máximo valor gastado en Toto es $', max(Historial5), '. No se lo merece.', sep ='')
