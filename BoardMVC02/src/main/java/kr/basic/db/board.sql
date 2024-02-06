drop table board;

create table board(
	num int primary key auto_increment,
	user varchar(20) not null,
	date datetime not null,
	title varchar(20) not null,
	content varchar(500) not null
);

insert into board values(null,'작성자1',now(),'제목1','내용1');
insert into board values(null,'작성자2',now(),'제목2','내용2');
insert into board values(null,'작성자3',now(),'제목3','내용3');
insert into board values(null,'작성자4',now(),'제목4','내용4');
insert into board values(null,'작성자5',now(),'제목5','내용5');

select * from board;

insert into board values(null,'작성자',now(),'제목5','내용5');

delete from board;ALTER TABLE board AUTO_INCREMENT = 1;