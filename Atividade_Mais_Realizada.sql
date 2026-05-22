--- Qual atividade é mais realizada pelo voluntario

SELECT 
    da.nome_atividade,
    COUNT(*) AS total_atividades
FROM dw_health_dashboard.fato_atendimento fa

JOIN dw_health_dashboard.dim_atividade da
    ON fa.id_atividade = da.id_atividade

GROUP BY da.nome_atividade

ORDER BY total_atividades DESC;




--select * from dw_health_dashboard.fato_atendimento;






