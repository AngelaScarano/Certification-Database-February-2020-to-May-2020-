insert into Skill (skill_id, skill_name)
values (1, 'Typing');

insert into Skill (skill_id, skill_name)
values (2, 'Calculus');

insert into Skill (skill_id, skill_name)
values (3, 'Biology');

insert into Skill (skill_id, skill_name)
values (4, 'Python');

insert into Skill (skill_id, skill_name)
values (5, 'C++');

insert into Skill (skill_id, skill_name)
values (6, 'History');

insert into Skill (skill_id, skill_name)
values (7, 'Cooking');

insert into Skill (skill_id, skill_name)
values (8, 'Kayaking');

insert into Skill (skill_id, skill_name)
values (9, 'HorseBack Riding');

insert into challenge (challenge_acronym, title)
values
	('TYP', 'Basic Typing'),
    ('HBR', 'Horseback Riding'),
    ('BIO', 'Biology'),
    ('ODH', 'Outdoor Hobbies'),
    ('PPG', 'Python Programming'),
    ('ADVC', 'Advanced Cooking'),
    ('HPG', 'Historical Programming');

insert into challenge_tests (challenge_acronym, skill_id)
values
	('TYP', 1),
    ('HBR', 9),
    ('BIO', 3),
    ('ODH', 9),
    ('ODH', 8),
    ('ODH', 3),
    ('PPG', 1),
    ('PPG', 4),
    ('ADVC', 7),
    ('ADVC', 3),
    ('HPG', 1),
    ('HPG', 5),
    ('HPG', 6);
    
insert into certificate (certificate_acronym, title)
values 
	('TYP1', 'Basic Typing Speed'),
    ('HBR1', 'Basic Horseback Riding'),
    ('BIO1', 'Basic Biology'),
    ('HBR2', 'Intermediate Horseback Riding'),
    ('ODHWR', 'Outdoor Hobbies - Well Rounded'),
	('PPG4', 'Intermediate Python Programming'),
    ('ADVC', 'Advanced Cooking');
    
insert into score_required (certificate_acronym, skill_id, min_score)
values
	('TYP1', 1, 1),
    ('HBR1', 9, 1),
    ('HBR2', 9, 2),
    ('BIO1', 3, 1),
    ('ODHWR', 8, 2),
	('ODHWR', 9, 3),
	('ODHWR', 3, 2),
    ('PPG4', 1, 4),
    ('PPG4', 4, 4),
	('ADVC', 7, 3),
    ('ADVC', 3, 1);

insert into prereq (certificate_acronym, prereq_acronym)
values
	('PPG4', 'TYP1'),
    ('HBR2', 'HBR1'),
    ('ODHWR', 'BIO1'),
    ('ODHWR', 'HBR2');
    
insert into Trainee (trainee_id, full_name, street_number, street_name, city, state, zipcode)
values
	(1000, 'Aliyah Stargate', 104, 'Juniper Court', 'Glen Burnie', 'MD', 21060),
    (1001, 'Ayla Timberwolf', 108, 'Cherry Lane', 'Glen Burnie', 'MD', 21060),
	(1002, 'Samara Young', 117, 'Aspen Drive', 'Glen Burnie', 'MD', 21060),
    (1003, 'Arya Dawnbringer', 597, 'E Ordnance Rd', 'Glen Burnie', 'MD', 21060),
    (1004, 'Shakasta Stormwind', 101, 'Woodland Trails', 'Glen Burnie', 'MD', 21060),
    (1005, 'Nott The Brave', 843, 'Goblin Gate', 'Glen Burnie', 'MD', 21060),
    (1006, 'Halliora Nightshade', 484, 'GlenOak Drive', 'Glen Burnie', 'MD', 21060),
    (1007, 'Edelgard Von Hresvelg', 555, 'Fiery Lane', 'Empire', 'MD', 21060),
    (1008, 'Ashe Ubert', 424, 'Gaspard Way', 'Fhaergus', 'MD', 21060),
    (1009, 'Charles Whitestorm', 104, 'Juniper Drive', 'Glen Burnie', 'MD', 21060),
    (1010, 'Tom Firestar', 373, 'Warrior Court', 'Glen Burnie', 'MD', 21060),
    (1011, 'Shyra Bluestar', 686, 'Warrior Court', 'Glen Burnie', 'MD', 21060);
    
insert into Trainee_Email (trainee_id, email)
values
	(1000, 'AliyahStargate@gmail.com'),
    (1001, 'AylaTimberwolf@gmail.com'),
	(1002, 'SamaraYoung@gmail.com'),
    (1003, 'AryaDawnbringer@gmail.com'),
    (1004, 'ShakastaStormwind@gmail.com'),
    (1005, 'NottTheBrave@gmail.com'),
    (1006, 'HallioraNightshade@gmail.com'),
    (1007, 'EdelgardVonHresvelg@gmail.com'), 
    (1008, 'AsheUbert@gmail.com'),
    (1009, 'CharlesWhitestorm@gmail.com'),
    (1010, 'TomFirestar@gmail.com'),
    (1011, 'ShyraBluestar@gmail.com');
    
insert into Trainee_Phone(trainee_id, phone_number)
values
	(1000, '410-306-1315'),
    (1001, '443-838-8552'),
	(1002, '228-487-3777'),
    (1003, '301-910-5382'),
    (1004, '303-909-1010'),
    (1005, '303-387-3236'),
    (1006, '443-474-3848'),
    (1007, '743-432-3456'),
    (1008, '743-287-3231'),
    (1009, '513-828-3515'),
    (1010, '513-987-9426'),
    (1011, '513-253-4963');

--------------------------------------------------
insert into Mentor (trainee_id, mentor_id)
values
	(1000, '-1'),
    (1004, '-2'),
    (1011, '-3');
    
insert into Skill_Set (trainee_id, skill_id, score)
values
	(1000, 3, 4),
    (1000, 7, 4),
    (1000, 8, 4),
    (1000, 9, 4),
    (1001, 3, 4),
    (1001, 7, 4),
    (1001, 8, 4),
    (1001, 9, 4),
    (1004, 1, 4),
    (1004, 4, 4),
    (1004, 6, 4),
    (1007, 9, 4),
    (1009, 1, 3),
    (1009, 9, 4),
    (1011, 3, 4),
    (1011, 7, 4),
    (1011, 8, 4),
    (1011, 9, 4);

insert into Challenge_Evaluators (challenge_acronym, evaluator_id)
values
	('ODH', 1001),
	('ODH', 1011),
    ('ADVC', 1001),
    ('ADVC', 1011),
    ('HBR', 1001),
    ('TYP', 1004),
    ('PPG, 1004')
    