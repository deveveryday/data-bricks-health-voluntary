SELECT 
    COUNT(total_horas) total_horas,
    nome_voluntario
FROM fato_atendimento
JOIN dim_voluntario
    ON fato_atendimento.id_voluntario = dim_voluntario.id_voluntario
GROUP BY nome_voluntario
ORDER BY total_horas desc
limit(5);