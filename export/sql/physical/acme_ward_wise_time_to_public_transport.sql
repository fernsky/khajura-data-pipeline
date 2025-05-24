-- Generated SQL script
-- Date: 2025-05-24 20:45:29


-- Check if acme_ward_wise_time_to_public_transport table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'time_to_public_transport_type'
    ) THEN
        CREATE TYPE time_to_public_transport_type AS ENUM (
            'UNDER_15_MIN', 
            'UNDER_30_MIN', 
            'UNDER_1_HOUR', 
            '1_HOUR_OR_MORE'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_time_to_public_transport'
    ) THEN
        CREATE TABLE acme_ward_wise_time_to_public_transport (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            time_to_public_transport time_to_public_transport_type NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_time_to_public_transport) THEN


    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'ca38a91c-37fd-4c1e-8de9-f49c657b7f12',
        1,
        '1_HOUR_OR_MORE',
        8,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '69b49f0f-c577-4cf7-82a4-b3f80c81d4ee',
        1,
        'UNDER_15_MIN',
        612,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '220f68df-1e70-494e-9479-f403d1082ec2',
        1,
        'UNDER_1_HOUR',
        7,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '5473ec54-10ff-4356-b2cc-496c868d6473',
        1,
        'UNDER_30_MIN',
        283,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '5547ff5d-a073-413b-b462-0cbeb226d353',
        2,
        'UNDER_15_MIN',
        2139,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '0367bb0d-a534-4af8-9ce8-d247ad93a9fb',
        2,
        'UNDER_1_HOUR',
        137,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '4289e2b4-0b4f-458f-b54d-a6ba4fd764a7',
        2,
        'UNDER_30_MIN',
        335,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '122594ae-c704-4fff-9d57-3cfe3bb30d11',
        3,
        '1_HOUR_OR_MORE',
        3,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'b3bc8a29-3c5f-46eb-bcfe-548b1de9c9d2',
        3,
        'UNDER_15_MIN',
        1514,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '79863ee3-d916-4825-a5f3-76a082247c89',
        3,
        'UNDER_1_HOUR',
        43,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'd2932734-5eb9-41ac-8bc9-87da88f02c9a',
        3,
        'UNDER_30_MIN',
        501,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '964af9cc-5384-46d0-afd0-dfb3866f8d92',
        4,
        'UNDER_15_MIN',
        1305,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '57cae155-78ff-4b6a-b6c0-2d50be197676',
        4,
        'UNDER_1_HOUR',
        37,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '1b0dee6c-c15d-46c4-b8b3-ce2bf7cea5a5',
        4,
        'UNDER_30_MIN',
        490,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '44ae1703-bea4-4cf3-a14b-870b2d04be76',
        5,
        '1_HOUR_OR_MORE',
        41,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'b3164bb4-152a-4bd0-abbd-164262f53b33',
        5,
        'UNDER_15_MIN',
        1471,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '0ac33dd1-f11b-4397-88b3-9a76fccd0cc5',
        5,
        'UNDER_1_HOUR',
        159,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'be925b1c-2ebe-467d-82d1-c39dd14a96c3',
        5,
        'UNDER_30_MIN',
        177,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '59d00cbc-812f-4f3f-9ab6-11c3f42531f2',
        6,
        '1_HOUR_OR_MORE',
        176,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '3e70e498-15bd-480b-b09c-586fd42b62e1',
        6,
        'UNDER_15_MIN',
        191,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '8ae80303-517f-4d00-abc5-f8f2d1c6036d',
        6,
        'UNDER_1_HOUR',
        255,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '1a10535b-3b86-4d1c-ba92-78e5a533cbb9',
        6,
        'UNDER_30_MIN',
        1349,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'b50b12ad-fec1-4259-8019-d43a82f810a7',
        7,
        '1_HOUR_OR_MORE',
        1,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '161cf6c1-955b-4943-af97-96914a49a26c',
        7,
        'UNDER_15_MIN',
        1545,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '073b2cc8-b55b-4d8d-a2f8-371a2d26c7e0',
        7,
        'UNDER_1_HOUR',
        21,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '79d0d8f9-1d69-49c4-bc43-1b9b6f766852',
        7,
        'UNDER_30_MIN',
        840,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '7eaf18a3-07b5-42db-a620-906b326685f7',
        8,
        '1_HOUR_OR_MORE',
        10,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'e0841f83-8a6e-4cf1-9bc2-bc28a3408113',
        8,
        'UNDER_15_MIN',
        1198,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        '42eeede1-a8a6-410b-a254-cd8481216354',
        8,
        'UNDER_1_HOUR',
        48,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    INSERT INTO acme_ward_wise_time_to_public_transport 
    (id, ward_number, time_to_public_transport, households, updated_at, created_at)
    VALUES (
        'c4aee98f-f33c-4cfe-b86b-89c7b3f68f6e',
        8,
        'UNDER_30_MIN',
        634,
        '2025-05-24 20:45:29',
        '2025-05-24 20:45:29'
    );
    

    END IF;
END
$$;

