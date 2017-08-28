Create Table todos (
id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(100000) NULL,
  priority INTEGER NOT NULL DEFAULT (1),
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);
insert into todos (title, details, priority, created_at, completed_at)
values ('Jump over your mom', 'Get your mom and jump her', 1, '2017-08-28 02:41:10-01', '2017-08-28 05:41:10-01');

insert into todos (title, details, priority, created_at)
values ('Basket weaving', 'Get basket things and weave', 3, '2017-08-27 05:40:10-01'),
('Drink', 'Imbibe', 2, '2017-08-27 01:45:11-01'),
('Code', 'Write a JS file', 4, '2017-08-28 12:45:09-01'),
('Fight', 'Punch somebody in the throat', 5, '2017-08-26 2:45:59');

select * from todos where completed_at is null;

select * from todos where priority > 1;

update todos set completed_at = '2017-08-28 02:41:10-01' where id = 3;

delete from todos where completed_at is not null;