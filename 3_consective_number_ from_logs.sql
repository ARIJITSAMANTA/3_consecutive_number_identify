#identify numbers that appear at least three times consecutively in a table. 
create schema Indium_comp
use Indium_comp

CREATE TABLE logs (
    id INT PRIMARY KEY,
    num INT
);
INSERT INTO logs (id, num) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2);
select distinct l1.num as consecutive_num from logs l1,logs l2,logs l3 where l1.id=l2.id-1 and l2.id=l3.id-1 
and l1.num=l2.num and l2.num=l3.num