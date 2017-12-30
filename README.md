# Chip-seq-pipeline
Tarea 1 de bioinformática

Introducción/Introduction
-------------------------

Este pipeline sirve para llevar a cabo el análisis de ChIP-seq.

This pipeline analyses ChIP-seq data.

Instalación/Installation
------------------------

Consiste en el montaje de una carpeta contenedora de los ejecutables CHIP y CHIP_local y una carpeta "test" con los scripts de cada fase del flujo de trabajo y el fichero de parámetros.

It consist in one folder with the pipelines CHIP and CHIP_local and a folder inside called "test" with the param file and pipelines that make the different parts of the procces: Building index, mapping and peak calling.

Requirements:
 - bowtie: used for building the index (bowtie-build) and mapping (bowtie).
 - fastqc: used for quality analysis.
 - macs2: used for peak calling.
 - java: used for peak annotation.
 - R: used for proccesing the results.

Uso/Usage
----------

Para poder usar el pipeline hay que modificar el fichero de parámetros para que se corresponda con las ubicaciones de los archivos, el número de muestras y de controles y otras variables necesarias para el procesamiento. Se puede usar cada script individualmente ejecutándolos con el fichero de parámetros.

*Para que el pipeline funcione correctamente se necesita tener instalado: R, java, bowtie, macs2... Consultar los programas usados en cada paso del script.*

¡IMPORTANTE! En los scripts se define una variable "$WORK_DIR" que tiene que ser modificada en los mismos debido a que no se encuentra definida en el fichero de parámetros y puede llevar a errores.

To be able to use the pipeline you have to modify the parameter file so that it corresponds to the locations of the files, the number of samples and controls, variables that are necessaries for processing your data. Each script can be used individually by executing them with the parameter file.

WARNING! In script there is a variable called "$WORK_DIR" that you have to modify because it isn't in the param file.
