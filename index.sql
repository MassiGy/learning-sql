

-- in this file we will create our queries

-- INSERT INTO CONTACT_INFO (Phone, Owner_Id) VALUES ("2222-333",1); 
    --  ^ we can not do this since the owner id should be unique, and we set it up that way so as each user will have only one contact info.




-- GET USER CONTACT INFO BY USER_ID;
    -- SELECT * 
    -- FROM CONTACT_INFO
    -- WHERE Owner_Id = 1;


-- GET USER USER DETAILS  BY HIS CONTACT_INFO;
    -- SELECT * 
    -- FROM USER
    -- WHERE Id = (
    --     SELECT Owner_Id 
    --     FROM CONTACT_INFO
    --     WHERE Phone = "2222-333"
    -- );

-- GET ALL THE USER DETAILS WITH THIER CONTACT INFO;
    -- SELECT U.Id, U.Username, U.Email, c.Phone
    -- FROM USER AS U
    -- INNER JOIN CONTACT_INFO AS c
    -- WHERE U.Id = c.Owner_Id;



-- GET  ALL THE POSTS DETAILS THAT A USER MADE BY HIS ID;
    -- SELECT *
    -- FROM POST
    -- WHERE Author = 1;


-- GET ALL THE POSTS DETAILES ALONG SIDE THE AUTHOR DETAILS OF A SPECEFIC AUTHOR;

    -- SELECT u.Username AS Author, u.Email AS Author_email, p.Title, p.Content
    -- FROM USER AS u
    -- INNER JOIN POST AS p
    -- WHERE u.Id = p.Author;


-- GET ALL THE USER DETAIL BY A POST TITLE;

    -- SELECT * 
    -- FROM USER
    -- WHERE Id = (
    --     SELECT Author
    --     FROM POST
    --     WHERE Title = "Making Money Online"
    -- );



-- GET ALL THE USER DETAILS ALONG SIDE HIS PHONE NUMBER BY A POST TITLE;

    -- SELECT U.Id,U.Username, U.Email, C.Phone
    -- FROM USER AS U 
    -- INNER JOIN CONTACT_INFO AS C 
    -- ON U.Id = C.Owner_Id
    -- WHERE U.Id = (
    --     SELECT Author
    --     FROM POST
    --     WHERE Title = "Making Money Online"
    -- );



-- GET ALL THE EVENTS TITLES HOSTED BY A USER GIVEN HIS ID;
    -- SELECT Title
    -- FROM EVENTS
    -- WHERE Id IN (
    --     SELECT event_id
    --     FROM EVENTS_USERS
    --     WHERE hoster_id = 1
    -- );


-- GET ALL THE EVENTS TITLES ALONG SIDE THIER HOSTERS DETAILS GIVEN A HOSTER ID;

    -- SELECT E.Title, H.Username, H.Email
    -- FROM EVENTS AS E,
    --     USER AS H,
    --     EVENTS_USERS
    -- WHERE EVENTS_USERS.hoster_id = H.id AND EVENTS_USERS.event_id = E.id;



-- GET ALL THE EVENTS TITLES ALONG SIDE THIER HOSTERS DETAILS AND THEIR PHONE NUMBER GIVEN A HOSTER ID;

SELECT E.Title,
     H.Username AS "Hoster",
     H.Email AS "Hoster_email",
     C.Phone AS "Hoster_phone"
FROM EVENTS AS E ,
    USER AS H ,
    CONTACT_INFO AS C ,
    EVENTS_USERS
WHERE EVENTS_USERS.event_id = E.Id AND EVENTS_USERS.hoster_id = H.id AND C.Owner_Id = H.id;