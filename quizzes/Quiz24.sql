use downing_test;

# CS373: Quiz #24 (5 pts)

# ------------------------------------------------------------------------
# 1. Redesign the following SQL schema to avoid duplication.
#    (4 pts)
#
# create table borrowers (
#         borrower_id   int  not null auto_increment,
#         borrower_name text not null,
#         primary key   (borrower_id))
#     engine = innodb;
#
# create table books (
#         book_id     int  not null auto_increment,
#         book_name   text not null,
#         primary key (book_id))
#     engine = innodb;
#
# create table borrowers_books (
#         borrower_id int not null,
#         book_id     int not null,
#         foreign key (borrower_id) references borrowers (borrower_id),
#         foreign key (book_id)     references books     (book_id))
#     engine = innodb;
#
# insert into borrowers values (null, "John");
# insert into borrowers values (null, "Jane");
#
# insert into books values (null, "AnnaKarenina");
# insert into books values (null, "MobyDick");
# insert into books values (null, "Hamlet");
# insert into books values (null, "PrideAndPrejudice");
# insert into books values (null, "JaneEyre");
#
# insert into borrowers_books values (1, 1);
# insert into borrowers_books values (1, 2);
# insert into borrowers_books values (1, 3);
# insert into borrowers_books values (2, 4);
# insert into borrowers_books values (2, 3);
# insert into borrowers_books values (2, 5);

create table library (
        borrower text not null,
        books    text not null)
    engine = innodb;

insert into library values ("John", "AnnaKarenina, MobyDick, Hamlet");
insert into library values ("Jane", "PrideAndPrejudice, Hamlet, JaneEyre");
