# Chip-seq-pipeline
Tarea 1 de bioinformática

Introducción
------------

Este pipeline sirve para llevar a cabo el análisis de ChIP-seq.

Instalación
-----------

Consiste en el montaje de una carpeta contenedora de los ejecutables CHIP y CHIP_local y una carpeta "test" con los scripts de cada fase del flujo de trabajo y el fichero de parámetros.

Uso
---

Para poder usar el pipeline hay que modificar el fichero de parámetros para que se corresponda con las ubicaciones de los archivos, el número de muestras y de controles y otras variables necesarias para el procesamiento. Se puede usar cada script individualmente ejecutándolos con el fichero de parámetros.

*Para que el pipeline funcione correctamente se necesita tener instalado: R, java, bowtie, macs2... Consultar los programas usados en cada paso del script.

¡IMPORTANTE! En los scripts se define una variable "$WORK_DIR" que tiene que ser modificada en los mismos debido a que no se encuentra definida en el fichero de parámetros y puede llevar a errores.

