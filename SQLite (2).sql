create table dogs (id INTEGER NOT NULL, 
                     name VARCHAR(50) NOT NULL,
                    CONSTRAINT dogs_pk PRIMARY KEY (id))

create table cats (id INTEGER NOT NULL, 
                     name VARCHAR(50) NOT NULL,
                    CONSTRAINT cats_pk PRIMARY KEY (id))
                    

select dogs.name
from dogs
UNION all
select cats.name
FROM cats