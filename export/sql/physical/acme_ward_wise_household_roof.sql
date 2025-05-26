-- Generated SQL script
-- Date: 2025-05-26 19:59:20


-- Check if acme_ward_wise_household_roof table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_household_roof'
    ) THEN
        CREATE TABLE acme_ward_wise_household_roof (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            roof_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_household_roof) THEN


    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '57262c5c-6039-4436-8328-1af7427a8577',
        1,
        'CEMENT',
        600,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '68b9f5f6-6149-4bdb-987c-acbaded7abdb',
        1,
        'STONE',
        5,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '25791416-e3d6-4687-b8d9-77ca8cc6952f',
        1,
        'STRAW',
        6,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'a27b57c5-902a-4391-9bae-c6b53d4628b8',
        1,
        'TILE',
        88,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'b7d6cb8a-73a8-48c2-8ac1-f4a7e9b70ac7',
        1,
        'TIN',
        211,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'cad9410b-b531-4ce2-ae7e-f8e063b88213',
        2,
        'CEMENT',
        1550,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '7bead488-c7f4-4d6e-b19e-01a6f2179c80',
        2,
        'OTHER',
        3,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '61c84af7-7068-4700-8414-7643061a3d49',
        2,
        'STONE',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '9c087163-e8e5-4db2-89c0-3c02bb140227',
        2,
        'STRAW',
        37,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '5558aba4-a77e-47ab-b396-340c5c0c790d',
        2,
        'TILE',
        217,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '0098f5f1-2a3b-46d8-8b7c-bb23ac8924d6',
        2,
        'TIN',
        802,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'ed512692-5a68-4eaf-adde-7f48c9fe916a',
        2,
        'WOOD',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'f01c2355-5a37-42ac-b89f-110826d96a33',
        3,
        'CEMENT',
        1477,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'e559fc08-046a-4814-a2c2-4d1e12d33eb2',
        3,
        'STRAW',
        23,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'b353a054-7fc2-46f6-82b8-a8610298b039',
        3,
        'TILE',
        128,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '545fa5cf-c75a-4ee2-9710-8ecf0a6d5187',
        3,
        'TIN',
        432,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '3fc3b01c-600e-48c9-ac25-5ea554bc091f',
        3,
        'WOOD',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '5a867f17-c7b7-4076-834d-ecc97ca15e4f',
        4,
        'CEMENT',
        1393,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'fddb9ee6-2b4d-4319-836a-937cea9cfde8',
        4,
        'OTHER',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'da9648a9-20af-4bc1-b3d4-c484f4446a85',
        4,
        'STRAW',
        42,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'c7e8ddca-5e7e-4b69-ad45-a8d16c61affb',
        4,
        'TILE',
        100,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'dbd159b4-cf9d-4030-9c0d-1a2669a1dbdd',
        4,
        'TIN',
        294,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '73f02ed9-777e-4dd5-8007-9da19752fe64',
        4,
        'WOOD',
        2,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '6f3b94ef-c816-445e-a4fc-f5130aaf2a64',
        5,
        'CEMENT',
        1009,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'befd9b50-5e52-4033-a6ae-5c05bff9c999',
        5,
        'OTHER',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'b16bba52-743a-4fc3-a6aa-bf205140dcd0',
        5,
        'STRAW',
        160,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '0714f1c6-e4d8-4339-bd26-e1c5e9b6d085',
        5,
        'TILE',
        107,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'cf13219b-3cda-433a-a69c-a108888365f7',
        5,
        'TIN',
        571,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '250afca9-786e-4efe-9ff9-1eed4fb56850',
        6,
        'CEMENT',
        410,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '84f556d7-32e0-4be9-a8a9-18237bc7c723',
        6,
        'OTHER',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '29da0a3e-cd90-41d1-b047-6b26ceab49d6',
        6,
        'STRAW',
        92,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '47826b42-4c65-4362-b0d7-3b894f4e0c7e',
        6,
        'TILE',
        83,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'c1b52118-ff6d-41ad-a6b6-0b979af36318',
        6,
        'TIN',
        1385,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'e59825c2-f242-4a05-8976-afb48c8358cb',
        7,
        'CEMENT',
        1463,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'c686261d-f562-4051-894a-a0c386a320a3',
        7,
        'OTHER',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '0e6bcc7c-56e8-4e2d-ae26-a1a438da2dc5',
        7,
        'STRAW',
        72,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '3f6c05f3-f462-4117-9277-49b737d772d9',
        7,
        'TILE',
        111,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'ca2f0bfa-dadc-412d-a209-dde11e47e053',
        7,
        'TIN',
        758,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '8f441762-adb4-46d0-84da-629c3c93c8f3',
        7,
        'WOOD',
        2,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '3d676b3a-9f71-48e3-95cf-652312f46a51',
        8,
        'CEMENT',
        978,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '4091aea2-cfd4-4fd8-aecf-4880e7e86b14',
        8,
        'OTHER',
        4,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '220ef055-7b95-47a5-9bb7-f36fb0767c8d',
        8,
        'STONE',
        1,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'a4139937-15ab-4dd7-bf7d-b3fe5a3e98a2',
        8,
        'STRAW',
        126,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '40d63452-9940-4c0d-8f9c-3c7bd87a5833',
        8,
        'TILE',
        235,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        '988e4e71-cb93-48f5-83d1-9305635f65a3',
        8,
        'TIN',
        537,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    INSERT INTO acme_ward_wise_household_roof 
    (id, ward_number, roof_type, households, created_at, updated_at)
    VALUES (
        'd1d1172c-25ce-42e6-a7ab-0b8f63cb66bd',
        8,
        'WOOD',
        9,
        '2025-05-26 19:59:20',
        '2025-05-26 19:59:20'
    );
    

    END IF;
END
$$;

