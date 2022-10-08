-- this is our junction table;

CREATE TABLE IF NOT EXISTS EVENTS_USERS(
  event_id INT NOT NULL REFERENCES EVENTS(Id),
  hoster_id INT NOT NULL REFERENCES USER(Id),
  CONSTRAINT record_id PRIMARY KEY CLUSTERED (event_id,hoster_id)
);



INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (1,1);
INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (1,2);
INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (2,1);
INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (2,2);
INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (2,3);
INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (3,3);
INSERT INTO EVENTS_USERS (event_id, hoster_id) VALUES (3,1);
  