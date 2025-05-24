-- Generated SQL script
-- Date: 2025-05-24 13:19:57


-- Check if acme_ward_wise_delivery_places table exists, if not create it
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
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_delivery_places'
    ) THEN
        CREATE TABLE acme_ward_wise_delivery_places (
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_delivery_places) THEN


    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '317bd839-3104-4bea-970d-9b8ce04c78c0',
        1,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        16,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '99b84563-4ec4-45ab-af9c-bbbe7ef85006',
        1,
        'HOUSE',
        1,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '27d60d7a-f303-4a11-bc4a-7be9138138b8',
        1,
        'PRIVATE_HEALTH_INSTITUTION',
        10,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'ac375f37-95b6-4bba-a572-399db5504476',
        2,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        197,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '660e4d40-aa11-4174-a5fd-6f3288857827',
        2,
        'HOUSE',
        39,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '8c31c81f-64bf-4ba9-9e2a-aea81677cf57',
        2,
        'OTHER',
        1,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '5cace3c5-6492-4450-8cb8-258a55691d64',
        2,
        'PRIVATE_HEALTH_INSTITUTION',
        11,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '0ccbc040-9973-4a3f-9b91-181088632222',
        3,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        30,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '43b09a84-19fc-4490-a3f8-276f9370f418',
        3,
        'HOUSE',
        1,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'ed6f13de-4fb0-42f4-9877-745f19cab9e8',
        3,
        'OTHER',
        1,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '3cd66920-9296-4633-a866-b559938efed4',
        3,
        'PRIVATE_HEALTH_INSTITUTION',
        23,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '622369f5-51fa-4cf1-b25e-9971fc079bc4',
        4,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        22,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '08d3f5ff-1a1f-4069-8640-e4e7575a43be',
        4,
        'HOUSE',
        1,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '909ddf3c-d468-49fa-9b5e-a554a3ed2c01',
        4,
        'PRIVATE_HEALTH_INSTITUTION',
        11,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'c52e5a95-f3dc-49e2-bfc3-88dc212c7307',
        5,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        48,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'cf195801-da07-4e76-a895-09f5327bc699',
        5,
        'PRIVATE_HEALTH_INSTITUTION',
        9,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'b7d67a12-ef17-4537-9b24-b480840066e0',
        6,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        34,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '75f7b748-099c-491b-aa90-d393359d777e',
        6,
        'HOUSE',
        13,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'eb72728e-9c01-4e47-b98f-d4c73996e63e',
        6,
        'OTHER',
        9,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '5c991b86-24bc-4aad-9482-8f250d7aca56',
        6,
        'PRIVATE_HEALTH_INSTITUTION',
        77,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'a825563b-f809-4093-b01f-f97d361c37eb',
        7,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        124,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        'ec324163-7c65-482c-aaa3-0060f211e1df',
        7,
        'HOUSE',
        7,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '5d698b0d-d921-4e42-9180-d619564fafa6',
        7,
        'PRIVATE_HEALTH_INSTITUTION',
        4,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '63468b9e-5983-4ff8-a80c-969ef0c0e319',
        8,
        'GOVERNMENTAL_HEALTH_INSTITUTION',
        15,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '2bc58065-2028-42d2-8107-8147470f9b65',
        8,
        'HOUSE',
        3,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    INSERT INTO acme_ward_wise_delivery_places 
    (id, ward_number, delivery_place, population, updated_at, created_at)
    VALUES (
        '561fe63f-6108-483f-95f1-5f37c9546646',
        8,
        'PRIVATE_HEALTH_INSTITUTION',
        2,
        '2025-05-24 13:19:57',
        '2025-05-24 13:19:57'
    );
    

    END IF;
END
$$;

