# Recursos SAT XML

[![Source Code][badge-source]][source]
[![Discord][badge-discord]][discord]
[![Build Status][badge-build]][build]

Recursos de archivos XSD (XML Schema Definition) y XSLT (eXtensible Stylesheet Language) que el SAT [Servicio de Administración Tributaria (SAT)](http://www.sat.gob.mx/) en México ofrece para trabajar con CFDI (Comprobante Fiscal Digital por Internet).

- Los archivos XSD son utilizados para validar los archivos XML de CFDI.

- Los archivos XSLT son utilizados para transformar los archivos XML de CFDI, esta transformación es útil al momento de generar la *cadena de origen* de los CFDI.

Los archivos contenidos son las descargas de todos los archivos XSD y XSLT listados en el listado de documentos técnicos de CFDI y Complementos de CFDI publicado en [`phpcfdi/sat-ns-registry`](https://github.com/phpcfdi/sat-ns-registry). Entre los que se incluyen los relacionados con CFDI 3.3, Timbre Fiscal Digital 1.1, Nómina 1.2, Comercio Exterior 1.1, etc.

Los archivos no son idénticos a los originales, esto es porque los archivos originales contienen referencias absolutas a otros archivos, por ejemplo, `http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd` está vinculado con `http://www.sat.gob.mx/sitio_internet/cfd/catalogos/catCFDI.xsd`. Al modificar los archivos para que tengan inclusiones relativas en lugar de absolutas, el archivo `resources/www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd` está vinculado al archivo `../catalogos/catCFDI.xsd` de forma relativa.

Gracias a la conversión de rutas absolutas a relativas no será necesario obtener recursos del exterior y se pueden utilizar de forma local.

## Uso del recurso

Los archivos se encuentran en la carpeta `resources/`.

Si deseas obtener los archivos directamente de este repositorio puedes ejecutar:

```shell
# download latest archive from github as resources-sat-xml.zip
wget -O resources-sat-xml.zip https://github.com/phpcfdi/resources-sat-xml/archive/master.zip
# unzip the "resources" folder contents and place then into my-resources
unzip resources-sat-xml.zip 'resources-sat-xml-master/resources/*' -d my-resources
# remove resources-sat-xml.zip
rm resources-sat-xml.zip
```

## Actualización del recurso

Las actualizaciones al repositorio pueden ser consultadas en el archivo [`CHANGELOG`](./CHANGELOG.md).

El proceso de actualización es automático y se genera gracias al programa [`phpcfd/resources-sat-xml-generator`](https://github.com/phpcfdi/resources-sat-xml-generator) que a su vez utiliza la librería [`eclipxe/xmlresourceretriever`](https://github.com/eclipxe13/XmlResourceRetriever) para poder extraer todo el árbol de dependencias de los archivos XSD y XSLT.

En caso de encontrar que el repositorio no está actualizado, por favor genera un `Issue` en este repositorio, explicando qué archivo falta o sobra o contiene datos no actualizados.

## Acerca de este proyecto

Este recurso se crea dentro de la iniciativa de [PhpCfdi](https://www.phpcfdi.com) para contar con información pública del SAT pero de forma descentralizada, con control de cambios y utilizable en formatos abiertos para sistemas informáticos.

Estos recursos, a pesar de estar vinculados con una tecnología en su formato, no están vinculados con un lenguaje de programación o una librería específica para su consumo. Cualquier proyecto, privado o público, desde cualquier lenguaje de programación, arquitectura o tecnología debe ser capaz de explotarlo siempre que pueda utilizar el formato de almacenamiento.

## Licencia

La información dentro de este repositorio debe ser considerada de *dominio público*, dado que es una recopilación de información pública generada por el [Servicio de Administración Tributaria (SAT)](https://www.sat.gob.mx/) de México. Debido a lo anterior, se establece este repositorio con la licencia [Unlicense](LICENSE).

[source]: https://github.com/phpcfdi/resources-sat-xml
[discord]: https://discord.gg/aFGYXvX
[build]: https://www.phpcfdi.com/resources-app/build/sat-xml

[badge-source]: https://img.shields.io/badge/source-phpcfdi/resources--sat--xml-blue?logo=github
[badge-discord]: https://img.shields.io/discord/459860554090283019?logo=discord
[badge-build]: https://img.shields.io/endpoint?url=https%3A%2F%2Fwww.phpcfdi.com%2Fresources-app%2Fapi%2Fv1%2Fbuilds%2Fsat-xml%2Fshields.io&logo=github-actions
