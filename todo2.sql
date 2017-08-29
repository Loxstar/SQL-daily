Create Table todos (
id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(100000) NULL,
  priority INTEGER NOT NULL DEFAULT (1),
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

insert into todos (title, details, priority, created_at, completed_at)
values ('Basket weaving', 'Get basket things and weave', 3, '2017-08-27 05:40:10-01', '2017-08-27 08:40:10-01'),
('Drink', 'Imbibe', 1, '2017-08-27 01:45:11-01'),
('Code', 'Write a JS file', 4, '2017-08-28 12:45:09-01'),
('Fight', 'Punch somebody in the throat', 5, '2017-08-26 2:45:59')
('Do Karate In Garage', 'Garage Karate', 6, '2017-08-27 05:40:10-01'),
('Eat', 'Foods', 7, '2017-08-27 01:45:11-01','2017-08-27 05:40:10-01'),
('Smell', 'Hands', 8, '2017-08-28 12:45:09-01'),
('Laugh', 'Haha', 5, '2017-08-26 2:45:59'),
('Stand', 'Still', 3, '2017-08-27 05:40:10-01','2017-08-27 05:40:10-01'),
('This', 'That', 2, '2017-08-27 01:45:11-01'),
('What', 'Yeah', 7, '2017-08-28 12:45:09-01'),
('Beans', 'Franks', 6, '2017-08-26 2:45:59'),
('Ham', 'Sammich', 3, '2017-08-27 05:40:10-01'),
('When', 'Then', 2, '2017-08-27 01:45:11-01'),
('Nuts', 'Bolts', 11, '2017-08-28 12:45:09-01'),
('Bees', 'Ahhh', 10, '2017-08-26 2:45:59'),
('Foo', 'Bar', 3, '2017-08-27 05:40:10-01'),
('Taste', 'Cookies', 2, '2017-08-27 01:45:11-01'),
('Jokes', 'Comedy', 5, '2017-08-28 12:45:09-01'),
('Slap', 'Faces', 5, '2017-08-26 2:45:59');

select count(priority) 
from todos
where priority = 3 and where completed_at is null;

select * from todos
where completed_at is null
order by priority asc;

select * from todos
where created_at  <= '2017-08-29 2:45:59'
order by priority asc;

select * from todos
where priority <= 1 and created_at is not null
order by created_at asc
limit 1;