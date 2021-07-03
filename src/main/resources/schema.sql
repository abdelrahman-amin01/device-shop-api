drop sequence if exists hibernate_sequence;
     create sequence hibernate_sequence start with 1 increment by 1;
    

create table authorities (
                             id bigint generated by default as identity,
                             authority varchar(255),
                             username varchar(255),
                             primary key (id)
);
    

create table device (
                        id integer generated by default as identity,
                        status varchar(255),
                        temperature DOUBLE,
                        sim_id  varchar(20),
                        primary key (id)
);
    

create table sim_card (
                          id   varchar(20),
                          country varchar(255),
                          operator_code integer,
                          status varchar(255),
                          primary key (id)
);
    

create table users (
                       username varchar(255) not null,
                       enabled boolean not null,
                       password varchar(255),
                       primary key (username)
);
    

alter table device
    add constraint FKa0onp4f85e8v8af0bav43hbrh
        foreign key (sim_id)
            references sim_card;