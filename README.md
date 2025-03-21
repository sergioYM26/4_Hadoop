# 4_Hadoop

Trabajo del módulo cuatro del máster de datahack

## Pasos para preparar el entorno desde cero

Lo primero es crear las tablas de hive y cargar los datos del dataset. Para ello, se han generado dos scripts, `create_tables.hql` y `load_data.hql`.

Para lanzarlos:
```
hive -f create_tables.hql
hive -f load_data.hql
```

De esta manera, podemos ir ejecutando ya todas los scripts de la carpeta `queries/` que son las consultas pedidas.

Para la parte de sqoop, es importante crear primero la tabla en mysql:

```bash
$ mysql -u retail_dba
> cloudera

mysql> use retail_db;
mysql> create table important_occupations(user_id int, occupation int, num_reviews int);
```

Con esto, ya podemos primero pasar los datos de la consulta a hdfs con el script `hive -f dump_most_important_occupations.hql`.

Esto nos dejará en hdfs el resultado de la query, podemos verlo con `hadoop fs -ls /user/cloudera/queries` y ahí deberíamos ver el directorio `most_important_occupations`.

Con todo esto listo, podemos lanzar el comando de sqoop, o el script `sqoop_export.sh`:

```
sqoop export --connect jdbc:mysql://localhost/retail_db \
    --username retail_dba --password cloudera \
    --table important_occupations \
    --export-dir /user/cloudera/queries/most_important_occupations\ 
    --input-fields-terminated-by ','
```

El resto de la documentación sobre la práctica se encuentra en `Practica-Hadoop-SY.pdf`.
