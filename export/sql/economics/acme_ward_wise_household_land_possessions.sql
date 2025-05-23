-- Generated SQL script
-- Date: 2025-05-23 15:08:04


-- Check if acme_ward_wise_household_land_possessions table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_household_land_possessions'
    ) THEN
        CREATE TABLE acme_ward_wise_household_land_possessions (
            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
            ward_number INTEGER NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_household_land_possessions) THEN


    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        'a1afadc4-9245-40ce-8321-5f39a8f82a75',
        1,
        854,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        'f11f86ae-d2cb-491b-9361-0235c5840607',
        2,
        2535,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '33d15f08-eb34-49f4-842c-f473132cecf2',
        3,
        1942,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        'c1bd2a02-99db-4538-816a-7586449e12b3',
        4,
        1794,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '217cb019-0f07-4f6d-8678-11b117c2a5c3',
        5,
        1787,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '9aea3ae6-6ad6-4ec9-97c1-dbfa9d57e1bb',
        6,
        794,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '4df38a9d-a5d0-4fb1-ad4e-1d8894db25cf',
        7,
        2097,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    INSERT INTO acme_ward_wise_household_land_possessions 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '545b529c-8a7b-4472-83f7-33d123f12da7',
        8,
        1731,
        '2025-05-23 15:08:04',
        '2025-05-23 15:08:04'
    );
    

    END IF;
END
$$;

