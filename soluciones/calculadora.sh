#!/bin/bash

operacion=$1
num1=$2
num2=$3

# Verificar si los valores ingresados son números
if ! [[ $num1 =~ ^[0-9]+$ ]]; then
  echo "El primer número no es un número válido."
  exit 1
fi

if ! [[ $num2 =~ ^[0-9]+$ ]]; then
  echo "El segundo número no es un número válido."
  exit 1
fi

case $operacion in
  suma)
    resultado=$((num1 + num2))
    ;;
  resta)
    resultado=$((num1 - num2))
    ;;
  multiplicacion)
    resultado=$((num1 * num2))
    ;;
  division)
    if [ $valor2 -eq 0 ]; then
      echo "No se puede dividir por cero."
      exit 1
    fi
    resultado=$((num1 / num2))
    ;;
  *)
    echo "Operación no válida. Las operaciones válidas son: suma, resta, multiplicacion, division."
    exit 1
    ;;
esac

echo "El resultado de la operación $operacion entre $num1 y $num2 es: $resultado"
