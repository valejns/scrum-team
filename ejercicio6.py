Historial2 = (23500, 5960, 2300, 10200, 8900)

total = sum(list(Historial2))
print("El monto total gastado (en pesos) por atenciones a Frida es:", total)
suma = 0
for i in Historial2:
    if i > 5000:
        suma += 1
    else:
        suma += 0
print("Los gastos de atención a Frida que superaron los 5000 pesos son", suma)
