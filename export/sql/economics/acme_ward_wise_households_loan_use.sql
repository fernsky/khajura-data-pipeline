-- Generated SQL script
-- Date: 2025-05-23 14:38:56


-- Check if acme_ward_wise_households_loan_use table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_households_loan_use'
    ) THEN
        CREATE TABLE acme_ward_wise_households_loan_use (
            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
            ward_number INTEGER NOT NULL,
            loan_use TEXT NOT NULL,
            households INTEGER NOT NULL DEFAULT 0 CHECK (households >= 0),
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_households_loan_use) THEN


    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'de458e3e-0659-4f6f-9c97-e560670ee500',
        1,
        'AGRICULTURE',
        35,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '88fdf89c-548d-471a-9093-2a1c043325c9',
        1,
        'BUSINESS',
        9,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '8bef0537-3265-4ac2-9722-83d688fba90c',
        1,
        'CEREMONY',
        5,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'd600be07-52fd-44e5-b067-e147d47ff864',
        1,
        'EDUCATION',
        24,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '29d8feb1-62d8-418e-9256-76ecab59d765',
        1,
        'FOREIGN_EMPLOYMENT',
        48,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '461839b9-dd64-4409-ad95-9025f2f9e713',
        1,
        'HEALTH_TREATMENT',
        14,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '7c1a3120-9c79-497f-a90a-6f612d3f896b',
        1,
        'HOME_CONSTRUCTION',
        103,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'cf5e9f61-0b25-4545-8cf7-415dfe68ed78',
        1,
        'HOUSEHOLD_EXPENSES',
        65,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '88035fb9-2a00-47b9-bdee-4cd9e2b38a61',
        1,
        'OTHER',
        6,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '46c00f57-d0ad-43b3-ac7f-89bfea0926d4',
        2,
        'AGRICULTURE',
        458,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '38fa0106-99ad-463e-9b75-168888a0bfc8',
        2,
        'BUSINESS',
        192,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '111efa30-5a67-4ee7-8ebb-e15e794d6931',
        2,
        'CEREMONY',
        48,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'aea9b2a2-607b-41aa-97ae-5634aebe2315',
        2,
        'EDUCATION',
        183,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '75ad9e29-0f48-49fe-ac6c-2e3eed0f80aa',
        2,
        'FOREIGN_EMPLOYMENT',
        344,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '417ebfc7-8ab6-43e4-88ea-a1e861d8fa63',
        2,
        'HEALTH_TREATMENT',
        219,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'c3770010-e549-40d1-922e-9547e8137ad0',
        2,
        'HOME_CONSTRUCTION',
        530,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'b7602ed3-0df5-4cfe-b49b-2aebdf860791',
        2,
        'HOUSEHOLD_EXPENSES',
        265,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '39196162-d945-4135-b2d6-74f901fd7261',
        2,
        'OTHER',
        13,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'b8a030af-78ed-45c5-b5ec-7f4b7aafb9af',
        3,
        'AGRICULTURE',
        84,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '9e890db3-c1b4-4010-ae0e-bffaa53eecd3',
        3,
        'BUSINESS',
        189,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '9ac0eab2-15b1-443b-9fa2-f63a887b0100',
        3,
        'CEREMONY',
        22,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '1aac0c43-59d5-455a-b859-b5e3894a3eb5',
        3,
        'EDUCATION',
        48,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '52812506-f771-4b28-a398-273074120ac0',
        3,
        'FOREIGN_EMPLOYMENT',
        204,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '11dc51c4-dae9-415c-937e-324f0ff26b70',
        3,
        'HEALTH_TREATMENT',
        97,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '9a05e50a-9030-4091-9a17-d6b5e9ba786f',
        3,
        'HOME_CONSTRUCTION',
        452,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '5882caa1-3f8d-416f-95ef-9e8fde591904',
        3,
        'HOUSEHOLD_EXPENSES',
        154,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '543957f0-1518-451b-a0fc-f97c461a0956',
        3,
        'OTHER',
        44,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '5d2dcdbc-2ecd-436c-a21d-8e7d28042227',
        4,
        'AGRICULTURE',
        48,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '8b594924-a02d-42f6-b1f5-a9038997643f',
        4,
        'BUSINESS',
        49,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '3d806c19-a5d9-4fe0-b747-3730d76be2ee',
        4,
        'CEREMONY',
        12,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'c9d85b94-e017-4338-85cf-613401b56e93',
        4,
        'EDUCATION',
        58,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '5c7a3a60-831b-47fe-af33-b42c59e1037a',
        4,
        'FOREIGN_EMPLOYMENT',
        101,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '4bea112d-ba72-45d5-94e9-559e1aef7ed7',
        4,
        'HEALTH_TREATMENT',
        77,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '79c778de-135d-4f65-9267-3a9c4829cecf',
        4,
        'HOME_CONSTRUCTION',
        215,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '8e6f3ba1-c315-48ed-8ab4-4519e206f2f8',
        4,
        'HOUSEHOLD_EXPENSES',
        197,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'bd67e217-c8cc-4a66-a195-e48f0a6c4e22',
        4,
        'OTHER',
        60,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '7f79cf3d-044f-4248-96b7-c0dbf9956ce6',
        5,
        'AGRICULTURE',
        94,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'a8d67ea1-ef64-4d0d-91ab-3855b6c547e3',
        5,
        'BUSINESS',
        10,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'fd13d467-0e96-4dc2-9b13-56587f421753',
        5,
        'CEREMONY',
        9,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'cfa0a6a7-d4af-4a92-9b73-40d9499303f1',
        5,
        'EDUCATION',
        29,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'e6469e64-b444-4c29-90da-180f2e8c94cb',
        5,
        'FOREIGN_EMPLOYMENT',
        66,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '963016c3-22e9-4473-b14f-75cd0c7be212',
        5,
        'HEALTH_TREATMENT',
        99,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '05f4993e-6a51-474f-9130-a6ba2ff44353',
        5,
        'HOME_CONSTRUCTION',
        42,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'c9d9fcfa-0a09-4918-b3d8-4940d35010ee',
        5,
        'HOUSEHOLD_EXPENSES',
        30,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'a14c1988-ac51-4bb4-b24c-da850c6e2cd0',
        5,
        'OTHER',
        11,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'b2dcb5f8-83a3-4773-b704-e9735c4fe4ad',
        6,
        'AGRICULTURE',
        10,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '327b2420-7a35-4f9d-94c1-8c7d1712919f',
        6,
        'BUSINESS',
        93,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '3dd2aca8-3ee1-4a0f-9fc3-b9d960ce57a8',
        6,
        'CEREMONY',
        26,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'e805d548-536b-4be4-8925-34df74c1dba8',
        6,
        'EDUCATION',
        13,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '360514e0-323a-4db2-bce2-99ef3d4d54c1',
        6,
        'FOREIGN_EMPLOYMENT',
        158,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '8fe05ade-171d-4aa7-a9ea-d4de08363571',
        6,
        'HEALTH_TREATMENT',
        97,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '8e46340d-afc8-44b2-bfaa-f52a21a16316',
        6,
        'HOME_CONSTRUCTION',
        162,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '3f565ee6-5107-41a9-aecf-810252a3baa9',
        6,
        'HOUSEHOLD_EXPENSES',
        110,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '3d753fdc-8201-4d2c-8334-a8857f08dcbd',
        6,
        'OTHER',
        48,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '7bd0e84a-a93d-4b4a-9a58-e4c41a9d43b5',
        7,
        'AGRICULTURE',
        157,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'cda73323-98d3-4e33-9afa-adbcd792bdd8',
        7,
        'BUSINESS',
        31,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '5dc5ee48-b893-41be-bfa5-421e93f1ffe3',
        7,
        'CEREMONY',
        25,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '888d2c5a-a3ee-4955-a810-f67f9893decc',
        7,
        'EDUCATION',
        14,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'a6af2578-efa9-4704-a9d3-661d01994d0a',
        7,
        'FOREIGN_EMPLOYMENT',
        55,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '64dce447-147a-4d0f-ad5d-c36b270bd1b5',
        7,
        'HEALTH_TREATMENT',
        31,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '36448fd3-941a-4aff-8bbc-7ec915fcb432',
        7,
        'HOME_CONSTRUCTION',
        169,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '5c6cd547-a16f-4071-bdff-1ca95d78e41b',
        7,
        'HOUSEHOLD_EXPENSES',
        119,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'ed7fa74f-2e9c-4992-8b15-56aee346915b',
        7,
        'OTHER',
        5,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '83835135-8d7e-4b41-9c0f-0dfb7796ed72',
        8,
        'AGRICULTURE',
        242,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'a96b46e4-3a6b-4eec-8004-5ef14e32552c',
        8,
        'BUSINESS',
        20,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '8a92dc80-1888-4556-878d-88d2a316e3f3',
        8,
        'CEREMONY',
        162,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '62ac0072-7de6-43ce-b6f0-4f3da8c4b6db',
        8,
        'EDUCATION',
        49,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '3aaef206-a47e-43a6-aa71-dd62e837ef27',
        8,
        'FOREIGN_EMPLOYMENT',
        83,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        'c683f7fa-5322-43e9-9769-1526d31b96c5',
        8,
        'HEALTH_TREATMENT',
        108,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '3d2020d7-e3bd-4f10-8e01-18ee4ebf36e8',
        8,
        'HOME_CONSTRUCTION',
        321,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '0821f292-e448-4764-b570-e5310b634069',
        8,
        'HOUSEHOLD_EXPENSES',
        129,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    INSERT INTO acme_ward_wise_households_loan_use 
    (id, ward_number, loan_use, households, updated_at, created_at)
    VALUES (
        '2d87c9c6-3b27-407b-9a3b-dc1c2a707554',
        8,
        'OTHER',
        13,
        '2025-05-23 14:38:56',
        '2025-05-23 14:38:56'
    );
    

    END IF;
END
$$;

