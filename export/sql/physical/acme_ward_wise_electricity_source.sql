-- Generated SQL script
-- Date: 2025-05-25 08:28:30


-- Check if acme_ward_wise_electricity_source table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'electricity_source_type'
    ) THEN
        CREATE TYPE electricity_source_type AS ENUM (
            'ELECTRICITY',
            'SOLAR',
            'KEROSENE',
            'BIOGAS',
            'OTHER'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_electricity_source'
    ) THEN
        CREATE TABLE acme_ward_wise_electricity_source (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            electricity_source electricity_source_type NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_electricity_source) THEN


    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '8cc9fc1d-94a6-4547-9055-58e35645b4f3',
        1,
        'ELECTRICITY',
        909,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '3cf15563-85b2-44bb-a7a1-296092ded136',
        1,
        'KEROSENE',
        1,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '0a501444-5dbc-4052-b574-1212b207855b',
        2,
        'ELECTRICITY',
        2599,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'f71b765f-6bf5-419c-a5ef-63c016fb6ce6',
        2,
        'KEROSENE',
        7,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '33707902-c56f-4a21-a770-67244de61df6',
        2,
        'OTHER',
        2,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'f4623b3d-abf7-4ed3-a2e2-c6a8ab51be38',
        2,
        'SOLAR',
        3,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'd39a3b8d-5fba-4ae6-89f6-8ad47d236b8c',
        3,
        'BIOGAS',
        1,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'b1a6c6ad-0282-4f50-9911-7966589e1f33',
        3,
        'ELECTRICITY',
        2049,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'e83ccc65-a38c-43c7-b889-392169101136',
        3,
        'SOLAR',
        11,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'bdcdcf86-bea3-4fc1-9607-0e003648b528',
        4,
        'ELECTRICITY',
        1827,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '6181b528-7721-4234-a5d1-8d93ac5c6f62',
        4,
        'KEROSENE',
        1,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '84387032-ed1d-44e7-ae1d-d477634ce3a1',
        4,
        'OTHER',
        2,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'e86098fd-e982-4c1b-8c04-2df8f1d47520',
        4,
        'SOLAR',
        2,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '0dbef660-570b-4704-b4fe-94134030d002',
        5,
        'ELECTRICITY',
        1832,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '9d6d226c-8e9d-415f-87a0-44cbe9073629',
        5,
        'KEROSENE',
        7,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '04d1c3b9-9626-4228-814a-7609a855413e',
        5,
        'OTHER',
        8,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'aca7dcd4-2f8c-40e0-b6b9-f3d66672c911',
        5,
        'SOLAR',
        1,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'b5080187-90be-49bc-a633-3584d866d7d1',
        6,
        'ELECTRICITY',
        1963,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '95f90cae-5dd4-4c1d-b3ea-4557fea2d7aa',
        6,
        'KEROSENE',
        4,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'a304ba1c-72b0-4d73-b13d-1a094ca1d518',
        6,
        'OTHER',
        4,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '3567f214-09ce-46e6-837e-9ade3c75e033',
        7,
        'BIOGAS',
        3,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'c0c8c869-78c6-4828-8a25-566c3012dcdc',
        7,
        'ELECTRICITY',
        2237,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '7bd1c5f9-8163-49dc-abb3-5be0a79abdae',
        7,
        'KEROSENE',
        65,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '585ec97c-d50d-4c4b-9661-3ad370a0aca9',
        7,
        'SOLAR',
        102,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'e7fa5812-0b5c-4ff6-9bf2-f353ff14b359',
        8,
        'BIOGAS',
        9,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'b50a029f-11d9-4d33-b9ad-6bdb5bd775fc',
        8,
        'ELECTRICITY',
        1505,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        'e92d2fcc-c27e-47ea-bf29-2df4b63541bc',
        8,
        'KEROSENE',
        88,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '662d6a03-7af1-4d35-88f0-978b830eaceb',
        8,
        'OTHER',
        12,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    INSERT INTO acme_ward_wise_electricity_source 
    (id, ward_number, electricity_source, households, updated_at, created_at)
    VALUES (
        '673b2399-badd-4ac7-b175-84de5d232d7f',
        8,
        'SOLAR',
        276,
        '2025-05-25 08:28:30',
        '2025-05-25 08:28:30'
    );
    

    END IF;
END
$$;

