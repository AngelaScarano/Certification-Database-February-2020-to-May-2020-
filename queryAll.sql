#QUERY 1. NO HUMAN INPUT NEEDED
SELECT full_name from trainee group by trainee_id

#QUERY 2. THE WAY MY DB IS MADE, THE TITLES ARE NOT UNIQUE, THE ACRONYMS ARE. THE QUERY ASKED FOR THE TITLES THOUGH.
#COULD EASILY BE CHANGED TO GIVE THE UNIQUE ACRONMYS INSTEAD. NO HUMAN INPUT NEEDED
select certificate.title, skill.skill_name
from (
certificate left outer join score_required on certificate.certificate_acronym = score_required.certificate_acronym
left outer join skill on score_required.skill_id = skill.skill_id)

#QUERY 3. REQUIRES USER INPUT FOR WHAT skill_id EQUALS. CHANGE IT TO AN INTEGER VALUE 1-9 TO TEST ON THIS DATABASE
SELECT title from challenge where challenge_acronym in (
SELECT challenge_acronym from challenge_tests where skill_id = 1
)

#QUERY 4. WILL ONLY FIND THE SINGULAR BUSIEST COUNSELOR. NO HUMAN INPUT NEEDED
select sum(duration) as totalMonths, full_name
from (
counseling join teaches using (counseling_id)
join mentor on teaches.teacher_id = mentor.trainee_id
join trainee on mentor.trainee_id = trainee.trainee_id
)
group by mentor_id
order by totalMonths desc
limit 1

#QUERY 5. NO HUMAN INPUT NEEDED
select skill_name from (

select skill_id, skill_name, count(challenge_acronym) as num_uses from (
skill join challenge_tests using (skill_id)
)
group by skill_id
order by skill_id
) num_skill_uses

where num_uses = 1

#QUERY 6. NO HUMAN INPUT NEEDED
select skill_name from (

select skill_id, skill_name, COUNT(mentor_id) as num_mastered from (
trainee join mentor using (trainee_id)
join skill_set using (trainee_id)
right outer join skill using (skill_id)
)
where score = 4 or score is null
group by skill_id
order by skill_id
) countedskills

where num_mastered = 0