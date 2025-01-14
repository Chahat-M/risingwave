-- noinspection SqlNoDataSourceInspectionForFile
-- noinspection SqlResolveForFile
CREATE SINK nexmark_q3
AS
SELECT P.name,
       P.city,
       P.state,
       A.id
FROM auction AS A
         INNER JOIN person AS P on A.seller = P.id
WHERE A.category = 10
  and (P.state = 'or' OR P.state = 'id' OR P.state = 'ca') 
WITH ( connector = 'blackhole', type = 'append-only');
