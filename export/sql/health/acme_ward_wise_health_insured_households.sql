-- Generated SQL script
-- Date: 2025-05-24 14:56:54


-- Check if acme_ward_wise_health_insured_households table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_health_insured_households'
    ) THEN
        CREATE TABLE acme_ward_wise_health_insured_households (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL UNIQUE,
            insured_households INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_health_insured_households) THEN


    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        'a35f14e7-f79e-42eb-9b24-34d9717cf0da',
        1,
        177,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        '76f6706a-7d6f-4970-9cb7-b98e71d157e7',
        2,
        330,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        '2481bc09-e257-4a68-b769-cebdbc75ac86',
        3,
        335,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        'ff3f6461-5a56-481d-bd3b-4cde1d2c27ad',
        4,
        137,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        '700e4da3-0f69-402c-97cc-503c5494e3e9',
        5,
        44,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        'c805cf41-c52d-40ac-8a10-9bc27d9b1c1c',
        6,
        46,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        '219641ed-5820-4e8a-9524-df1a746b9c80',
        7,
        57,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    INSERT INTO acme_ward_wise_health_insured_households 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        '920169b7-557e-41ec-a6ae-7e7cea4843a5',
        8,
        63,
        '2025-05-24 14:56:54',
        '2025-05-24 14:56:54'
    );
    

    END IF;
END
$$;

