INSERT INTO job (name) 
VALUES 
('Developpeur full-stack')
,('UX/UI Designer')
,('DevOps')
,('Product Manager');

INSERT INTO expertise (name) 
VALUES 
('Languages')
,('Framework')
,('Databases') --3
,('Gestion des versions') --4
-- UX/UI Designer + logiciel pour PO
,('Logiciels') --5
,('Graphisme') --6
-- DevOps
,('Cloud') --7
,('Containerization') --8
-- product manager
,('Methodologies') --9
,('Project Management') --10
,('Autres'); --11

INSERT INTO job_expertise(id_job,id_expertise)
VALUES
(1,1),(1,2),(1,3),(1,4),(1,5)
,(2,5),(2,6),(2,11)
,(3,1),(3,2),(3,3),(3,4),(3,5),(3,7),(3,8),(3,1)
,(4,1),(4,5),(4,9),(4,10),(4,11);

INSERT INTO expertise_category (name,id_expertise)
VALUES 
('Java',1)
,('Javascript',1)
,('C#',1)
,('Php',1)
,('VueJs',2)
,('React',2)
,('AngularJs',2)
,('Laravel',2)
,('Symfony',2)
,('Spring',2)
,('Hibernate',2)
,('.NET',2)
,('Sql',3)
,('PostgreSql',3)
,('Git', 4)
,('GitHub',4)
,('GitKraken', 4)
,('Visual studio',5)
,('Intellij idea', 5)
,('Visual studio code',5)
,('PhpStorm', 5)
,('Adobe Photoshop',6)
,('Adobe Illustrator', 6)
,('Figma', 6)
,('Cloud Computing', 7)
,('Aws', 7)
,('GoogleCloud',7)
,('Docker', 8)
,('Kubernetes', 8)
,('Scrum',9)
,('Cycle en V',9)
,('Agile',9)
,('Atlassian JIRA',10)
,('Trello',10)
,('WebDesing',11)
,('Charte graphique',11)
,('Management équipe',11);

INSERT INTO location(name) VALUES('Lille'),('Paris'),('Marseille'),('Lyon');

INSERT INTO loggin (type_account,email,password) 
VALUES 
(1,'marina.vandenbosch@gmail.com','foreach')
,(1,'enzo.averlant@gmail.com','foreach')
,(2,'adrien.bogaz@gmail.com','foreach');


INSERT INTO account (firstname,lastname,picture_profil,about,siren,rate,price,language,id_loggin,id_job,id_location)
VALUES
(
  'Enzo'
  ,'Averlant'
  ,'https://www.notrenature.be/media/cache/strip/uploads/media/5f6aff2898859/raton-laveur-tete.jpg'
  ,'A propos de moi Enzo le raton'
  ,'123 568 941 00056'
  ,0
  ,250
  ,'Français'
  ,2
  ,1
  ,2
)
,
(
  'Marina'
  ,'Vandenbosch'
  ,'https://img.20mn.fr/wGWaonhlQRm4KV4bSK_AECk/830x532_alex-clover-sam-heroines-totally-spies.jpg'
  ,'A propos de moi Marina Spies'
  ,'123 568 941 00057'
  ,0
  ,249
  ,'Français'
  ,1
  ,3
  ,1
);
INSERT INTO account (firstname,lastname,picture_profil,language,id_loggin,id_location)
VALUES
(
  'Adrien'
  ,'Bogaz'
  ,'https://www.sofoot.com/IMG/img_580_380_center_articles-435052.jpg'
  ,'Français'
  ,3
  ,2
);



INSERT INTO favorite_job(id_job,id_account) VALUES (1,1),(2,1),(3,1),(4,1);

INSERT INTO experience(compagny,start_date,end_date,occupation,location,description,id_account)
VALUES
(
  'Foreach Academy'
  ,'2021-09-01'
  ,'2023-06-30'
  ,'Concepteur d''application'
  ,'Marcq en Baroeul'
  ,'Création d''une application de mise en relation entre client et nouveau freelance de l''IT'
  ,2
)
,
(
  'Foreach Academy'
  ,'2021-09-01'
  ,'2023-06-30'
  ,'Concepteur d''application'
  ,'Marcq en Baroeul'
  ,'Création d''une application de mise en relation entre client et nouveau freelance de l''IT'
  ,1
),
(
  'Euro-Information Developpement'
  ,'2021-10-01'
  ,'2023-06-30'
  ,'Apprentie Analyste Developpeuse'
  ,'Verlinghem'
  ,'Alternance au sein de l’équipe technologie automate bancaire et intégration dans l’équipe de développement projet cloud.L’objectif est de repenser les architectures monolithiques en micro service et de passer d’une source de données Mainframe vers un cloud privé.'
  ,1
);

INSERT INTO graduation(title,school,location,description,start_date,end_date,id_account)
VALUES
(
  'Titre professionnel Concepteur d''application'
  ,'Foreach Academy'
  ,'Marcq en Baroeul'
  ,'Nomenclature du niveau de qualification : Niveau 6, formation réalisée en alternance'
  ,'2021-09-01'
  ,'2023-06-30'
  ,1
),
(
  'Titre professionnel Concepteur d''application'
  ,'Foreach Academy'
  ,'Marcq en Baroeul'
  ,'Nomenclature du niveau de qualification : Niveau 6, formation réalisée en alternance'
  ,'2021-09-01'
  ,'2023-06-30'
  ,2
);

INSERT INTO status(name)
VALUES
('Envoyé'),('Accepté'),('En cours'),('Terminé')

INSERT INTO estimate(job_title,mission,from_when,duration,home_office,price,id_status,id_freelance,id_customer) 
VALUES
(
  'Développeur full-stack'
  ,'Création d''une application pour la gestion des marchés aux puces d''une mairie'
  ,'2022-03-13'
  ,'CDD'
  ,'Oui'
  ,300
  ,'Envoyé'
  ,2
  ,1
),
(
  'DevOps'
  ,'Containerisation d''une application pour la gestion des marchés aux puces d''une mairie'
  ,'2022-03-13'
  ,'CDD'
  ,'Oui'
  ,300
  ,'Envoyé'
  ,1
  ,1
);

