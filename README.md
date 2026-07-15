[README.md](https://github.com/user-attachments/files/30042727/README.md)
# Docling - Scripts de prueba

## probando_docling.sh

Script que automatiza una prueba de la librería [Docling](https://github.com/DS4SD/docling) de IBM:

1. Crea un entorno virtual de Python (`venv_docling/`).
2. Actualiza `pip` e instala `docling` dentro del entorno virtual.
3. Genera el script Python `prueba.py` que descarga un PDF desde arXiv y lo convierte a Markdown usando `DocumentConverter`.
4. Ejecuta `prueba.py`.
5. Desactiva el entorno virtual.

**Uso:**
```bash
bash probando_docling.sh
```

## limpiar_probando_docling.sh

Script de limpieza que elimina todo lo generado por `probando_docling.sh`:

- Directorio `venv_docling/` (entorno virtual con sus dependencias).
- Archivo `prueba.py` (script de prueba generado).

**Uso:**
```bash
bash limpiar_probando_docling.sh
```

> **Nota:** No elimina `probando_docling.sh` ni `salida_probando_docling.txt`, ni tampoco caches globales de HuggingFace/ModelHub compartidas entre proyectos.
