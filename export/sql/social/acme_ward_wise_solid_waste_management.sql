-- Generated SQL script
-- Date: 2025-05-26 20:38:29


-- Check if acme_ward_wise_solid_waste_management table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_solid_waste_management'
    ) THEN
        CREATE TABLE acme_ward_wise_solid_waste_management (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            solid_waste_management VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_solid_waste_management) THEN


    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '70952886-e492-4acc-8c17-e0cc5cabeda8',
        1,
        'BURNING',
        573,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '2a5342d6-a522-498d-9515-f1e98efa9339',
        1,
        'COMPOST_MANURE',
        300,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '2486ccbd-40b4-435e-895a-64a60f8ce1df',
        1,
        'DIGGING',
        31,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'a5a2fe8c-0b41-44db-8394-fe582c22379f',
        1,
        'HOME_COLLECTION',
        1,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '73c2ee54-b1b8-4501-b71c-eb4d30817b06',
        1,
        'RIVER',
        3,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'f08e45ce-fb1a-4832-bcd1-2ac04ff55ce2',
        1,
        'WASTE_COLLECTING_PLACE',
        2,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '94dc0bd8-f830-416c-92f9-1e8da70f6e3d',
        2,
        'BURNING',
        1417,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '5d54ba35-01de-44da-ae9f-8fd34e30ae1c',
        2,
        'COMPOST_MANURE',
        145,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '9f99db32-be2a-486b-8adf-9cdae67e7afa',
        2,
        'DIGGING',
        547,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '0fec6244-bca3-48f9-9ac9-902b279811fd',
        2,
        'HOME_COLLECTION',
        21,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'a8d1fb76-c32b-4753-9d7f-52627e8fcdac',
        2,
        'RIVER',
        245,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '4f962e49-29d5-4cc5-84af-25564d7788af',
        2,
        'WASTE_COLLECTING_PLACE',
        236,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '3147d3c6-89ca-454c-a765-56c8523be120',
        3,
        'BURNING',
        1129,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'fd16b054-0a8e-4247-acc6-bdeb3fc2d773',
        3,
        'COMPOST_MANURE',
        35,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '233f93f8-275e-4859-bc04-2ded944c517b',
        3,
        'DIGGING',
        670,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '83017a59-59b4-40ae-91d9-5350982dd7fa',
        3,
        'HOME_COLLECTION',
        51,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'd1ecdbdc-d36d-4c03-a608-1d8dbeb44b50',
        3,
        'RIVER',
        6,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '0bf1b95f-9294-4c55-8956-34fe145cd84b',
        3,
        'ROAD_OR_PUBLIC_PLACE',
        1,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '0b6c9851-ae53-4685-9ec2-13fb02ae29cf',
        3,
        'WASTE_COLLECTING_PLACE',
        169,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'c837f683-be6b-4d41-9d4f-2550ec676180',
        4,
        'BURNING',
        1127,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '69bc0a37-7efe-41ce-a624-100582367bcb',
        4,
        'COMPOST_MANURE',
        39,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '380d9428-c0f1-4f69-ac00-0b2e7a1f4e75',
        4,
        'DIGGING',
        263,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '5b342cf8-df8c-477d-844d-713d91281b21',
        4,
        'HOME_COLLECTION',
        5,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'e26be609-adff-4fe9-8bd5-baaecb2ad65f',
        4,
        'RIVER',
        279,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'fd27d7e4-ad18-406b-9ec7-a629de0a11bb',
        4,
        'WASTE_COLLECTING_PLACE',
        119,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'fd8c7d7b-d44d-4f65-ab6a-e650a95c04c0',
        5,
        'BURNING',
        527,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'fd15c4c8-66a8-414c-9b0a-24ee4244f91d',
        5,
        'COMPOST_MANURE',
        342,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'e477a38d-d6fd-4da3-81c6-c24add1391c6',
        5,
        'DIGGING',
        591,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '7f40f9a8-b2b1-440f-af22-034e329da278',
        5,
        'HOME_COLLECTION',
        2,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'b5d15fcb-4758-4712-907c-eb2fb007de75',
        5,
        'OTHER',
        1,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'e7088d9d-0fa4-4da5-8ef1-b0d32202209b',
        5,
        'ROAD_OR_PUBLIC_PLACE',
        9,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'a837e309-c4a0-481f-8716-6d3382678352',
        5,
        'WASTE_COLLECTING_PLACE',
        376,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '423b28d3-60aa-45eb-ae9d-af20179e9240',
        6,
        'BURNING',
        1262,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'a2eb71ae-aca7-49aa-acbe-e990e78e8f12',
        6,
        'COMPOST_MANURE',
        429,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '113e1639-85ed-4cd3-8c08-c5b204a44323',
        6,
        'DIGGING',
        237,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '129fe622-ec9d-4d0e-8aeb-8734973e37d2',
        6,
        'HOME_COLLECTION',
        1,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'b9273334-cbfd-4002-9e53-980337c27925',
        6,
        'RIVER',
        32,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '390f1882-df4c-4ea7-9b6a-51d8662ee6ee',
        6,
        'WASTE_COLLECTING_PLACE',
        10,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '848a8c64-a7b8-49b8-9f80-1deef7f62324',
        7,
        'BURNING',
        493,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '9419b57b-db10-4bfe-b5f7-5e19e20a6a79',
        7,
        'COMPOST_MANURE',
        324,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '59116a8b-c8e7-4dd7-a0f4-ff9f9a3f2d13',
        7,
        'DIGGING',
        1472,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '1d5c059c-5f2e-4088-8ffb-f0249ea7b40a',
        7,
        'HOME_COLLECTION',
        12,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '06fb962f-7e5f-4ef2-a477-bb6b8918c645',
        7,
        'RIVER',
        1,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'fba646fe-e2d0-40bb-9b2d-ba35409f00a2',
        7,
        'ROAD_OR_PUBLIC_PLACE',
        4,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '94d77ba0-2bc9-483f-bf15-2011267baf4a',
        7,
        'WASTE_COLLECTING_PLACE',
        101,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '61efa201-5278-4425-85c9-1caeee8bb10c',
        8,
        'BURNING',
        852,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '523e91cb-1ccf-40ff-8b50-85ac22f65722',
        8,
        'COMPOST_MANURE',
        255,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '7b18d2b3-c72d-4c39-baa7-006a74ad8d09',
        8,
        'DIGGING',
        574,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'afe5ad54-6515-4054-bedd-686bc77a6caa',
        8,
        'HOME_COLLECTION',
        20,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'e611b959-ae82-457a-9e26-830039e283cc',
        8,
        'OTHER',
        6,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'be5c2490-e6fb-48eb-b316-7972bfec334c',
        8,
        'RIVER',
        15,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        'e204286e-3ec3-46f4-96c8-376c4349f575',
        8,
        'ROAD_OR_PUBLIC_PLACE',
        12,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    INSERT INTO acme_ward_wise_solid_waste_management 
    (id, ward_number, solid_waste_management, households, created_at, updated_at)
    VALUES (
        '1f82d5f1-5780-4444-8087-610657bf6adc',
        8,
        'WASTE_COLLECTING_PLACE',
        156,
        '2025-05-26 20:38:29',
        '2025-05-26 20:38:29'
    );
    

    END IF;
END
$$;

