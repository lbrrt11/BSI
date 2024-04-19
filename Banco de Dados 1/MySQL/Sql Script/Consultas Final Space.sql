-- Q1 -- Escreva uma query que retorne uma coluna com o nome dos personagens e uma coluna com o nome de sua espécie.
select name as Nome, specie as Espécie, specie_name as Raça
from final_space_db.Personagem, final_space_db.Specie
where specie_id = specie;

-- Q2 -- Escreva uma query que retorne uma coluna com os nomes dos personagens e uma coluna com o nome do seu local de origem.
select name, location_name
from final_space_db.Personagem, final_space_db.Location
where location_id = origin;

-- Q3 -- Agora, retorne o nome do personagem, sua espécie e o lugar de origem em uma query.
select name, specie_name ,location_name
from final_space_db.Personagem, final_space_db.specie,final_space_db.Location
where location_id = origin
and specie_id = specie;

-- Q4 -- Escreva uma query que retornará uma coluna com o nome da espécie, nomeie como Especie, e uma coluna com a quantidade de personagens daquela espécie, nomeie como Quantidade. Por fim, organize a lista de forma ascendente pela quantidade.
select count(specie) as Quantidade, Specie_Name as Espécie
from final_space_db.Specie, final_space_db.Personagem
where specie_id = specie
group by Specie
order by Quantidade ASC;

-- Q5 -- Escreva uma query que retorne uma coluna com o nome do Local, nomeie como local de origem, e uma coluna com quantidade de personagens que tenham origem desse local, nomeie como Quantidade. Por fim, organize a lista de forma decrescente pela quantidade.
select Location_Name as Origem, count(origin) as Quantidade
from final_space_db.Location, final_space_db.Personagem
where Location_id = origin
group by Origin
order by Quantidade DESC;

-- Q6 -- Escreva uma query que retorne os nomes dos personagens que tem como local de origem 'Earth'. Por fim, organize os nomes em ordem alfabética.
select name
from final_space_db.Personagem
where Origin = '1'
order by name;

-- Q7 -- Escreva uma query que retorne nome e local de origem de todos personagens que são de espécie 'Ventrexian'. Por fim, ordene os nomes de forma alfabética-invertida.
select distinct Name as Nome, Location_Name as Local_De_Origem
from final_space_db.Personagem, final_space_db.Location
where Specie = '2' and Origin = Location_id
order by name DESC;
