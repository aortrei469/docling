#!/bin/bash

# 1. Crear un entorno virtual de Python
echo "Creando entorno virtual..."
python3 -m venv venv_docling
source venv_docling/bin/activate

# 2. Actualizar pip e instalar Docling
echo "Instalando Docling (esto puede tardar un poco)..."
pip install --upgrade pip
pip install docling

# 3. Crear el script de prueba en Python
echo "Creando el script de prueba en Python..."
cat << 'EOF' > prueba.py
import time
from docling.document_converter import DocumentConverter

def test_docling():
    # Usaremos un PDF de ejemplo online (el propio paper técnico de Docling)
    source = "https://arxiv.org/pdf/2408.09869"
    
    print(descargar := f"Descargando y procesando el documento: {source}...")
    start_time = time.time()
    
    # Inicializa el convertidor e inicia la magia
    converter = DocumentConverter()
    result = converter.convert(source)
    
    # Exportamos el resultado mapeado a Markdown limpio
    markdown_output = result.document.export_to_markdown()
    
    end_time = time.time()
    
    print("\n--- ¡PROCESADO CON ÉXITO! ---")
    print(f"Tiempo total de ejecución: {end_time - start_time:.2f} segundos.")
    print("\n--- Vista previa de los primeros 500 caracteres en Markdown: ---\n")
    print(markdown_output[:500])
    print("\n--------------------------------------------------------------")

if __name__ == "__main__":
    test_docling()
EOF

# 4. Ejecutar la prueba
echo "Ejecutando la prueba de Docling..."
python3 prueba.py

# 5. Desactivar el entorno al finalizar
deactivate
echo "Prueba finalizada. Puedes volver a activar el entorno con: source venv_docling/bin/activate"
