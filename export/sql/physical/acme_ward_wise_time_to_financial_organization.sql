-- Generated SQL script
-- Date: 2025-05-26 20:13:58


-- Check if acme_ward_wise_time_to_financial_organization table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_time_to_financial_organization'
    ) THEN
        CREATE TABLE acme_ward_wise_time_to_financial_organization (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            time_to_financial_organization VARCHAR(100) NOT NULL,
            households INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_time_to_financial_organization) THEN


    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '2375a97c-7e95-42aa-a21e-acfa8386ff4e',
        1,
        'UNDER_15_MIN',
        507,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '569a8732-4486-4711-8a0f-c48297032865',
        1,
        'UNDER_1_HOUR',
        1,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '387e4869-ca31-4aee-ac22-84fb8b5db8e7',
        1,
        'UNDER_30_MIN',
        402,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '714af5e9-d16c-4909-ada9-8432e5fda52a',
        2,
        'UNDER_15_MIN',
        1515,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '0dbcd295-0a73-4ef9-b4a1-91813014d9d6',
        2,
        'UNDER_1_HOUR',
        165,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '613488b2-b77f-4e79-8510-034602dd81fa',
        2,
        'UNDER_30_MIN',
        931,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '2817c2b3-b839-439b-8ff7-08f698a3d1b7',
        3,
        'UNDER_15_MIN',
        1265,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '41b53431-90cb-4dad-83dc-71ccabb0b951',
        3,
        'UNDER_1_HOUR',
        50,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '6d8f81c4-e22e-4179-b723-84632e4d26a0',
        3,
        'UNDER_30_MIN',
        746,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'b20026c1-972b-4bb4-8401-bb350b8c6dff',
        4,
        'UNDER_15_MIN',
        1107,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'ece73723-b383-4b9d-b61f-db00eb641506',
        4,
        'UNDER_1_HOUR',
        52,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'bda5170f-fdf0-4bf1-b36e-9975e39b7bf0',
        4,
        'UNDER_30_MIN',
        673,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '85c0a3e3-6418-4d8c-a6b1-e5b620b00fde',
        5,
        'UNDER_15_MIN',
        900,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '8ce8aff3-a379-4919-9d77-c4d8c2a2f3d9',
        5,
        'UNDER_1_HOUR',
        598,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'ebf911be-b319-4c9f-b1f2-6741a75c9f9c',
        5,
        'UNDER_30_MIN',
        350,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '1a9ad390-68e9-4082-86dc-c176df4b0471',
        6,
        'UNDER_15_MIN',
        691,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'ffa8186a-7b83-457d-bd7f-639926ca96be',
        6,
        'UNDER_1_HOUR',
        524,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '3f63f673-26b2-4434-8d59-8b736d394ea5',
        6,
        'UNDER_30_MIN',
        756,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '806a0aaa-65a4-4efd-80b6-a611b0cc65ac',
        7,
        'UNDER_15_MIN',
        704,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'a5450c6d-a1fd-4110-a78e-4e661970e503',
        7,
        'UNDER_1_HOUR',
        1075,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'c8e85cfb-86bb-4742-9f2d-0c2a7501af9e',
        7,
        'UNDER_30_MIN',
        628,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '4a81001b-18b9-4284-816c-c090e40cd180',
        8,
        'UNDER_15_MIN',
        886,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        '8b52b362-e8d1-4606-9be9-d5718d362e54',
        8,
        'UNDER_1_HOUR',
        207,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    INSERT INTO acme_ward_wise_time_to_financial_organization 
    (id, ward_number, time_to_financial_organization, households, created_at, updated_at)
    VALUES (
        'cb3cb7a7-3cfd-4511-8182-2e103007b962',
        8,
        'UNDER_30_MIN',
        797,
        '2025-05-26 20:13:58',
        '2025-05-26 20:13:58'
    );
    

    END IF;
END
$$;

