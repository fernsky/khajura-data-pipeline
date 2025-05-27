-- Generated SQL script
-- Date: 2025-05-27 20:36:51


-- Check if acme_ward_wise_toilet_type table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_toilet_type'
    ) THEN
        CREATE TABLE acme_ward_wise_toilet_type (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            toilet_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_toilet_type) THEN


    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '3a6848dc-812d-4fd1-aa8f-9aca65dd4adb',
        1,
        'FLUSH_WITH_SEPTIC_TANK',
        96,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '389879df-40e7-468f-8cd0-99248fdbc2e2',
        1,
        'NORMAL',
        674,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '571da23a-c323-4768-a323-c5ecb16769c5',
        1,
        'NO_TOILET',
        137,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'd0fc95f8-fda7-431d-a8ff-25e1d84dab92',
        1,
        'PUBLIC_EILANI',
        3,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '64375f9e-5b09-4289-a8d4-f0edf82be40c',
        2,
        'FLUSH_WITH_SEPTIC_TANK',
        1376,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'b89d82a0-b36d-4665-b2f1-2d573496cc92',
        2,
        'NORMAL',
        1001,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '04ed92f0-a4b7-4aa2-8af6-8f95d6f5c822',
        2,
        'NO_TOILET',
        226,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'fb72b79d-0b2e-4155-ac6f-512c4916df11',
        2,
        'PUBLIC_EILANI',
        8,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'fd67955b-a72c-4424-9a4a-a423ac9a0c8f',
        3,
        'FLUSH_WITH_SEPTIC_TANK',
        1149,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '61458a15-f23d-469b-8736-e5676d276a99',
        3,
        'NORMAL',
        859,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'aefa184e-970b-4b56-99cb-1e686996a028',
        3,
        'NO_TOILET',
        44,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'eadc763c-67ae-42d7-9f66-1191198a0a78',
        3,
        'OTHER',
        1,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'ad8f300f-9801-49b3-8c15-a4462bbf95fb',
        3,
        'PUBLIC_EILANI',
        8,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '030696f0-85f4-424a-8f11-8b5c1048bc13',
        4,
        'FLUSH_WITH_SEPTIC_TANK',
        847,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '05562865-20d4-4639-ac39-d25a97694faf',
        4,
        'NORMAL',
        821,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'd5fa06a2-a2df-4dd3-9029-c438e343af09',
        4,
        'NO_TOILET',
        141,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'fb2dfc35-b25a-46c5-9ed7-d00206d01618',
        4,
        'OTHER',
        2,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '8d7ee947-3e03-4288-94f9-950b87a03aeb',
        4,
        'PUBLIC_EILANI',
        21,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '71042164-039d-4f2a-851a-50d247c9a2f4',
        5,
        'FLUSH_WITH_SEPTIC_TANK',
        34,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'fc0ce49e-e10b-465d-91c1-d946eb8f3d11',
        5,
        'NORMAL',
        1757,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '8e1f867c-e0a6-4c66-a67b-4a6f69132b3f',
        5,
        'NO_TOILET',
        48,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'caa08537-2fe4-4696-9441-8cae4910c9a8',
        5,
        'OTHER',
        2,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'f31e1e6d-2f39-4558-b8ab-73b5bbc7d7cd',
        5,
        'PUBLIC_EILANI',
        7,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'cf56b22c-e70b-430a-9bfe-a9ac10ef732b',
        6,
        'FLUSH_WITH_SEPTIC_TANK',
        24,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '26c7c474-9be1-4a5b-837b-3b6422a0eedc',
        6,
        'NORMAL',
        1913,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '7c416eb4-79d9-40b0-8cbe-8db8038c488f',
        6,
        'NO_TOILET',
        13,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '2d444d91-0f51-418b-9755-51816516f67e',
        6,
        'OTHER',
        1,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'ad8541b8-e462-49f5-b26d-66feeb5e518f',
        6,
        'PUBLIC_EILANI',
        20,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'f2ac8771-0937-499d-9667-9fcab7ce7f2e',
        7,
        'FLUSH_WITH_SEPTIC_TANK',
        92,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '8f886ed4-4bad-4115-97dc-47669fee2013',
        7,
        'NORMAL',
        1917,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'ff323dea-079b-42cd-815d-3d6756ce8fd1',
        7,
        'NO_TOILET',
        372,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '9e19a6eb-2590-4b8c-8dd8-c92f38a8242f',
        7,
        'PUBLIC_EILANI',
        26,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '12975d75-6f37-4d33-baa1-23fab321c512',
        8,
        'FLUSH_WITH_SEPTIC_TANK',
        18,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '445fc2bf-d22f-4441-998d-8f1b1373d673',
        8,
        'NORMAL',
        1595,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'c923b7b7-4f8b-44e4-b8af-a5a392904658',
        8,
        'NO_TOILET',
        193,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        'd987ad17-592e-4a82-8107-20ddbe851bfc',
        8,
        'OTHER',
        3,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    INSERT INTO acme_ward_wise_toilet_type 
    (id, ward_number, toilet_type, households, created_at, updated_at)
    VALUES (
        '764404bc-65c0-4307-a89f-868aa547d544',
        8,
        'PUBLIC_EILANI',
        81,
        '2025-05-27 20:36:51',
        '2025-05-27 20:36:51'
    );
    

    END IF;
END
$$;

