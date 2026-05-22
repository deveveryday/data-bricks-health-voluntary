
select 
    periodo.periodo,
    COUNT(*) total_atendimento
from fato_atendimento fato
join dim_periodo_horario periodo
    on periodo.id_periodo = fato.id_periodo
GROUP BY periodo.periodo
--select * from fato_atendimento
--manha
--tarde
--noite