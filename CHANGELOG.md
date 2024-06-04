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

## 2021-06-18 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 18 Jun 2021 09:01:02 PM CDT

## 2021-07-01 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Thu 01 Jul 2021 03:00:41 PM CDT

## 2021-07-08 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Thu 08 Jul 2021 03:00:44 PM CDT

## 2021-07-08 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Thu 08 Jul 2021 09:00:32 PM CDT

## 2021-07-09 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 09 Jul 2021 09:00:49 PM CDT

## 2021-11-03 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Wed 03 Nov 2021 09:00:53 PM CST

## 2021-11-19 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 19 Nov 2021 10:33:10 AM CST

## 2021-11-22 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Mon 22 Nov 2021 03:01:03 PM CST

## 2021-11-23 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Tue 23 Nov 2021 09:00:50 AM CST

## 2021-12-01 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Wed 01 Dec 2021 09:00:47 AM CST

## 2021-12-02 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Thu 02 Dec 2021 09:01:00 PM CST

## 2021-12-03 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 03 Dec 2021 03:00:48 PM CST

## 2021-12-03 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 03 Dec 2021 09:00:58 PM CST

## 2021-12-24 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Fri 24 Dec 2021 09:01:03 AM CST

## 2021-12-29 phpcfdi/resources-sat-xml-generator:v1.1.1 

Actualización automática con fecha Wed 29 Dec 2021 09:00:50 PM CST

## 2022-01-02 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Sun 02 Jan 2022 03:41:28 AM CST

## 2022-01-02 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Sun 02 Jan 2022 09:00:24 AM CST

## 2022-02-23 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Wed 23 Feb 2022 09:00:52 PM CST

## 2022-02-24 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Thu 24 Feb 2022 09:00:58 PM CST

## 2022-03-15 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Tue 15 Mar 2022 03:00:44 PM CST

## 2022-03-15 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Tue 15 Mar 2022 09:00:36 PM CST

## 2022-03-31 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Thu 31 Mar 2022 03:00:58 PM CST

## 2022-05-24 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Tue 24 May 2022 09:00:45 AM CDT

## 2022-06-24 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Fri 24 Jun 2022 03:00:38 PM CDT

## 2022-07-01 phpcfdi/resources-sat-xml-generator:v1.2.0 

Actualización automática con fecha Fri 01 Jul 2022 03:00:22 PM CDT

## 2022-10-04 phpcfdi/resources-sat-xml-generator:v2.0.0 

Actualización automática con fecha Tue 04 Oct 2022 09:00:44 AM CDT

## 2022-12-07 phpcfdi/resources-sat-xml-generator:v2.0.0 

Actualización automática con fecha Wed 07 Dec 2022 09:00:32 PM CST

## 2022-12-12 phpcfdi/resources-sat-xml-generator:v2.0.0 

Actualización automática con fecha Mon 12 Dec 2022 03:00:44 PM CST

## 2022-12-23 phpcfdi/resources-sat-xml-generator:v2.0.0 

Actualización automática con fecha Fri 23 Dec 2022 03:01:04 PM CST

## 2022-12-28 phpcfdi/resources-sat-xml-generator:v2.0.0 

Actualización automática con fecha Wed 28 Dec 2022 09:00:30 PM CST

## 2023-01-07 phpcfdi/resources-sat-xml-generator:v2.0.0 

Actualización automática con fecha Sat 07 Jan 2023 03:00:47 PM CST

## 2023-05-29 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Mon 29 May 2023 09:00:20 AM CST

## 2023-07-07 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Fri 07 Jul 2023 09:00:28 AM CST

## 2023-09-26 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Tue 26 Sep 2023 09:00:47 PM CST

## 2023-10-06 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Fri 06 Oct 2023 03:00:46 PM CST

## 2023-10-22 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Sun 22 Oct 2023 03:00:54 AM CST

## 2023-11-24 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Fri 24 Nov 2023 03:00:45 PM CST

## 2023-12-12 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Tue 12 Dec 2023 11:11:32 AM CST

## 2023-12-19 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Tue 19 Dec 2023 09:00:43 PM CST

## 2024-01-10 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Wed 10 Jan 2024 03:00:24 PM CST

## 2024-01-16 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Tue 16 Jan 2024 09:00:31 PM CST

## 2024-01-17 phpcfdi/resources-sat-xml-generator:v2.0.1 

Actualización automática con fecha Wed 17 Jan 2024 09:00:34 PM CST

## 2024-01-25 phpcfdi/resources-sat-xml-generator:v3.0.0 

Actualización automática con fecha Thu 25 Jan 2024 09:00:36 PM CST

## 2024-03-19 phpcfdi/resources-sat-xml-generator:v3.0.0 

Actualización automática con fecha Tue Mar 19 09:00:19 AM CST 2024.

## 2024-04-05 phpcfdi/resources-sat-xml-generator:v3.0.0 

Actualización automática con fecha Fri Apr  5 09:00:21 AM CST 2024.

## 2024-04-22 phpcfdi/resources-sat-xml-generator:v3.0.0 

Actualización automática con fecha Mon Apr 22 09:00:46 AM CST 2024.

## 2024-05-09 phpcfdi/resources-sat-xml-generator:v3.0.0 

Actualización automática con fecha Thu May  9 09:00:29 PM CST 2024.

## 2024-05-13 phpcfdi/resources-sat-xml-generator:v3.0.0 

Actualización automática con fecha Mon May 13 09:00:29 PM CST 2024.

## 2024-06-04 phpcfdi/resources-sat-xml-generator:v3.0.2 

Actualización automática con fecha Tue Jun  4 03:00:27 PM CST 2024.
