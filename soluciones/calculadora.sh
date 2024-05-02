#!/bin/bash

operacion=$1
num1=$2
num2=$3


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
