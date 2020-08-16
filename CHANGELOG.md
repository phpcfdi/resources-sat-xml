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

## 2020-08-15 phpcfdi/resources-sat-xml-generator:latest 

Actualización automática con fecha sáb 15 ago 2020 23:38:25 CDT
