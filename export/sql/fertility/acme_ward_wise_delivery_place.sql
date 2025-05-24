-- Generated SQL script
-- Date: 2025-05-24 13:13:42


-- Check if acme_ward_wise_delivery_place table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'recent_delivery_location_type'
    ) THEN
        CREATE TYPE recent_delivery_location_type AS ENUM (
            'HOUSE',
            'GOVERNMENTAL_HEALTH_INSTITUTION',
            'PRIVATE_HEALTH_INSTITUTION',
            'OTHER'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_delivery_place'
    ) THEN
        CREATE TABLE acme_ward_wise_delivery_place (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            recent_delivery_location recent_delivery_location_type NOT NULL,
            population INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_delivery_place) THEN


    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '68f0f149-20ff-48f9-9c1d-effbbd8f5d92',
        1,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        16,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '77f6ed4a-1dce-47a4-bd0b-3559c22da959',
        1,
        'HOUSE',
        1,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'db23bde1-1285-4e1f-9c2d-f22ae4a2f41a',
        1,
        'PRIVATE_HEALTH_INSTITUTION',
        10,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'cea9352b-7d37-4f86-b509-94297c6cde62',
        2,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        197,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '6f03f754-b68d-472f-b494-84e3a46df178',
        2,
        'HOUSE',
        39,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '79d4f9e2-5fb5-4281-9869-e8615c5aa286',
        2,
        'OTHER',
        1,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '4a205289-7b58-493b-85ab-5f3cfa5f9e1a',
        2,
        'PRIVATE_HEALTH_INSTITUTION',
        11,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'a912322e-c92f-4577-b658-e6fe630342c5',
        3,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        30,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '0211a6d6-d509-4759-abc6-422b96bd334f',
        3,
        'HOUSE',
        1,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'e00e88b1-0040-4283-bbad-4d99730d497b',
        3,
        'OTHER',
        1,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'bcbb0946-c47d-497a-9c70-0618b17a945f',
        3,
        'PRIVATE_HEALTH_INSTITUTION',
        23,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '5df5ec27-1f58-41b7-9f88-c32b26fceef2',
        4,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        22,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '10c72f91-cec2-4e93-8db1-b6966e8bc6a0',
        4,
        'HOUSE',
        1,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '3ca5ba24-4d35-4e74-a48c-5b5205ca3b9e',
        4,
        'PRIVATE_HEALTH_INSTITUTION',
        11,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'd1567854-c0a8-4b46-82e4-307c234043a1',
        5,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        48,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '0b323a91-e141-40ab-a070-7e3c3aa90f2f',
        5,
        'PRIVATE_HEALTH_INSTITUTION',
        9,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'e1387517-2ccc-4dec-9acd-d4b39fb4eb35',
        6,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        34,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'd77a8be6-94cd-4949-8078-689924f55fa5',
        6,
        'HOUSE',
        13,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '4d6b9b3d-e435-44ed-b80d-0e487e8a2e48',
        6,
        'OTHER',
        9,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'b1407eff-5d75-46f2-b0b5-87c0cc0c3ca2',
        6,
        'PRIVATE_HEALTH_INSTITUTION',
        77,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '63257438-c918-4e16-bd31-37454386613d',
        7,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        124,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'ed2fd8ae-caf2-4fe5-9b82-8b3ec310bd52',
        7,
        'HOUSE',
        7,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '9e20f71a-2aee-499f-894e-abf5716dde08',
        7,
        'PRIVATE_HEALTH_INSTITUTION',
        4,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '0fe0e4f5-aca9-48d1-8382-5aeab4510fd4',
        8,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        15,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        'd451c9d6-19f1-4e48-8f33-2fe14577bb5c',
        8,
        'HOUSE',
        3,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    INSERT INTO acme_ward_wise_delivery_place 
    (id, ward_number, recent_delivery_location, population, updated_at, created_at)
    VALUES (
        '252720a0-db09-4dfe-8a9e-04a5eef77ee0',
        8,
        'PRIVATE_HEALTH_INSTITUTION',
        2,
        '2025-05-24 13:13:42',
        '2025-05-24 13:13:42'
    );
    

    END IF;
END
$$;

