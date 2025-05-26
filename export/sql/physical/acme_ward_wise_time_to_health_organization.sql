-- Generated SQL script
-- Date: 2025-05-26 20:19:41


-- Check if acme_ward_wise_time_to_health_organization table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_time_to_health_organization'
    ) THEN
        CREATE TABLE acme_ward_wise_time_to_health_organization (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            time_to_health_organization VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_time_to_health_organization) THEN


    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'b44b04b6-a5db-4748-9329-135898ecf995',
        1,
        'UNDER_15_MIN',
        534,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '756f308e-929e-438c-93d5-dff411cb3c08',
        1,
        'UNDER_30_MIN',
        376,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'bba83633-a083-4123-9d38-8283753aad50',
        2,
        'UNDER_15_MIN',
        1693,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '83eaeb49-61d2-4562-8cdf-41d1d92172ea',
        2,
        'UNDER_1_HOUR',
        134,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'daa1bf33-daea-4673-b1ef-1d57df06f2ed',
        2,
        'UNDER_30_MIN',
        784,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'e2f18eff-3486-490e-b400-0ad8861fed2a',
        3,
        'UNDER_15_MIN',
        1454,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'e1b013f6-9566-4217-b44b-50fa37fee665',
        3,
        'UNDER_1_HOUR',
        47,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '1cf168e5-1d46-42ee-9a39-468fa119b711',
        3,
        'UNDER_30_MIN',
        560,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '8d8a1aac-e356-4379-a843-24a1e5582360',
        4,
        'UNDER_15_MIN',
        1239,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '110058ab-f06c-4fbc-b0a3-6b154816f166',
        4,
        'UNDER_1_HOUR',
        55,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '92f8bdda-e8b8-402d-93e0-6db24591ec15',
        4,
        'UNDER_30_MIN',
        538,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '0f41e4ea-991f-49d2-9161-34239c29ea14',
        5,
        'UNDER_15_MIN',
        947,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'ea2d3be5-3629-4e43-8d6d-e8c44b7c62cc',
        5,
        'UNDER_1_HOUR',
        337,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '5705a333-55cc-439a-ba8b-fb9b3f2d5b5c',
        5,
        'UNDER_30_MIN',
        564,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '44b8fe6d-dc6b-481b-9646-70157fedd664',
        6,
        'UNDER_15_MIN',
        1122,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '346d5fab-cd47-4c93-bc61-5e5d232c4c10',
        6,
        'UNDER_1_HOUR',
        442,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'ea99eba1-0f75-49eb-bba7-20dba11befa2',
        6,
        'UNDER_30_MIN',
        407,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'eadd9639-b704-4770-88a1-98c557702cdd',
        7,
        'UNDER_15_MIN',
        1028,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '6d6e628d-c48d-4104-9fb0-ba556831848c',
        7,
        'UNDER_1_HOUR',
        203,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'c9e6604a-1872-4610-b61e-e695cfc318b7',
        7,
        'UNDER_30_MIN',
        1176,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        'cbf3ba53-e91f-41d0-98da-591de5aa30ae',
        8,
        'UNDER_15_MIN',
        1005,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '496d4876-c1a7-4225-bb47-3000213cf585',
        8,
        'UNDER_1_HOUR',
        251,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    INSERT INTO acme_ward_wise_time_to_health_organization 
    (id, ward_number, time_to_health_organization, households, created_at, updated_at)
    VALUES (
        '9d44402c-76de-40d0-b6da-c71b31b9e331',
        8,
        'UNDER_30_MIN',
        634,
        '2025-05-26 20:19:41',
        '2025-05-26 20:19:41'
    );
    

    END IF;
END
$$;

