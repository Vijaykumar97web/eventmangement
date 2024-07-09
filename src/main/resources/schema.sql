create table sponsor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    industry varchar(255)
);

create table event(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    date varchar(255)
);

create table event_sponsor(
    sponsorId INT,
    eventId INT,
    PRIMARY KEY(sponsorId, eventId),
    FOREIGN KEY(sponsorId) REFERENCES sponsor(id),
    FOREIGN KEY(eventId) REFERENCES event(id)
);