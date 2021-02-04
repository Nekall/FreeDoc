FreeDoc - Réserve ton docteur

App d'entrainement avec les BDD, le but est de faire une app qui met en relation des docteurs et des patients. 
J'ai créé un model Doctor, un model Patient et un model Appointment, ces trois là sont mis en relation de façon 
à ce que un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment, un 
appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment et un doctor peut 
avoir plusieurs patient, au travers des appointments, et vice versa.


J'ai créé un seeds.rb qui crée 8 docteurs, 35 patients et génère 50 rendez-vous. 

J'ai ajouté un model City qui fait en sorte que chaque docteur, patient, et rendez-vous est lié à une city. 
Une city peut avoir plusieurs docteurs, patients, et rendez-vous.

______________________________________________________________________________________________________________________________

    un model Doctor, qui a comme attributs :
        un first_name, qui est un string
        un last_name, qui est un string
        un specialty, qui est un string
        un zip_code, qui est un string
    un model Patient, qui a comme attributs :
        un first_name, qui est un string
        un last_name, qui est un string
    un model Appointment, qui a comme attributs :
        un date, qui est un datetime

Une fois les attributs fixés, on s'attaque aux relations :

    Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
    Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
    Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.

Je t'invite à créer les models et les migrations puis à les passer.
2.1.3. Tester

Pour tester, tu peux aller dans la console, créer des doctor, patient, et appointment à la volée, puis les lier.
⚠️ ALERTE ERREUR COMMUNE

Comme les doctor et les patient sont liés en N-N, rappelle-toi qu'un patients_list = doctor_instance.patients va te retourner un array d'objets de class Patient.
Si tu fais patients_list.last_name dessus, ça va te renverra une erreur car un array n'a pas de last_name.
Par contre tu peux faire dessus un patients_list.first.last_name ou patients_list[0].last_name 😉.

Une fois que c'est bon, n'oublie pas le seeds.rb qui va bien.
2.1.4. Petit coup de boost

Ta startup de docteurs marche à merveille, tellement que tu aimerais ajouter plusieurs tables :

    city. Chaque docteur, patient, et rendez-vous est lié à une city. Une city peut avoir plusieurs docteurs, patients, et rendez-vous.
    tu voudrais virer la ligne specialty de ta table doctor et la remplacer par un model à part entière : tu vas donc créer un model specialty. Un docteur aurait plusieurs specialty (DEAL_WITH_IT), et une specialty pourrait concerner plusieurs doctor.

Comme d'hab tu vas tester et tu compléteras le seeds.rb pour prendre en compte ces changements.

Et voilà pour FreeDoc ! Doctolib est en PLS.
