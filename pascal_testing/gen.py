from random import randint

name_list = ['Amelia', 	'Margaret', 	'Emma', 	'Mary',
 	'Olivia', 	'Samantha', 	'Olivia', 	'Patricia',
	'Isla', 	'Bethany' ,	'Sophia' ,	'Jennifer']


with open('answer.txt','w') as f :
    for name in name_list:
        student_id = 'S20'
        for _ in range(3):
            student_id += str(randint(0,9))
        student_id += str(randint(0,2))
        elective = str(randint(0,9))
        f.write('{}#{}#{}\n'.format(name,student_id,elective))