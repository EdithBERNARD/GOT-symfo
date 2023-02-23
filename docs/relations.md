```  
bin/console ma:en

 Class name of the entity to create or update (e.g. BraveElephant):
 > Character

 Your entity already exists! So let's add some new fields!

 New property name (press <return> to stop adding fields):
 > mother

 Field type (enter ? to see all types) [string]:
 > relation

 What class should this entity be related to?:
 > Character

What type of relationship is this?
 ------------ -------------------------------------------------------------------------- 
  Type         Description                                                               
 ------------ -------------------------------------------------------------------------- 
  ManyToOne    Each Character relates to (has) one Character.                            
               Each Character can relate to (can have) many Character objects            
                                                                                         
  OneToMany    Each Character can relate to (can have) many Character objects.           
               Each Character relates to (has) one Character                             
                                                                                         
  ManyToMany   Each Character can relate to (can have) many Character objects.           
               Each Character can also relate to (can also have) many Character objects  
                                                                                         
  OneToOne     Each Character relates to (has) exactly one Character.                    
               Each Character also relates to (has) exactly one Character.               
 ------------ -------------------------------------------------------------------------- 

 Relation type? [ManyToOne, OneToMany, ManyToMany, OneToOne]:
 > ManyToOne

 Is the Character.mother property allowed to be null (nullable)? (yes/no) [yes]:
 > 

 Do you want to add a new property to Character so that you can access/update Character objects from it - e.g. $character->getCharacters()? (yes/no) [yes]:
 > 

 A new property will also be added to the Character class so that you can access the related Character objects from it.

 New field name inside Character [characters]:
 > motherChilds

 updated: src/Entity/Character.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > 


           
  Success! 
           

 Next: When you're ready, create a migration with php bin/console make:migration
 ```

 ```
 bin/console ma:en

 Class name of the entity to create or update (e.g. VictoriousPuppy):
 > Character

 Your entity already exists! So let's add some new fields!

 New property name (press <return> to stop adding fields):
 > father

 Field type (enter ? to see all types) [string]:
 > relation

 What class should this entity be related to?:
 > Character

What type of relationship is this?
 ------------ -------------------------------------------------------------------------- 
  Type         Description                                                               
 ------------ -------------------------------------------------------------------------- 
  ManyToOne    Each Character relates to (has) one Character.                            
               Each Character can relate to (can have) many Character objects            
                                                                                         
  OneToMany    Each Character can relate to (can have) many Character objects.           
               Each Character relates to (has) one Character                             
                                                                                         
  ManyToMany   Each Character can relate to (can have) many Character objects.           
               Each Character can also relate to (can also have) many Character objects  
                                                                                         
  OneToOne     Each Character relates to (has) exactly one Character.                    
               Each Character also relates to (has) exactly one Character.               
 ------------ -------------------------------------------------------------------------- 

 Relation type? [ManyToOne, OneToMany, ManyToMany, OneToOne]:
 > ManyToOne

 Is the Character.father property allowed to be null (nullable)? (yes/no) [yes]:
 > 

 Do you want to add a new property to Character so that you can access/update Character objects from it - e.g. $character->getCharacters()? (yes/no) [yes]:
 > y

 A new property will also be added to the Character class so that you can access the related Character objects from it.

 New field name inside Character [characters]:
 > fatherChilds

 updated: src/Entity/Character.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > 


           
  Success! 
           

 Next: When you're ready, create a migration with php bin/console make:migration
 ```
 ```
bin/console ma:en

 Class name of the entity to create or update (e.g. BravePizza):
 > Character

 Your entity already exists! So let's add some new fields!

 New property name (press <return> to stop adding fields):
 > houses

 Field type (enter ? to see all types) [string]:
 > relation

 What class should this entity be related to?:
 > House

What type of relationship is this?
 ------------ ---------------------------------------------------------------------- 
  Type         Description                                                           
 ------------ ---------------------------------------------------------------------- 
  ManyToOne    Each Character relates to (has) one House.                            
               Each House can relate to (can have) many Character objects            
                                                                                     
  OneToMany    Each Character can relate to (can have) many House objects.           
               Each House relates to (has) one Character                             
                                                                                     
  ManyToMany   Each Character can relate to (can have) many House objects.           
               Each House can also relate to (can also have) many Character objects  
                                                                                     
  OneToOne     Each Character relates to (has) exactly one House.                    
               Each House also relates to (has) exactly one Character.               
 ------------ ---------------------------------------------------------------------- 

 Relation type? [ManyToOne, OneToMany, ManyToMany, OneToOne]:
 > ManyToMany

 Do you want to add a new property to House so that you can access/update Character objects from it - e.g. $house->getCharacters()? (yes/no) [yes]:
 > Y

 A new property will also be added to the House class so that you can access the related Character objects from it.

 New field name inside House [characters]:
 > Y

 updated: src/Entity/Character.php
 updated: src/Entity/House.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > 


           
  Success! 
           

 Next: When you're ready, create a migration with php bin/console make:migration
 ```