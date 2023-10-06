select nuke_power,health_power from Nation where id like '';

select Nation.population as 'Population actuelle',CONCAT((Nation.population/Nc.population)*100,'%') as 'Pourcentage' from Nation left join Nation_choice Nc on Nation.type=Nc.id;

select Nc.name,
       IF(((N.population/Nc.population)*100)<30,'Rouge', IF(((N.population/Nc.population)*100)>60),'Vert','Jaune') from Nation_choice Nc
inner join Nation N on N.type = Nc.id;

select Nc.name,
CASE
    WHEN ((N.population/Nc.population)*100) < 30 THEN 'Rouge'
    WHEN ((N.population/Nc.population)*100) > 30 and ((N.population/Nc.population)*100) < 60 THEN 'Jaune'
    ELSE 'Vert'
END
from Nation_choice Nc
inner join Nation N on N.type = Nc.id;

select money from Nation where player_id=3 limit 1;

select *, minute(now()) from Nation
where hour(now())-hour(lastattack)>2;

select * from Nation where timediff(curtime(),lastattack)>='02:00:00';

SELECT buyed_weapons, vaccin_implement, number_nuke_attacks, number_health_attacks,number_nuke_took,number_health_took,CONCAT((Nation.population/Nc.population)*100,'%') as 'Pourcentage' from Nation inner join Nation_choice Nc on Nc.id=Nation.type;