# Expert-system
An expert system in prolog specialized in detecting tourist types from LunaCity natives.

## Table of contents
* [General info](#general-info)
* [Setup](#setup)
* [Launch](#launch)
* [Examples](#examples)

# General info
This is a prolog expert system that through forward chaining find out the creature by stated features. Expert also gives all the information about a specific creature by backward chaining. This expert system detects the types of turists from LunaCity natives. All creatures differ from one another by skin color, hight, birthplace, what likes likes and what profession it has. By answering the systems's questions, the expert system will inform the user about found creature.  


# Setup
* download this repo
* buid the docker image `docker build -t image_name .`
* run the docker image `docker run -it image_name`

# Launch
Launch swi-prolog, the shell.pl script and then load the knowledge base expert.pl
```
$ swipl
:| [shell].
:| go.
:> load.
:> 'path_to_file/expert.pl'.
```
This will lauch the expert system. In order to detect a creature, type `consult.` and answer to questions. If you want to know more about specific character, type `iknow.` and type its' name from the proposed list. Type `know.`, if you want to read about your last found creature.

# Examples 
![alt text](https://github.com/cristina-liniuc/Expert-system/blob/main/images/consult.png "consult feature")
![alt text](https://github.com/cristina-liniuc/Expert-system/blob/main/images/known.png "known feature")
![alt text](https://github.com/cristina-liniuc/Expert-system/blob/main/images/iknow.png "iknow feature")

