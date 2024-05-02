#!/bin/bash

operacion=$1
num1=$2
num2=$3

# Verificar si los valores ingresados son números
if ! [[ $valor1 =~ ^[0-9]+$ ]]; then
  echo "El primer valor no es un número válido."
  exit 1
fi

if ! [[ $valor2 =~ ^[0-9]+$ ]]; then
  echo "El segundo valor no es un número válido."
  exit 1
fi

case $operacion in
  suma)
    resultado=$((valor1 + valor2))
    ;;
  resta)
    resultado=$((valor1 - valor2))
    ;;
  multiplicacion)
    resultado=$((valor1 * valor2))
    ;;
  division)
    if [ $valor2 -eq 0 ]; then
      echo "No se puede dividir por cero."
      exit 1
    fi
    resultado=$((valor1 / valor2))
    ;;
  *)
    echo "Operación no válida. Las operaciones válidas son: suma, resta, multiplicacion, division."
    exit 1
    ;;
esac

echo "El resultado de la operación $operacion entre $num1 y $num2 es: $resultado"
