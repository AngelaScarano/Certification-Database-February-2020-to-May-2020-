CREATE TABLE Trainee (
    trainee_id int NOT NULL,
    full_name varchar(255) NOT NULL,
    street_number int NOT NULL,
    street_name varchar(255) NOT NULL,
    city varchar(255) NOT NULL,
    state varchar(255) NOT NULL,
    zipcode int NOT NULL,
    
    PRIMARY KEY (trainee_id)
    );

CREATE TABLE Trainee_Phone (
	trainee_id int NOT NULL,
    phone_number varchar (255) NOT NULL,
    
    PRIMARY KEY (trainee_id, phone_number),
    FOREIGN KEY (trainee_id) REFERENCES trainee (trainee_id)
    );
    
CREATE TABLE Trainee_Email (
	trainee_id int NOT NULL,
    email varchar(255) NOT NULL,
    
    PRIMARY KEY (trainee_id, email),
    FOREIGN KEY (trainee_id) REFERENCES trainee (trainee_id)
    );
    
CREATE TABLE Mentor (
    trainee_id int NOT NULL,
    mentor_id int NOT NULL,
    
    PRIMARY KEY (trainee_id),
    Foreign key (trainee_id) references trainee (trainee_id)
    );
    
create table Skill (
	skill_id int NOT NULL,
    skill_name varchar(255) not null,
    
    primary key (skill_id)
    );

create table Skill_Set (
	trainee_id int NOT NULL,
	skill_id int NOT NULL,
    score int NOT NULL,
    
    primary key (trainee_id, skill_id, score),
    foreign key (trainee_id) references trainee (trainee_id),
    foreign key (skill_id) references Skill (skill_id)
    );
    
create table Certificate (
	certificate_acronym varchar(255) not null,
    title varchar (255) not null,
    
    primary key (certificate_acronym)
    );
    
create table Challenge (
	challenge_acronym varchar(255) not null,
    title varchar (255) not null,
    
    primary key (challenge_acronym)
    );
    
create table Challenge_Tests (
	challenge_acronym varchar (255) not null,
    skill_id int not null,
    
    primary key (challenge_acronym, skill_id),
    foreign key (challenge_acronym) references Challenge (challenge_acronym),
    foreign key (skill_id) references Skill (skill_id)
    );
    
create table Score_Required (
	certificate_acronym varchar (255) not null,
    skill_id int not null,
    min_score int not null,
    
    primary key (certificate_acronym, skill_id, min_score),
    foreign key (certificate_acronym) references Certificate (certificate_acronym),
    foreign key (skill_id) references Skill (skill_id)
    );
    
create table Obtained (
	trainee_id int not null,
    certificate_acronym varchar (255) not null,
    
    primary key (trainee_id, certificate_acronym),
    foreign key (trainee_id) references Trainee (trainee_id),
    foreign key (certificate_acronym) references Certificate (certificate_acronym)
    );
    
create table Scored_Challenge (
	challenge_acronym varchar (255) not null,
    date_given varchar (255) not null,
    trainee_id int not null,
    teacher_id_1 int not null,
    graded_score_1 int not null,
	teacher_id_2 int not null,
    graded_score_2 int not null,
	teacher_id_3 int not null,
    graded_score_3 int not null,
    
    primary key (challenge_acronym, date_given, trainee_id),
    foreign key (challenge_acronym) references Challenge (challenge_acronym),
	foreign key (trainee_id) references Trainee (trainee_id),
    foreign key (teacher_id_1) references Mentor (trainee_id),
	foreign key (teacher_id_1) references Mentor (trainee_id),
	foreign key (teacher_id_1) references Mentor (trainee_id)
    );
    
create table Prereq (
	certificate_acronym varchar (255) not null,
    prereq_acronym varchar (255) not null,
    
    primary key (certificate_acronym, prereq_acronym),
    foreign key (certificate_acronym) references Certificate (certificate_acronym),
    foreign key (prereq_acronym) references Certificate (certificate_acronym)
    );
    
create table Counseling (
	counseling_id int not null,
    skill_id int not null,
    start_date varchar (255) not null,
    duration int not null,
    
    primary key (counseling_id),
    foreign key (skill_id) references Skill (skill_id)
    );
    
create table Teaches (
	teacher_id int not null,
    counseling_id int not null,
    
    primary key (counseling_id),
    foreign key (teacher_id) references Mentor (trainee_id),
    foreign key (counseling_id) references Counseling (counseling_id)
    );
    
create table Takes (
	trainee_id int not null,
    counseling_id int not null,
    
    primary key (counseling_id),
    foreign key (trainee_id) references Trainee (trainee_id),
    foreign key (counseling_id) references Counseling (counseling_id)
    );
    
create table Challenge_Evaluators (
	challenge_acronym varchar (255) not null,
    evaluator_id int not null,
    
    primary key (challenge_acronym, evaluator_id),
    foreign key (challenge_acronym) references Challenge (challenge_acronym),
	foreign key (evaluator_id) references Trainee (trainee_id)
    );