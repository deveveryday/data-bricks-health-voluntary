-- Qual gênero atende mais (feminino/masculino) 

SELECT 
    genero,
    COUNT(*) AS total  ---conta quantos voluntários existem em cada gênero
FROM dw_health_dashboard.dim_voluntario
GROUP BY genero -- agrupa por gênero
ORDER BY total DESC;


--select *