-- Generated SQL script
-- Date: 2025-05-27 21:19:09


-- Check if acme_ward_wise_disabled_population table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_disabled_population'
    ) THEN
        CREATE TABLE acme_ward_wise_disabled_population (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            disabled_population INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_disabled_population) THEN


    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        '9c63ee91-ae8b-4c1b-a9ef-93a763ed9257',
        1,
        59,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        'b16f56fb-b8c3-44a0-8b0e-97f94ef9a960',
        2,
        170,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        '803e7e2a-0f90-49ec-a2fd-acee5844f7ed',
        3,
        80,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        '9d01f861-5c91-4dd8-86bc-a3c6c8a34d0e',
        4,
        33,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        '086404f6-3d05-44dc-be70-50a47c92a5ea',
        5,
        21,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        'd4228e1f-19c6-48d4-ad70-7f36a056e431',
        6,
        90,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        'b23c3de4-79c6-4751-8218-5d0721f6fd5a',
        7,
        42,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    INSERT INTO acme_ward_wise_disabled_population 
    (id, ward_number, disabled_population, created_at, updated_at)
    VALUES (
        '12fcb3ea-a0b1-48b4-a26c-ee53a3ab2278',
        8,
        34,
        '2025-05-27 21:19:09',
        '2025-05-27 21:19:09'
    );
    

    END IF;
END
$$;

