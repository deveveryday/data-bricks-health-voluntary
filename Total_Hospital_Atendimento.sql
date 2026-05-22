-- Nome do hospital e a qtde que ele atendeu
--select * from dim_hospital;


select 
    sum(total_pessoas) as total_pessoas,
    nome_hospital
from fato_atendimento
Join dim_hospital
    ON fato_atendimento.id_hospital = dim_hospital.id_hospital
Group by nome_hospital
Order by total_pessoas desc;

