--Média de atendimento por ano

SELECT 
    YEAR(data_atendimento) AS ano, 
    COUNT(*) AS total_atendimentos           --- conta qtas linhas existem, conta quantos atendimentos existem em cada ano
FROM dw_health_dashboard.dim_data_atendimento
GROUP BY YEAR(data_atendimento)
ORDER BY ano asc;

