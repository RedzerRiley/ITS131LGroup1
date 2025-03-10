CREATE PROCEDURE add_new_customer ( 
    p_CUSTOMER_ID IN VARCHAR, 
    p_CUSTOMER_STATUS IN VARCHAR, 
    p_CUSTOMER_CONTACT IN INT, 
    p_CUSTOMER_ADDRESS IN VARCHAR, 
    p_CUSTOMER_EMAIL IN VARCHAR 
) AS 
BEGIN 
    INSERT INTO CUSTOMER ( 
        CUSTOMER_ID,       
        CUSTOMER_STATUS,
        CUSTOMER_CONTACT,
        CUSTOMER_EMAIL,
        CUSTOMER_ADDRESS
    ) 
    VALUES ( 
    p_CUSTOMER_ID, 
    p_CUSTOMER_STATUS, 
    p_CUSTOMER_CONTACT, 
    p_CUSTOMER_ADDRESS, 
    p_CUSTOMER_EMAIL 
    ); 
 
    COMMIT; 
 
    DBMS_OUTPUT.PUT_LINE('New customer has been added successfully.'); 
END; 

/

