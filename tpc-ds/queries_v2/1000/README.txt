TPC-DS Query Generation Information
====================================

Generated: 2026-02-02 11:16:16 PST
Hostname: peace1.fyre.ibm.com
User: nz
Working Directory: /home/nz/ahaldar/data_fabric/watsonx_data/DSGen-software-code-4.0.0/tools

Generation Command (as user specified):
----------------------------------------
./generate_queries.sh \
  --engine spark \
  --scale 1000 \
  --streams 20 \
  --seed 01271612345 \
  --output queries_spark \
  --dialect netezza \
  --templates ../query_templates_spark \
  --variants ../query_variants_spark \
  --clean \
  --native-streams

Parameters:
-----------
Engine: spark
Scale Factor: 1000 GB
Maximum Stream ID: 20 (generates streams s0 to s20, total 21 streams)
Random Seed: 01271612345
SQL Dialect: netezza
Templates Directory: ../query_templates_spark
Variants Directory: ../query_variants_spark
Output Directory: queries_spark/1000
Clean Before Generation: true
Same Seed Mode: false
Skip Combined File: false
Native Streams Mode: true
Include Variants: false

Output Structure:
-----------------
queries_spark/1000/
  s0/
  s1/
  s2/  ...
  s20/

Each stream directory contains:
- qall.sql: All queries combined in execution order
- qNN.sql: Individual query files (NN = 01-99, e.g., q01.sql, q10.sql)

- qlist.txt: Query execution control file

Template Fixes Applied:
------------------------
- 31 total fixes for Presto C++ compatibility
- Date arithmetic converted to INTERVAL syntax
- Subquery aliases added where required
- See TPCDS_FIXES_SUMMARY.md for complete details

Notes:
------
- Seed format per TPC-DS spec: mmddhhmmsss (timestamp of load end time)
- Each stream has different query parameters (unless --same-seed used)
- Query sequence follows TPC-DS specification (see tpcds_query_sequence.csv)
- All queries tested with IBM watsonx.data Presto C++

For more information, see:
- QUERY_GENERATION_README.md
- TPCDS_FIXES_SUMMARY.md
- TPC-DS Specification v4.0.0

