-- Generated SQL script
-- Date: 2025-05-23 12:48:10


-- Check if acme_ward_wise_trained_population table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_trained_population'
    ) THEN
        CREATE TABLE acme_ward_wise_trained_population (
            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
            ward_number INTEGER NOT NULL,
            trained_population INTEGER NOT NULL DEFAULT 0 CHECK (trained_population >= 0),
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_trained_population) THEN


    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        '0d25db0f-3ba1-4f33-abbe-15d4153164e8',
        1,
        199,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        'ff8dfeaa-2311-4393-941c-fdc70c0d40ba',
        2,
        448,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        'c021f965-1f01-4410-a6fe-f55d365f65be',
        3,
        491,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        'ff6cf9f3-921f-41fb-81dd-6a94610ef6c8',
        4,
        93,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        'e7853ce6-cbdb-4720-b8bd-703fdad0a4b3',
        5,
        41,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        '55c00816-36bd-4a45-a4ef-b7255d3c615c',
        6,
        302,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        'a58b711c-d243-4f77-a7dc-896478d72e53',
        7,
        15,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    INSERT INTO acme_ward_wise_trained_population 
    (id, ward_number, trained_population, updated_at, created_at)
    VALUES (
        'd00e7c1d-9362-460c-8bec-350d962294cf',
        8,
        63,
        '2025-05-23 12:48:10',
        '2025-05-23 12:48:10'
    );
    

    END IF;
END
$$;

