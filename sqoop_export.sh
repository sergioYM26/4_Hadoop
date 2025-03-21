#!/bin/bash

sqoop export --connect jdbc:mysql://localhost/retail_db --username retail_dba --password cloudera --table important_occupations --export-dir /user/cloudera/queries/most_important_occupations --input-fields-terminated-by ','
