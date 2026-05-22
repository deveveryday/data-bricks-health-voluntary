/*
--Qual mês teve mais atendimento

select 
    MONTHNAME(data_atendimento) as mes,
    count(*) as qtde_atendimento
from 
    dw_health_dashboard.dim_data_atendimento
group by 
    MONTHNAME(data_atendimento)
order by qtde_atendimento desc
limit 12;


--SELECT 
   -- MONTHNAME(data_atendimento) AS mes,
   -- COUNT(*) AS qtde_atendimento
--FROM dw_health_dashboard.dim_data_atendimento
--GROUP BY MONTHNAME(data_atendimento)
--ORDER BY qtde_atendimento DESC
--LIMIT 1;


--Aqui aparece o nome do mês  
--SELECT 
 --   MONTHNAME(data_atendimento) AS mes,
   -- COUNT(*) AS qtde_atendimento
--FROM dw_health_dashboard.dim_data_atendimento
----GROUP BY MONTHNAME(data_atendimento)
--ORDER BY qtde_atendimento DESC;

*/

SELECT
  YEAR(data_atendimento) AS ano,
  MONTH(data_atendimento) AS numero_mes,
  MONTHNAME(data_atendimento) AS mes,
  CONCAT(MONTHNAME(data_atendimento), ' ', YEAR(data_atendimento)) AS mes_ano,
  COUNT(*) AS qtde_atendimento
FROM
  dw_health_dashboard.dim_data_atendimento
GROUP BY
  YEAR(data_atendimento),
  MONTH(data_atendimento),
  MONTHNAME(data_atendimento)
ORDER BY
  ano ASC,
  numero_mes ASC;





