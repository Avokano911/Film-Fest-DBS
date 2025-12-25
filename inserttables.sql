/* Final Assignmetn ISYS2014 */
/* Kanon Fujishima 21873542 */

-- Insert values to Person
INSERT INTO Person VALUES 
('C1234567','Lean','David','');
INSERT INTO Person VALUES
('C1234555','Celia','Johnson','');
INSERT INTO Person VALUES
('C1111946','Lindtberg','Leopold','');
INSERT INTO Person VALUES
('C1111234','Rossi','Lusia','');
INSERT INTO Person VALUES
('C1222946','Wilder','Billy','');
INSERT INTO Person VALUES
('QQP12345','Welles','Orson','');
INSERT INTO Person VALUES
('D1111954','Kinugasa','Teinosuke','');

INSERT INTO Person VALUES
('E2233123','Wyler','William','');
INSERT INTO Person VALUES
('EE223312','Hellman','Lillian','');
INSERT INTO Person VALUES
('EEEE2345','Schafer','Rudolph','');
INSERT INTO Person VALUES
('PPE23455','Ball','Lucille','');


-- Insert values to Actor
INSERT INTO Actor VALUES
('C1234555','Aubrey Blackburn');
INSERT INTO Actor VALUES
('C1111234','');
INSERT INTO Actor VALUES
('PPE23455','Starring');

-- Insert values to Worker
INSERT INTO Worker VALUES
('Director','D1111954');
INSERT INTO Worker  VALUES
('Director','C1222946');
INSERT INTO Worker VALUES
('Director','C1111946');
INSERT INTO Worker VALUES
('Director','C1234567');

INSERT INTO Worker VALUES
('Director','E2233123');
INSERT INTO Worker VALUES
('Writer','EE223312');
INSERT INTO Worker VALUES
('Cinematograpgher','EEEE2345');
INSERT INTO Worker VALUES
('Producer','QQP12345');

-- Insert values to Film
INSERT INTO Film VALUES
('FFFF1946','1946','War,Drama','The Last Chance');
INSERT INTO Film VALUES
('FFF21946','1946','Romantic, Drama','Brief Encounter');
INSERT INTO Film VALUES
('FFF31946','1946','Psycho Drama','The Lost Weekend');
INSERT INTO Film VALUES
('FFF1952','1952','Historical Drama','Otherllo');
INSERT INTO Film VALUES
('FFF1954','1954','Historical Drama','Gate of Hell');

INSERT INTO Film VALUES
('A10923','1941','Mystery, Drama','The Little Foxes');
INSERT INTO Film VALUES
('B19413','1941','War Action','49th Parallel');

-- Insert values to Award
INSERT INTO Award VALUES
('B11','Palme dOr','Most prestigious awards');
INSERT INTO Award VALUES
('C22','Oscar Award','The Academy Awards');

-- Insert values to Festival
INSERT INTO Festival VALUES
('A11','Cannes Film Festival','1946-09-10','1946-10-05','Feance','Cannes','former Casinoof Cannes');
INSERT INTO Festival VALUES
('A22','The Oscars','1927-08-01','1928-07-31','USA','Los Angeles','Hollywood Roosevelt Hotel');

-- Insert values to Participates
INSERT INTO Participates VALUES
('C1234567','FFFF1946','Director');
INSERT INTO Participates VALUES
('C1234555','FFFF1946','Actor');
INSERT INTO Participates VALUES
('C1111946','FFF21946','Director');
INSERT INTO Participates VALUES
('C1111234','FFF21946','Actor');
INSERT INTO Participates VALUES
('C1222946','FFF21946','Director');
INSERT INTO Participates VALUES
('D1111954','FFF1954','Director');

INSERT INTO Participates VALUES
('E2233123','A10923','Director');
INSERT INTO Participates VALUES
('EE223312','A10923','Writer');
INSERT INTO Participates VALUES
('EEEE2345','A10923','Cinematograher');
INSERT INTO Participates VALUES
('QQP12345','B19413','Producer');

-- Insert values to Received
INSERT INTO Received VALUES
('C1234567','FFFF1946','B11','1946','A11');
INSERT INTO Received VALUES
('C1111946','FFF21946','B11','1946','A11');
INSERT INTO Received VALUES
('C1111234','FFF21946','B11','1946','A11');
INSERT INTO Received VALUES
('C1222946','FFF21946','B11','1952','A11');
INSERT INTO Received VALUES
('D1111954','FFF1954','B11','1954','A11');

INSERT INTO Received VALUES
('E2233123','A10923','C22','1941','A22');
INSERT INTO Received VALUES
('EE223312','A10923','C22','1941','A22');


