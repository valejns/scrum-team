historial=[2350, 5960, 23000, 1000, 8900]
suma=0
x=0

while x<len(historial):
    suma=suma+historial[x]
    x=x+1

if suma<30000:
    print("$",suma);
else:
    print("Gastos por encima de lo presupuestado")
