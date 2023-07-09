```bash
bin/console make:entity

 Class name of the entity to create or update (e.g. FierceElephant):
 > Houses

 created: src/Entity/Houses.php
 created: src/Repository/HousesRepository.php
 
 Entity generated! Now let's add some fields!
 You can always add more fields later manually or by re-running this command.

 New property name (press <return> to stop adding fields):
 > name

 Field type (enter ? to see all types) [string]:
 > string

 Field length [255]:
 > 255

 Can this field be null in the database (nullable) (yes/no) [no]:
 > n    

 updated: src/Entity/Houses.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > image

 Field type (enter ? to see all types) [string]:
 > string

 Field length [255]:
 > 255

 Can this field be null in the database (nullable) (yes/no) [no]:
 > n

 updated: src/Entity/Houses.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > colour

 Field type (enter ? to see all types) [string]:
 > string

 Field length [255]:
 > 255

 Can this field be null in the database (nullable) (yes/no) [no]:
 > no

 updated: src/Entity/Houses.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > 


           
  Success! 
           

 Next: When you're ready, create a migration with php bin/console make:migration
 ```