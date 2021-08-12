
--------> Part_2 Supply characteristics and earthing arrangement API.

CREATE TABLE supply_characteristics_table (

            SUPPLY_CHARACTERISTICS_ID INT AUTO_INCREMENT,
			SITE_ID INT,
			USER_NAME VARCHAR(255),
            MAIN_SYSTEM_EARTING VARCHAR(255),
            SYSTEM_EARTH_BNOTE VARCHAR(255),
            LIVE_CONDUCTOR_TYPE VARCHAR(255),
            LIVE_CONDUCTOR_AC VARCHAR(255),
            LIVE_CONDUCTOR_DC VARCHAR(255),
            LIVE_CONDUCTOR_BNOTE VARCHAR(255),
            MAIN_NOMINAL_VOLTAGE VARCHAR(255),
            MAIN_NOMINAL_FREQUENCY VARCHAR(255),
            MAIN_FAULT_CURRENT VARCHAR(255),
            MAIN_LOOP_IMPEDANCE VARCHAR(255),
            MAIN_CURRENT_PROTECTIVE_DEVICE VARCHAR(255),
            MAIN_RATED_CURRENT VARCHAR(255),
            MAIN_CURRENT_DISCONNECTION VARCHAR(255),
            AL_AVILABLE_SUPPLY VARCHAR(255),
            AL_NUM_SUPPLY VARCHAR(255),
            MAXIMUM_DEMAND VARCHAR(255),
            MAXIMUM_LOAD VARCHAR(255),
            MEANS_EARTHING VARCHAR(255),
            ELECTORDE_TYPE VARCHAR(255),
            ELECTORDE_MATERIAL VARCHAR(255),
            NUM_LOCATION INT,
            CONDUCTOR_SIZE VARCHAR(255),
            CONDUCTOR_MATERIAL VARCHAR(255),
            CONDUCTOR_VERIFY VARCHAR(255),
            BONDING_CONDUCTOR_SIZE VARCHAR(255),
            BONDING_CONDUCTOR_MATERIAL VARCHAR(255),
            BONDING_CONDUCTOR_VERIFY VARCHAR(255),
            BONDING_JOINTS_TYPE VARCHAR(255),
            BONDING_NO_OF_JOINTS INT,
            EARTHING_CONDUCTOR_SIZE VARCHAR(255),
            EARTHING_CONDUCTOR_MATERIAL VARCHAR(255),
            EARTHING_CONDUCTOR_VERIFY VARCHAR(255),
            EARTHING_JOINTS_TYPE VARCHAR(255),
            EARTHING_NO_OF_JOINTS INT,
            CREATED_DATE datetime,
            CONSTRAINT PK_SUPPLY_CHARACTERISTICS_ID PRIMARY KEY(SUPPLY_CHARACTERISTICS_ID)
              
);
 
CREATE TABLE supply_parameters_table (

            SUPPLY_PARAMETERS_ID INT AUTO_INCREMENT,
            SUPPLY_CHARACTERISTICS_ID INT,
            AL_SYSTEM_EARTING VARCHAR(255),
            AL_SUPPLY_NO VARCHAR(255),
            AL_SUPPLY_STNAME VARCHAR(255),
            AL_SYSTEM_EARTING_BNOTE VARCHAR(255),
            AL_LIVECONDUCTOR_TYPE VARCHAR(255),
            AL_LIVECONDUCTOR_AC VARCHAR(255),
            AL_LIVECONDUCTOR_DC VARCHAR(255),
            AL_LIVECONDUCTOR_BNOTE VARCHAR(255),
             AL_NOMINAL_VOLTAGE VARCHAR(255),
            AL_NOMINAL_FREQUENCY VARCHAR(255),
            AL_FAULT_CURRENT VARCHAR(255),
            AL_LOOP_IMPEDANCE VARCHAR(255),
            AL_INSTALLED_CAPACITY VARCHAR(255),
            AL_ACTUAL_LOAD VARCHAR(255) ,
            AL_PROTECTIVE_DEVICE VARCHAR(255),
            AL_RATED_CURRNT VARCHAR(255),
            AL_CURRENT_DISCONNECTION VARCHAR(255),
            CONSTRAINT PK_SUPPLY_PARAMETERS_ID PRIMARY KEY(SUPPLY_PARAMETERS_ID),
            CONSTRAINT FK_SUPPLY_CHARACTERISTICS_ID FOREIGN KEY (SUPPLY_CHARACTERISTICS_ID) REFERENCES SUPPLY_CHARACTERISTICS_TABLE(SUPPLY_CHARACTERISTICS_ID) ON DELETE CASCADE

 );
 
  CREATE TABLE circuit_breaker_table (
 
            CIRCUIT_BREAKER_ID INT AUTO_INCREMENT, 
            SUPPLY_CHARACTERISTICS_ID INT,
            LOCATION VARCHAR(255),
            TYPE VARCHAR(255),
            POLES_NO VARCHAR(255),
            CURRRENT VARCHAR(255),
            VOLTAGE VARCHAR(255),
            FUSE VARCHAR(255),
            RESIDUAL_CURRENT VARCHAR(255),
            RESIDUAL_TIME VARCHAR(255),
            CONSTRAINT PK_CIRCUIT_BREAKER_ID PRIMARY KEY(CIRCUIT_BREAKER_ID),
            CONSTRAINT FK_CIRCUIT_BREAKER_SUPPLY_CHARACTERISTICS_ID FOREIGN KEY (SUPPLY_CHARACTERISTICS_ID) REFERENCES SUPPLY_CHARACTERISTICS_TABLE(SUPPLY_CHARACTERISTICS_ID) ON DELETE CASCADE
                   
);

CREATE TABLE installation_location_table (
            INSTALLATION_LOCATION_REPORT_ID INT AUTO_INCREMENT,
            SUPPLY_CHARACTERISTICS_ID INT,
            LOCATION_NO VARCHAR(255),
            LOCATION_NAME VARCHAR(500),
            ELECTORDE_RESISTANCE_EARTH VARCHAR(500),
            ELECTORDE_RESISTANCE_GRID VARCHAR(255),
            CONSTRAINT PK_INSTALLATION_LOCATION_REPORT_ID PRIMARY KEY(INSTALLATION_LOCATION_REPORT_ID),
            CONSTRAINT FK_INSTALLATION_LOCATION_REPORTS_SUPPLY_CHARACTERISTICS_ID FOREIGN KEY (SUPPLY_CHARACTERISTICS_ID) REFERENCES SUPPLY_CHARACTERISTICS_TABLE(SUPPLY_CHARACTERISTICS_ID) ON DELETE CASCADE


 );

 CREATE TABLE bounding_location_reports_table (
            BOUNDING_REPORT_ID INT AUTO_INCREMENT,
            SUPPLY_CHARACTERISTICS_ID INT,
			LOCATION VARCHAR(255),
			JOINT_NO VARCHAR(255),
            JOINT_RESISTANCE VARCHAR(255) ,
            CONSTRAINT PK_BOUNDING_LOCATION_REPORT_ID PRIMARY KEY(BOUNDING_REPORT_ID),
            CONSTRAINT FK_BOUNDING_LOCATION_REPORTS_SUPPLY_CHARACTERISTICS_ID FOREIGN KEY (SUPPLY_CHARACTERISTICS_ID) REFERENCES SUPPLY_CHARACTERISTICS_TABLE(SUPPLY_CHARACTERISTICS_ID) ON DELETE CASCADE


 );
 
  CREATE TABLE earthing_location_reports_table (
            EARTHING_LOCATION_REPORT_ID INT AUTO_INCREMENT,
            SUPPLY_CHARACTERISTICS_ID INT,
			LOCATION VARCHAR(255),
			JOINT_NO VARCHAR(255),
            JOINT_RESISTANCE VARCHAR(255) ,
            CONSTRAINT PK_EARTHING_LOCATION_REPORT_ID PRIMARY KEY(EARTHING_LOCATION_REPORT_ID),
            CONSTRAINT FK_EARTHING_LOCATION_REPORTS_SUPPLY_CHARACTERISTICS_ID FOREIGN KEY (SUPPLY_CHARACTERISTICS_ID) REFERENCES SUPPLY_CHARACTERISTICS_TABLE(SUPPLY_CHARACTERISTICS_ID) ON DELETE CASCADE


 );
 
