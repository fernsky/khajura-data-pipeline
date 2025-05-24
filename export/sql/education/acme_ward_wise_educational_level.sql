-- Generated SQL script
-- Date: 2025-05-23 21:51:04


-- Check if acme_ward_wise_educational_level table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_educational_level'
    ) THEN
        CREATE TABLE acme_ward_wise_educational_level (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            educational_level_type VARCHAR(100) NOT NULL,
            population INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_educational_level) THEN


    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'a8f4833f-ef81-4661-bff8-5982846f97f1',
        1,
        'EDUCATED',
        60,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '2eec2ebb-2a5b-4cf4-bf01-b3a63fe33443',
        1,
        'GRADE_1',
        95,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '9362b399-ada4-4650-b9bb-a7b7c7fe25bc',
        1,
        'GRADE_10',
        570,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '4b929ee8-f73b-4492-a4d5-b3b528129a6c',
        1,
        'GRADE_2',
        85,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '623cc0f4-5796-4071-8432-30bb5aaf045f',
        1,
        'GRADE_3',
        128,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'd077d56f-5783-4b7d-9568-ed61f7a5c8d9',
        1,
        'GRADE_4',
        108,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '83753381-b33a-4c0e-823a-63017662e4b9',
        1,
        'GRADE_5',
        267,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '3aaeb210-922c-41ce-ae36-aa7277b4f66c',
        1,
        'GRADE_6',
        146,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'caf858fa-370a-40f6-a438-a6226c6a62c5',
        1,
        'GRADE_7',
        243,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '9e053950-688c-4ee8-a29b-69e944020fcd',
        1,
        'GRADE_8',
        436,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '0bb74302-c785-4cb2-8f70-1190466fc704',
        1,
        'GRADE_9',
        247,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c4290092-415e-4f90-b7a0-36fb2c066dce',
        1,
        'INFORMAL_EDUCATION',
        11,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'b2a1f219-589b-4236-9553-5f5570a93cd3',
        1,
        'NURSERY',
        139,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '505e3ea2-cacb-499e-9a14-220d9ab9fa6d',
        1,
        'UNKNOWN',
        929,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8ad9c48f-b9ac-4ef6-bf2d-487b9e5e4f05',
        2,
        'EDUCATED',
        111,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '7ad9cafb-8198-4a15-934a-e261823712b8',
        2,
        'GRADE_1',
        277,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '9d005f9f-578b-4410-b239-8d8b9429b071',
        2,
        'GRADE_10',
        1138,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '3e864a34-0de9-4c01-a17c-413a12afb5e8',
        2,
        'GRADE_2',
        278,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '81869404-63c2-4999-b42e-e1b54713b201',
        2,
        'GRADE_3',
        387,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6a070d5d-f142-449c-bec8-9ee18ea596cf',
        2,
        'GRADE_4',
        383,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'd78dfaa8-9844-484c-921e-1390b8e985cf',
        2,
        'GRADE_5',
        768,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'ae3763a6-d944-4d81-8f59-1c44cb204fd2',
        2,
        'GRADE_6',
        455,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'ff886a25-cbea-437c-9034-89c9fa1363dc',
        2,
        'GRADE_7',
        616,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8e1a4613-f83d-4d1e-9739-2fd993d4c5c4',
        2,
        'GRADE_8',
        1097,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '7991ab78-6a59-4d41-b60e-0f41a2969066',
        2,
        'GRADE_9',
        558,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'ed824f1d-3a72-43ea-a75c-54976d9d8fc2',
        2,
        'INFORMAL_EDUCATION',
        46,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8b21fb6e-6fe2-4dbb-95c0-23e67d466519',
        2,
        'NURSERY',
        328,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'd1f531e5-6844-4cc0-baf6-43ee8d9716ca',
        2,
        'OTHER',
        2,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '865b1594-14ff-4d05-b344-506653818165',
        2,
        'UNKNOWN',
        3424,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c5559612-e507-4cf0-8e30-422692b1cf48',
        3,
        'EDUCATED',
        199,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'b387a147-7386-43eb-9607-956fe7be711f',
        3,
        'GRADE_1',
        191,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'f0ef22f2-f773-4ae1-ae25-b7ac5d1be576',
        3,
        'GRADE_10',
        931,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '75a2df27-b7d6-4f45-bb73-ca5c397c4655',
        3,
        'GRADE_2',
        183,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'beaa60ed-ea2c-4989-9467-a4317bb0f141',
        3,
        'GRADE_3',
        228,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '11f4c989-b94f-4ffe-b6be-99e22bfa899e',
        3,
        'GRADE_4',
        219,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'cf84a29d-0978-407c-9126-e95187945050',
        3,
        'GRADE_5',
        518,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8f259fd8-b2d9-4266-ae77-1eb18720ccf0',
        3,
        'GRADE_6',
        264,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'f73d31fe-ace3-4ba8-9e16-f9d20208f96c',
        3,
        'GRADE_7',
        324,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'a0f70286-e937-44aa-be02-9fabe3d21cad',
        3,
        'GRADE_8',
        681,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6215cc4d-3a0e-400b-95f4-517b029e08a0',
        3,
        'GRADE_9',
        384,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '66bae1e5-e39c-4dd9-a6ee-64775f2f56a4',
        3,
        'INFORMAL_EDUCATION',
        46,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '5bff8211-75eb-459d-8c4a-ec35985e5f48',
        3,
        'NURSERY',
        329,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '85fc7fd4-b578-4749-a8dd-82d7f6be84f6',
        3,
        'OTHER',
        13,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'f4d39ab8-87a6-4aee-8850-406c79d1bd5b',
        3,
        'UNKNOWN',
        3126,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '688ff40b-2fc5-47a0-90da-2a8b5f7424b9',
        4,
        'EDUCATED',
        33,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c6e088e3-ead7-4ac9-8524-c5d91c257089',
        4,
        'GRADE_1',
        104,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'cd1fa533-2a25-4226-8cde-40dad6b2fa8d',
        4,
        'GRADE_10',
        527,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '0f870620-d339-46a9-9a4c-05bd69c75db3',
        4,
        'GRADE_2',
        128,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '03ac9b74-2520-4163-bc12-991c96b54d7a',
        4,
        'GRADE_3',
        157,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c0454fe6-b981-4779-a98a-d27f622dd71d',
        4,
        'GRADE_4',
        141,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6a6c2b53-ea7f-4ae0-88f8-49ad79a6cea0',
        4,
        'GRADE_5',
        342,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'a7578911-d13b-468b-9aa7-df9c799b2607',
        4,
        'GRADE_6',
        177,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '17ceded9-6fc9-4eb2-8261-0b2b9b09d92f',
        4,
        'GRADE_7',
        241,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '3265712f-918a-4a03-9b14-e7b658fd1b45',
        4,
        'GRADE_8',
        419,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '825b6731-960c-46f8-a18c-5a22bc952cda',
        4,
        'GRADE_9',
        237,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '1c467650-17d3-49cb-83ae-56477a8a1b4d',
        4,
        'INFORMAL_EDUCATION',
        25,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '56eed8ef-e9b4-4d0a-b7b9-9eecd388e6ae',
        4,
        'NURSERY',
        194,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '1f2adbf8-b023-411a-b600-0038075b74b3',
        4,
        'OTHER',
        8,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'e01256c9-57cf-4b0b-8ee2-a4b71ffd682c',
        4,
        'UNKNOWN',
        1287,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '34009ccb-60a4-4a33-8c4a-bf635b1ef941',
        5,
        'EDUCATED',
        112,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'b4b1061e-0cd3-4a3d-9c9c-c366468e8eaa',
        5,
        'GRADE_1',
        275,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '65d352db-688a-4c2a-889d-17a05de7dee8',
        5,
        'GRADE_10',
        332,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '2ad8fc3d-b520-401d-86cc-b43dcbb40561',
        5,
        'GRADE_2',
        255,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '25b36f26-c7fb-4ac2-ab7a-e607b95a00b1',
        5,
        'GRADE_3',
        281,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '9001031e-a401-4f54-a446-5369509366b2',
        5,
        'GRADE_4',
        251,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '25d41a77-7b23-459e-856c-4d54e0168778',
        5,
        'GRADE_5',
        463,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '7c462950-f2e4-4f4f-be2d-d41a1479d12e',
        5,
        'GRADE_6',
        237,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '60ccc93c-332b-401a-b443-e2aac744ebcc',
        5,
        'GRADE_7',
        262,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'baed9bc3-0092-46d5-b50d-aca20073668e',
        5,
        'GRADE_8',
        299,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '1f13b547-7d94-4fc3-9ab3-c337df020a79',
        5,
        'GRADE_9',
        168,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'd4d1ccc5-3ea8-48a3-bc2d-8767c453a1fe',
        5,
        'NURSERY',
        222,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'e504d8e8-79f6-46ec-bda2-c9ccfd217c02',
        5,
        'OTHER',
        18,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8afe91c7-4d24-4d76-9800-a1ce3cf96def',
        5,
        'UNKNOWN',
        428,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '4bd8abc0-c2ac-43aa-8e63-6f1653fd0258',
        6,
        'EDUCATED',
        68,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6eed3d6c-ae5a-47ce-9a84-faf7d721f50b',
        6,
        'GRADE_1',
        249,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8c697153-fee0-4b27-ae1b-7b96b0c3242c',
        6,
        'GRADE_10',
        713,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'cbf33156-09fc-4460-955f-d70a7233713f',
        6,
        'GRADE_2',
        295,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6b1c9b98-9003-4f59-b0c3-f2cf2afdd94e',
        6,
        'GRADE_3',
        368,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'faa21b03-eb59-462c-840d-a8a38f502249',
        6,
        'GRADE_4',
        427,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'b15a2683-b3fe-4564-b47e-d57aa6a67e31',
        6,
        'GRADE_5',
        717,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'e3e4f223-c4e2-4a36-aac1-e992298c780b',
        6,
        'GRADE_6',
        477,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '87acc8cb-a3a1-4959-8d1d-4f03d19e0ef4',
        6,
        'GRADE_7',
        461,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'b4d870d2-7eff-4511-b220-c9fc21494d49',
        6,
        'GRADE_8',
        726,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c41d4329-db99-4dcf-89ac-6d1a560be79b',
        6,
        'GRADE_9',
        359,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6ac88a15-2713-46d7-8aeb-857d3416899a',
        6,
        'INFORMAL_EDUCATION',
        2,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '03a9d4f3-a521-47a9-8a8f-d59f5e156fe3',
        6,
        'NURSERY',
        283,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '734393e9-9372-4608-91b3-34476afbd2f2',
        6,
        'OTHER',
        1,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '3501f243-1d52-4c1e-bf0b-db3da327e6d3',
        6,
        'UNKNOWN',
        977,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'fd22fb8d-4686-4924-bd6c-82eef5780e4b',
        7,
        'EDUCATED',
        61,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '3e9e4647-4e8b-4d0a-b18c-1d98e922d0fa',
        7,
        'GRADE_1',
        216,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'f54ff75e-f875-4c06-9999-4204091d12ef',
        7,
        'GRADE_10',
        374,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '623e9fac-8ffb-4f17-b5d2-c028471457ae',
        7,
        'GRADE_2',
        222,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'f433dcdd-d15a-4e1f-97ba-11099bed975b',
        7,
        'GRADE_3',
        288,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'ddf05c50-5129-4aff-9465-a842cc979b09',
        7,
        'GRADE_4',
        299,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '889c260d-7752-4ec7-a9f2-6dcf161ba062',
        7,
        'GRADE_5',
        438,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8630e3cf-2774-4225-92f0-437b2021c343',
        7,
        'GRADE_6',
        261,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '26885b4c-cde0-4f36-a950-a16236b06a65',
        7,
        'GRADE_7',
        276,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '575b7e11-c493-4860-8069-37d83ccd58b7',
        7,
        'GRADE_8',
        387,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '6a961f23-c0b5-4cb4-a381-f4e8c0749aa9',
        7,
        'GRADE_9',
        232,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '72685728-facd-42ba-9bfd-402a569b6f89',
        7,
        'INFORMAL_EDUCATION',
        8,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'edaa70d6-1a10-4388-aa13-ee343ff281b7',
        7,
        'NURSERY',
        170,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8d742889-74b6-422e-96b5-0fe5ba52457c',
        7,
        'OTHER',
        13,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '89fd87fc-222e-4eb7-b946-9fa086110143',
        7,
        'UNKNOWN',
        786,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '56784be2-b20f-4552-b63a-9767544adfe6',
        8,
        'EDUCATED',
        1,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'ce796f5c-1da8-4412-a86f-e801c6924bb9',
        8,
        'GRADE_1',
        113,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'a1f067f7-a12d-477f-bb9e-574b0f5ea3dc',
        8,
        'GRADE_10',
        253,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '5f15b76b-c278-4203-a4f5-799660e84443',
        8,
        'GRADE_2',
        161,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '060b8342-2e62-4ce9-97d9-01c67c52586d',
        8,
        'GRADE_3',
        145,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'f892430e-f6cb-495b-9042-c28f5e3ba6f4',
        8,
        'GRADE_4',
        135,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8ed991bc-5bc7-4344-b8d4-e8187ee7ef88',
        8,
        'GRADE_5',
        247,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c631185a-058c-4326-bb2d-972eb4ccd38d',
        8,
        'GRADE_6',
        139,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '874d58b3-93c3-4ab8-a6f5-3a7b20278146',
        8,
        'GRADE_7',
        112,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '8f285eed-adab-45ef-b2d1-140027106dd3',
        8,
        'GRADE_8',
        224,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        'c6a543c3-e607-42f5-b404-dd1fe5e9b0bd',
        8,
        'GRADE_9',
        100,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '406cb185-7e94-4b72-8965-80a58c378134',
        8,
        'INFORMAL_EDUCATION',
        14,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '9d6bbb7a-310a-4f39-aa7d-15589c0f97e4',
        8,
        'NURSERY',
        69,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '3278d467-1db3-4984-92bd-c0d8ddc273bd',
        8,
        'OTHER',
        11,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    INSERT INTO acme_ward_wise_educational_level 
    (id, ward_number, educational_level_type, population, updated_at, created_at)
    VALUES (
        '54ea2fb8-b7ab-4b97-8615-924fcfb48a51',
        8,
        'UNKNOWN',
        312,
        '2025-05-23 21:51:04',
        '2025-05-23 21:51:04'
    );
    

    END IF;
END
$$;

