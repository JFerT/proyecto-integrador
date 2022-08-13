Historial4 = (7510, 7960, 76180, 800, 4100)

minimo = Historial4[0]

for i in Historial4:
    if i < minimo:
        minimo = i


print('El valor mínimo de atención gastado en Olivia es $', (minimo), sep ='')
