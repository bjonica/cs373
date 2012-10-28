use downing_test;

drop table if exists movies;

create table movies (
        name        text not null,
        award       text,
        actor       text not null,
        director    text not null,
        year        int  not null)
    engine = innodb;

insert into movies values ("2001: A Space Odyssey", "Oscar", "Gary Lockwood, Keir Dullea", "Stanley Kubrick", 1968);
insert into movies values ("Ben Hur", "Golden Globes, Oscar", "Charlton Heston, Stephen Boyd", "William Wyler", 1959);
insert into movies values ("Big Country, The", "Golden Globes, Oscar", "Charlton Heston, Gregory Peck, Jean Simmons", "William Wyler", 1958);
insert into movies values ("Butch Cassidy and the Sundance Kid", "Golden Globes, Oscar", "Katharine Ross, Paul Newman, Robert Redford", "George Roy Hill", 1969);
insert into movies values ("Dances with Wolves", "Golden Globes, Oscar", "Graham Greene, Kevin Kostner, Mary McDonnell", "Kevin Kostner", 1990);
insert into movies values ("For Love of the Game", null, "John C. Reilly, Kelly Preston, Kevin Kostner", "Sam Raimi", 1999);
insert into movies values ("Giant", "Oscar", "Elizabeth Taylor, James Dean, Rock Hudson", "George Stevens", 1956);
insert into movies values ("Godfather, The", "Golden Globes, Oscar", "Al Pacino, James Caan, Marlon Brando, Robert Duvall", "Francis Ford Coppola", 1972);
insert into movies values ("Goodfellas", "Oscar", "Joe Pesci, Ray Liotta, Robert De Niro", "Martin Scorsese", 1990);
insert into movies values ("Graduate, The", "Golden Globes, Oscar", "Anne Bancroft, Dustin Hoffman, Katharine Ross", "Mike Nichols", 1967);
insert into movies values ("Natural, The", null, "Glenn Close, Kim Basinger, Robert Redford", "Barry Levinson", 1984);
insert into movies values ("Philadelphia Story, The", "Oscar", "Cary Grant, James Stewart, Katherine Hepburn", "George Cukor", 1940);
insert into movies values ("Red River", null, "John Wayne, Montgomery Clift", "Howard Hawks", 1948);
insert into movies values ("Shane", "Oscar", "Alan Ladd, Jean Arthur, Van Heflin", "George Stevens", 1953);
insert into movies values ("Spartacus", "Golden Globes, Oscar", "Jean Simmons, Kirk Douglas, Laurence Olivier", "Stanley Kubrick", 1960);
insert into movies values ("Star Wars", "Golden Globes, Oscar", "Carrie Fisher, Harrison Ford, Mark Hamill", "George Lucas", 1977);
insert into movies values ("Titanic", "Golden Globes, Oscar", "Kate Winslet, Leonardo DiCaprio", "James Cameron", 1997);

select * from movies;

exit
