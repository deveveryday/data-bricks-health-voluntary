-- A idade média dos voluntários


SELECT 
    ROUND(AVG(idade)) AS idade_media
FROM dw_health_dashboard.dim_voluntario;