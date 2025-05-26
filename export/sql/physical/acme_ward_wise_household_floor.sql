-- Generated SQL script
-- Date: 2025-05-26 14:42:54


-- Check if acme_ward_wise_household_floor table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_household_floor'
    ) THEN
        CREATE TABLE acme_ward_wise_household_floor (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            floor_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_household_floor) THEN


    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'f4865745-1ea1-4a94-a81d-7bc09dfc3d19',
        1,
        'BRICK',
        9,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '8830ba89-0d15-4865-8938-71a6c837ea7b',
        1,
        'CONCRETE',
        588,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'ba18f708-3e7b-4367-b66c-3d674795b085',
        1,
        'MUD',
        302,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '6d175c16-26a3-4510-9eb2-5356b88a7e56',
        1,
        'TILE',
        11,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '62a94f21-d64d-4d9e-bf43-9aa69dfd8a57',
        2,
        'BRICK',
        12,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'cb620617-4546-43a5-9a79-48ed77054d4f',
        2,
        'CONCRETE',
        1663,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '0ceb1b57-b584-4861-8021-82a18a3a4717',
        2,
        'MUD',
        848,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '1efd5022-9163-4c56-950b-09fdee10d78a',
        2,
        'OTHER',
        1,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '4c010891-a2be-4f2b-a2c5-453b28b9812f',
        2,
        'TILE',
        69,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '3ae16888-e058-4a5d-b673-98de885b34a4',
        2,
        'WOOD',
        18,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '6b91677a-c22b-43b6-bbb1-59912bd282ca',
        3,
        'CONCRETE',
        1671,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '328fc7e8-8354-450a-bfce-a75b4501bc69',
        3,
        'MUD',
        358,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'c6d0d5f0-a767-4ab0-a9e6-ab25fdc08e3e',
        3,
        'TILE',
        31,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '4fb826c2-ec37-4e9c-ab3d-a438c474cad3',
        3,
        'WOOD',
        1,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'fc8ab93c-351c-4313-b81e-c4be8ce78983',
        4,
        'BRICK',
        3,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'a39d02cb-8e50-4bc2-96a3-025d727781c8',
        4,
        'CONCRETE',
        1450,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '83003cba-1ab9-446c-81c2-445bbdff3ed7',
        4,
        'MUD',
        324,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '081386bf-7e1b-4bfa-aef4-273866b7dbba',
        4,
        'TILE',
        36,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'f874d8bc-2627-4127-8519-8019de57a687',
        4,
        'WOOD',
        19,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'da02b758-3806-43bf-98b0-fca892c0fd57',
        5,
        'BRICK',
        60,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '1d47d3c2-36bf-48cb-8be1-16a523e3f7f2',
        5,
        'CONCRETE',
        676,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'b454f911-bbd9-4df2-b978-85af1a6868ee',
        5,
        'MUD',
        1104,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '3b4da388-76fa-4d74-9a78-1eb2fb221b20',
        5,
        'TILE',
        4,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '72f47a76-c82a-4cac-ac4e-3353088e614a',
        5,
        'WOOD',
        4,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'db21a227-2a93-476d-8d98-9cb26de566ba',
        6,
        'BRICK',
        14,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '7a71a7aa-6d23-416f-a019-de59f1891653',
        6,
        'CONCRETE',
        868,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '9746d31b-951f-4b28-b1f3-6de6c557af6a',
        6,
        'MUD',
        1079,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '7f2cb5a6-fd7f-4de2-a26c-898bb73f3eeb',
        6,
        'OTHER',
        1,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'b5df3cd0-20a6-4341-b3e1-ec744a1f741c',
        6,
        'TILE',
        9,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'dfde7580-3f01-47e5-b0fc-c7d2b9827024',
        7,
        'BRICK',
        88,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '5d6acf59-911d-407c-a7ba-d280154dbac7',
        7,
        'CONCRETE',
        929,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'df559ceb-de9a-4c51-8afc-3680a0feaa7a',
        7,
        'MUD',
        1342,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'ee987e3c-8226-4ff5-8c81-663885efc661',
        7,
        'TILE',
        28,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '6d81dcdf-37cb-4ec2-802e-329aa4039d46',
        7,
        'WOOD',
        20,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'bbfcfb02-cffd-42d2-b1ba-eb6d08efad98',
        8,
        'BRICK',
        120,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        '74fcf9a7-d530-4061-8649-0df5396d0f7d',
        8,
        'CONCRETE',
        638,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'ded86377-7ef4-481b-9560-b265b65eeefa',
        8,
        'MUD',
        929,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'db33cd60-35b1-40d2-a14d-1b87ad897b35',
        8,
        'OTHER',
        2,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'ee1f84ab-25d6-4513-8f0c-163150f19bf6',
        8,
        'TILE',
        75,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    INSERT INTO acme_ward_wise_household_floor 
    (id, ward_number, floor_type, households, created_at, updated_at)
    VALUES (
        'c99d8d18-bc67-4b46-925a-c495efdde35e',
        8,
        'WOOD',
        126,
        '2025-05-26 14:42:54',
        '2025-05-26 14:42:54'
    );
    

    END IF;
END
$$;

