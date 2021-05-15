# CHANGELOG

Archivo de control de cambios, este archivo puede contener un listado de cambios y modificaciones automáticas generadas por procesos de actualización. El orden de las modificaciones debe ser incluyendo la más reciente al final del archivo.

Las modificaciones automáticas deben contener el título: `## <fecha-aaaa-mm-dd> <programa-que-genera:version>`, por ejemplo: `## 2025-01-01 phpcfdi/resources-sat-xml:4.1`, y una breve descripcion del cambio. Mientras que las modificaciones manuales deberían tener el título iniciando con la fecha y formato libre.

## 2020-06-19 Primera liberación

Esta versión inicial ha sido muy problemática de generar debido a que la infrestuctura del SAT y AWS CloudFront está entregando continuamente archivos incompletos. Aún no se publica el programa que genera los archivos del repositorio. Tampoco se ha creado mecanismo de actualización automatizada.

## 2020-06-19 Ya, en serio

Las ubicaciones de los archivos XSD de Timbre Fiscal Digital versiones 1.0 y 1.1 tenían establecido en forma incorrecta la dirección por uso de mayúsculas y minúsculas, se corrigieron tomándolas directamente de la información del Anexo 20 versiones de CFDI 3.3 y 3.2.

## 2020-06-22 Primer intento de actualización automática

- Se corrige el uso del comando `zip -j` en las instrucciones de uso, no se debe usar `-j`.
- Se agrega el archivo de tareas pendientes [TODO](TODO.md).
- Revertir el último cambio, las ubicaciones eran correctas.

```text
resources/www.sat.gob.mx/sitio_internet/cfd/{TimbreFiscalDigital => timbrefiscaldigital}/TimbreFiscalDigitalv11.xsd
resources/www.sat.gob.mx/sitio_internet/{TimbreFiscalDigital => timbrefiscaldigital}/TimbreFiscalDigital.xsd
```

## 2020-06-23 phpcfdi/resources-sat-xml-generator:v1.0.0 

Actualización automática con fecha mar jun 23 18:50:50 CDT 2020

## 2020-08-16 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Sun 16 Aug 2020 02:19:21 AM CDT

## 2020-09-03 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Thu 03 Sep 2020 09:01:09 PM CDT

## 2020-10-22 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Thu 22 Oct 2020 09:00:50 PM CDT

## 2020-12-15 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Tue 15 Dec 2020 03:00:48 PM CST

## 2020-12-21 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Mon 21 Dec 2020 09:00:48 PM CST

## 2020-12-22 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Tue 22 Dec 2020 09:00:47 AM CST

## 2020-12-29 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Tue 29 Dec 2020 09:00:29 PM CST

## 2021-01-08 phpcfdi/resources-sat-xml-generator:v1.1.0 

Actualización automática con fecha Fri 08 Jan 2021 03:00:35 PM CST

## 2021-02-23 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Tue 23 Feb 2021 09:00:42 PM CST

## 2021-03-23 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Tue 23 Mar 2021 09:00:49 AM CST

## 2021-04-14 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Wed 14 Apr 2021 03:00:56 PM CDT

## 2021-04-23 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 23 Apr 2021 03:00:48 PM CDT

## 2021-05-15 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Sat 15 May 2021 09:00:46 AM CDT
