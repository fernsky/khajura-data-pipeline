-- Generated SQL script
-- Date: 2025-05-23 14:27:08


-- Check if acme_ward_wise_households_on_loan table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_households_on_loan'
    ) THEN
        CREATE TABLE acme_ward_wise_households_on_loan (
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_households_on_loan) THEN


    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '29ff04f0-75b2-432c-ba44-a5261046145b',
        1,
        910,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '3abad861-4f5d-4340-bc16-5ae4faf0fdc6',
        2,
        2611,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '10e36323-9cd0-465b-949b-de1379c0b093',
        3,
        2061,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '6776026a-06e0-48fc-8b43-bf1dfde1cf7a',
        4,
        1832,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '410386ec-ac59-4808-a1bd-df9c6297b928',
        5,
        1848,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        'c39c30f9-bbb8-40a8-8823-8593469b9b15',
        6,
        1971,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '73801580-0f69-40f5-bd3a-8acd25f1bf77',
        7,
        2407,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    INSERT INTO acme_ward_wise_households_on_loan 
    (id, ward_number, households, updated_at, created_at)
    VALUES (
        '8c681cf1-f33c-44ec-99d5-fde5a5270e6d',
        8,
        1890,
        '2025-05-23 14:27:08',
        '2025-05-23 14:27:08'
    );
    

    END IF;
END
$$;

