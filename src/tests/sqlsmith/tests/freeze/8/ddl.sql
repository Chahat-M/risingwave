CREATE TABLE supplier (s_suppkey INT, s_name CHARACTER VARYING, s_address CHARACTER VARYING, s_nationkey INT, s_phone CHARACTER VARYING, s_acctbal NUMERIC, s_comment CHARACTER VARYING, PRIMARY KEY (s_suppkey));
CREATE TABLE part (p_partkey INT, p_name CHARACTER VARYING, p_mfgr CHARACTER VARYING, p_brand CHARACTER VARYING, p_type CHARACTER VARYING, p_size INT, p_container CHARACTER VARYING, p_retailprice NUMERIC, p_comment CHARACTER VARYING, PRIMARY KEY (p_partkey));
CREATE TABLE partsupp (ps_partkey INT, ps_suppkey INT, ps_availqty INT, ps_supplycost NUMERIC, ps_comment CHARACTER VARYING, PRIMARY KEY (ps_partkey, ps_suppkey));
CREATE TABLE customer (c_custkey INT, c_name CHARACTER VARYING, c_address CHARACTER VARYING, c_nationkey INT, c_phone CHARACTER VARYING, c_acctbal NUMERIC, c_mktsegment CHARACTER VARYING, c_comment CHARACTER VARYING, PRIMARY KEY (c_custkey));
CREATE TABLE orders (o_orderkey BIGINT, o_custkey INT, o_orderstatus CHARACTER VARYING, o_totalprice NUMERIC, o_orderdate DATE, o_orderpriority CHARACTER VARYING, o_clerk CHARACTER VARYING, o_shippriority INT, o_comment CHARACTER VARYING, PRIMARY KEY (o_orderkey));
CREATE TABLE lineitem (l_orderkey BIGINT, l_partkey INT, l_suppkey INT, l_linenumber INT, l_quantity NUMERIC, l_extendedprice NUMERIC, l_discount NUMERIC, l_tax NUMERIC, l_returnflag CHARACTER VARYING, l_linestatus CHARACTER VARYING, l_shipdate DATE, l_commitdate DATE, l_receiptdate DATE, l_shipinstruct CHARACTER VARYING, l_shipmode CHARACTER VARYING, l_comment CHARACTER VARYING, PRIMARY KEY (l_orderkey, l_linenumber));
CREATE TABLE nation (n_nationkey INT, n_name CHARACTER VARYING, n_regionkey INT, n_comment CHARACTER VARYING, PRIMARY KEY (n_nationkey));
CREATE TABLE region (r_regionkey INT, r_name CHARACTER VARYING, r_comment CHARACTER VARYING, PRIMARY KEY (r_regionkey));
CREATE TABLE person (id BIGINT, name CHARACTER VARYING, email_address CHARACTER VARYING, credit_card CHARACTER VARYING, city CHARACTER VARYING, state CHARACTER VARYING, date_time TIMESTAMP, extra CHARACTER VARYING, PRIMARY KEY (id));
CREATE TABLE auction (id BIGINT, item_name CHARACTER VARYING, description CHARACTER VARYING, initial_bid BIGINT, reserve BIGINT, date_time TIMESTAMP, expires TIMESTAMP, seller BIGINT, category BIGINT, extra CHARACTER VARYING, PRIMARY KEY (id));
CREATE TABLE bid (auction BIGINT, bidder BIGINT, price BIGINT, channel CHARACTER VARYING, url CHARACTER VARYING, date_time TIMESTAMP, extra CHARACTER VARYING);
CREATE TABLE alltypes1 (c1 BOOLEAN, c2 SMALLINT, c3 INT, c4 BIGINT, c5 REAL, c6 DOUBLE, c7 NUMERIC, c8 DATE, c9 CHARACTER VARYING, c10 TIME, c11 TIMESTAMP, c13 INTERVAL, c14 STRUCT<a INT>, c15 INT[], c16 CHARACTER VARYING[]);
CREATE TABLE alltypes2 (c1 BOOLEAN, c2 SMALLINT, c3 INT, c4 BIGINT, c5 REAL, c6 DOUBLE, c7 NUMERIC, c8 DATE, c9 CHARACTER VARYING, c10 TIME, c11 TIMESTAMP, c13 INTERVAL, c14 STRUCT<a INT>, c15 INT[], c16 CHARACTER VARYING[]);
CREATE MATERIALIZED VIEW m0 AS SELECT 'Xm452YvpOy' AS col_0, ('Kips2smKY2') AS col_1 FROM region AS t_0 WHERE (true) GROUP BY t_0.r_comment, t_0.r_name;
CREATE MATERIALIZED VIEW m1 AS SELECT sq_1.col_2 AS col_0, sq_1.col_2 AS col_1, sq_1.col_0 AS col_2, ((BIGINT '905') / sq_1.col_2) AS col_3 FROM (SELECT ('Wm390a34nJ') AS col_0, (206) AS col_1, (664) AS col_2, t_0.id AS col_3 FROM auction AS t_0 WHERE CAST((length('kqxTtEQM08')) AS BOOLEAN) GROUP BY t_0.category, t_0.id, t_0.extra) AS sq_1 WHERE true GROUP BY sq_1.col_0, sq_1.col_2 HAVING ((REAL '312') < ((FLOAT '700')));
CREATE MATERIALIZED VIEW m2 AS SELECT t_0.c13 AS col_0 FROM alltypes1 AS t_0 WHERE ((697) IS NULL) GROUP BY t_0.c13, t_0.c2, t_0.c15;
CREATE MATERIALIZED VIEW m3 AS WITH with_0 AS (SELECT t_1.col_0 AS col_0, 'uluRcTrGnz' AS col_1 FROM m0 AS t_1 WHERE false GROUP BY t_1.col_0) SELECT (FLOAT '975') AS col_0, DATE '2022-04-16' AS col_1, TIME '04:00:07' AS col_2, (TIMESTAMP '2022-04-16 04:59:07') AS col_3 FROM with_0 WHERE false;
CREATE MATERIALIZED VIEW m4 AS WITH with_0 AS (SELECT sq_2.col_0 AS col_0, sq_2.col_0 AS col_1 FROM (SELECT t_1.extra AS col_0 FROM bid AS t_1 GROUP BY t_1.extra) AS sq_2 GROUP BY sq_2.col_0) SELECT (BIGINT '244') AS col_0, (BIGINT '-9223372036854775808') AS col_1 FROM with_0 WHERE false;
CREATE MATERIALIZED VIEW m5 AS SELECT t_1.c15 AS col_0, ('iiKHvsY66p') AS col_1, ARRAY[(BIGINT '896'), (BIGINT '90'), (BIGINT '9223372036854775807'), (BIGINT '732')] AS col_2 FROM m1 AS t_0 RIGHT JOIN alltypes1 AS t_1 ON t_0.col_3 = t_1.c7 AND (t_1.c3 <> CAST((t_1.c7 <= t_1.c4) AS INT)) GROUP BY t_1.c1, t_1.c7, t_0.col_2, t_1.c15, t_1.c8, t_1.c3, t_0.col_3, t_1.c16 HAVING true;
CREATE MATERIALIZED VIEW m6 AS SELECT t_0.c_nationkey AS col_0, 'VGbd66GDGM' AS col_1, (TRIM(t_1.c_phone)) AS col_2 FROM customer AS t_0 JOIN customer AS t_1 ON t_0.c_acctbal = t_1.c_acctbal WHERE true GROUP BY t_0.c_mktsegment, t_1.c_custkey, t_0.c_acctbal, t_0.c_nationkey, t_1.c_phone, t_0.c_phone HAVING false;
CREATE MATERIALIZED VIEW m7 AS SELECT t_0.col_3 AS col_0, (upper('TbyIJFRP9E')) AS col_1, TIME '05:00:08' AS col_2, t_0.col_3 AS col_3 FROM m3 AS t_0 GROUP BY t_0.col_3 HAVING ((((REAL '594') / (REAL '771')) - ((REAL '1') / (- (REAL '2147483647')))) <= (SMALLINT '1'));
CREATE MATERIALIZED VIEW m8 AS WITH with_0 AS (SELECT (REAL '960') AS col_0, (t_1.o_orderdate + (INT '0')) AS col_1, ((SMALLINT '879') * (INT '2147483647')) AS col_2, t_2.col_0 AS col_3 FROM orders AS t_1 JOIN m0 AS t_2 ON t_1.o_clerk = t_2.col_0 WHERE false GROUP BY t_1.o_shippriority, t_1.o_orderdate, t_1.o_totalprice, t_1.o_custkey, t_2.col_0) SELECT (INTERVAL '-60') AS col_0, DATE '2022-04-15' AS col_1, (SMALLINT '32767') AS col_2, (ARRAY[(SMALLINT '611')]) AS col_3 FROM with_0 WHERE false;
CREATE MATERIALIZED VIEW m9 AS SELECT t_0.c_name AS col_0, 'geMctGL9l6' AS col_1 FROM customer AS t_0 WHERE false GROUP BY t_0.c_address, t_0.c_name;