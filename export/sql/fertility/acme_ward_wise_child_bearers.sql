-- Generated SQL script
-- Date: 2025-05-24 13:03:55


-- Check if acme_ward_wise_child_bearers table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_child_bearers'
    ) THEN
        CREATE TABLE acme_ward_wise_child_bearers (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL UNIQUE,
            age_15_to_49_child_bearers INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_child_bearers) THEN


    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        '680d1e74-06ba-4b4a-a17d-64efd9d1adfe',
        1,
        841,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        '03d5b66e-fcab-42b0-8530-a6e9622a0d91',
        2,
        2095,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        '841391cd-6479-4bc6-8a3a-b33c6f23b54d',
        3,
        1732,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        'f1ab1a3a-549a-4828-843d-808700729356',
        4,
        815,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        '64d53134-cdd5-4918-b7ce-defac18b1ea9',
        5,
        1074,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        '414c8025-8771-4473-8f68-f60f0f81e46d',
        6,
        1300,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        '066586a5-d407-4916-8e98-cb5ced08cec1',
        7,
        1478,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    INSERT INTO acme_ward_wise_child_bearers 
    (id, ward_number, age_15_to_49_child_bearers, updated_at, created_at)
    VALUES (
        'a66e2f05-48a8-474a-a75d-4619a9e8ff5f',
        8,
        767,
        '2025-05-24 13:03:55',
        '2025-05-24 13:03:55'
    );
    

    END IF;
END
$$;

