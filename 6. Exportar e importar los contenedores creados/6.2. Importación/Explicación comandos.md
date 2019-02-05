# tar

**VIA**: man

An archiving utility.

**USO**: `tar [OPTIONS] [FILE...]`

Utilidad para operar con archivos tar.

&nbsp;

# grep

**VIA**: man

grep  searches  for  PATTERN  in  each  FILE.  A FILE of “-” stands for standard input.  If no FILE is given, recursive  searches  examine  the working  directory,  and nonrecursive searches read standard input.  By default, grep prints the matching lines.
In addition, the variant programs egrep, fgrep and rgrep are  the  same as  grep -E,  grep -F,  and  grep -r, respectively.  These variants are deprecated, but are provided for backward compatibility.

**USO**: `grep [OPTIONS] PATTERN [FILE...]`

Permite filtrar o buscar por un patrón  dado eliminando la información mostrada que con coincida con el dicho patrón.

&nbsp;

# docker import

**VIA**: <https://docs.docker.com/engine/reference/commandline/import/>

Import the content from a tarball to create a filesystem image.

**USO**: `docker import [OPTION] file{URL| - [REPOSITORY[:TAG]]`

Permite importar un tar como nueva imagen.

&nbsp;

# docker history

**VIA**: <https://docs.docker.com/engine/reference/commandline/history/>

Show the history of an image.

**USO**: `docker history [OPTIONS] IMAGE`

Muestra el hostorial que ha experimentado una imagen.

&nbsp;

# zcat

**VIA**: man

zcat  is  identical  to  gunzip  -c.   (On  some  systems,  zcat may be installed as gzcat to preserve the original link  to  compress.) zcat uncompresses either a list of files on the command line or its standard input and writes the uncompressed data on standard output.   zcat  will uncompress files that have the correct magic number whether they have a .gz suffix or not.

**USO**: `zcat [ -fhLV ] [ name ...  ]`

Permite descomprimir un archivo.

