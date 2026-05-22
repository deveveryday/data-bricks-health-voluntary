-- Qual ano teve mais atendimento

select 
    year(data_atendimento) as ano,
    count(*) as qtde_atendimento
from 
    dw_health_dashboard.dim_data_atendimento
group by 
    year(data_atendimento)
limit (1);






--Vendo a tabela
--SELECT *
--FROM dw_health_dashboard.dim_data_atendimento;