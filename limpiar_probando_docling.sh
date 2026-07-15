#!/bin/bash
set -e

if [ -d "venv_docling" ]; then
    echo "Eliminando entorno virtual venv_docling/..."
    rm -rf venv_docling
else
    echo "No se encontró el directorio venv_docling/."
fi

if [ -f "prueba.py" ]; then
    echo "Eliminando script de prueba prueba.py..."
    rm -f prueba.py
else
    echo "No se encontró el archivo prueba.py."
fi

echo "Limpieza completada."
