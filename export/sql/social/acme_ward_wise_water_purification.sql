-- Generated SQL script
-- Date: 2025-05-27 20:26:21


-- Check if acme_ward_wise_water_purification table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_water_purification'
    ) THEN
        CREATE TABLE acme_ward_wise_water_purification (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            water_purification VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_water_purification) THEN


    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '5ae73206-94e6-4c09-98f0-6a516fcf42a4',
        1,
        'BOILING',
        1,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '89aeabcd-2e5e-4fd3-9447-7ec4acbe0594',
        1,
        'CHEMICAL_PIYUSH',
        6,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '0981f0d8-3b32-4b49-911a-e05bbe56b251',
        1,
        'FILTERING',
        69,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'fc88e3dd-b0dd-472a-b584-2d2329be09d6',
        1,
        'NO_ANY_FILTERING',
        833,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '2198f986-f6ab-41f0-822f-7e07fa634e32',
        1,
        'OTHER',
        1,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '6dd8de88-eeb3-4033-ab85-954937c048ec',
        2,
        'BOILING',
        291,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'bf96e370-f3d3-4959-8520-fcd75ba13373',
        2,
        'CHEMICAL_PIYUSH',
        26,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '215fd71e-a8cc-4e35-854c-cf3262d0944f',
        2,
        'FILTERING',
        127,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'daf4734a-eaf6-4b73-97de-c03c70604b84',
        2,
        'NO_ANY_FILTERING',
        2165,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '3325d82e-fdbe-498c-b299-eb0402568ae1',
        2,
        'OTHER',
        2,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'dbf41b66-ed2d-4df6-a739-852e2fe9d98e',
        3,
        'BOILING',
        17,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'a8629a7e-f563-47a5-8203-a3577b5ef322',
        3,
        'CHEMICAL_PIYUSH',
        6,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '825dd0eb-84a2-4b1e-a449-c85aec7a5d3b',
        3,
        'FILTERING',
        397,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'cf86a521-93d2-4ab8-afb3-c830a6846010',
        3,
        'NO_ANY_FILTERING',
        1641,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'aa5556d8-ffd3-47af-83b5-3b07980435b7',
        4,
        'BOILING',
        225,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'cfa7972f-dfa6-434c-a18d-6b82fb7e7c0a',
        4,
        'CHEMICAL_PIYUSH',
        36,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '702b556f-b423-4a74-9b9f-d9d8b324ce21',
        4,
        'FILTERING',
        98,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '8bb78e88-1910-4bb6-8aa9-8f2664218ae6',
        4,
        'NO_ANY_FILTERING',
        1443,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '97adc39f-301e-4a4a-a197-b890a5293ea2',
        4,
        'OTHER',
        30,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'e9294587-9205-43cc-a9a9-44203f8c1fe4',
        5,
        'CHEMICAL_PIYUSH',
        3,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '0f2df3d0-80ae-488d-b850-ac2273015996',
        5,
        'FILTERING',
        9,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '48194231-2cf4-4941-9e52-0865920938e8',
        5,
        'NO_ANY_FILTERING',
        1834,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '63aaa865-ec7c-4e37-9559-28f30058ff66',
        5,
        'OTHER',
        2,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '695dd0a1-aeb5-4ee8-b451-09171e3866ce',
        6,
        'BOILING',
        1,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '094db1ed-ec1b-4f78-b8b1-26829ac99801',
        6,
        'CHEMICAL_PIYUSH',
        83,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '3dcd5b13-65fb-4771-9090-7a96aadf76f9',
        6,
        'FILTERING',
        154,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        'f8cdb339-7c52-43aa-a7c5-ebb1a44add3d',
        6,
        'NO_ANY_FILTERING',
        1733,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '8742709d-68e3-4875-a39e-2e61b89c0995',
        7,
        'BOILING',
        152,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '3504ffd6-a2e9-493a-bef6-c0fbda920c82',
        7,
        'CHEMICAL_PIYUSH',
        30,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '8d3505d7-0036-4388-b039-3ded70023493',
        7,
        'FILTERING',
        68,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '2973f7df-8ec7-4571-b244-1b3c9e203151',
        7,
        'NO_ANY_FILTERING',
        2157,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '3b84550c-a809-47a0-a32d-dd5296c91b1d',
        8,
        'BOILING',
        191,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '90b9d7c8-9bf9-4f32-ae37-13fc68722f09',
        8,
        'CHEMICAL_PIYUSH',
        82,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '80d7ba5c-2cf3-4e50-a955-ab70eae7ccfc',
        8,
        'FILTERING',
        122,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '96722647-5787-4651-8029-f904c92aa959',
        8,
        'NO_ANY_FILTERING',
        1475,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    INSERT INTO acme_ward_wise_water_purification 
    (id, ward_number, water_purification, households, created_at, updated_at)
    VALUES (
        '86d4b0e5-f6b6-4239-8fb6-9204fa7f8dbf',
        8,
        'OTHER',
        20,
        '2025-05-27 20:26:21',
        '2025-05-27 20:26:21'
    );
    

    END IF;
END
$$;

