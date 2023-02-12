#!/bin/bash

# Ubicación de salida especificada
output_dir="~/Desktop/aar_output"

# Verifica si la ubicación de salida existe
if [ ! -d "$output_dir" ]; then
  echo "La ubicación de salida no existe: $output_dir"
  exit 1
fi

# Verifica si la ubicación de salida tiene permisos de escritura
if [ ! -w "$output_dir" ]; then
  echo "No se tienen permisos de escritura en la ubicación de salida: $output_dir"
  exit 1
fi

# Ejecuta el comando de construcción de AAR
flutter build aar -output-dir "$output_dir"

# Verifica si el comando se ejecutó con éxito
if [ $? -ne 0 ]; then
  echo "Error al crear el archivo AAR"
  exit 1
fi

echo "El archivo AAR se ha creado con éxito en la ubicación de salida: $output_dir"

