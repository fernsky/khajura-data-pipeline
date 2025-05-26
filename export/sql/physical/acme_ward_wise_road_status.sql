-- Generated SQL script
-- Date: 2025-05-26 20:05:14


-- Check if acme_ward_wise_road_status table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_road_status'
    ) THEN
        CREATE TABLE acme_ward_wise_road_status (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            road_status VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_road_status) THEN


    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'd7d89559-febc-42ed-a2dc-fd0d0ce38334',
        1,
        'BLACK_TOPPED',
        762,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '284f6d91-1b21-4955-a433-80f0d63f3d24',
        1,
        'DIRT',
        5,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'bb113b8f-e6ef-4484-bdf7-4a1cf1b5c29d',
        1,
        'GORETO',
        2,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'bb49275f-965d-454d-a2bb-d3d9585e5b63',
        1,
        'GRAVELED',
        141,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'c71f4302-718a-4d91-bf4a-afbb930bcb84',
        2,
        'BLACK_TOPPED',
        1494,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'f6d259e1-224f-4bc1-bc1e-8bc1ec10b4de',
        2,
        'DIRT',
        157,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '8be9cfeb-3dbb-4043-a2f2-83380223afdd',
        2,
        'GORETO',
        71,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '3b5e676e-ef1c-45e9-a6ad-ecf00fdc7233',
        2,
        'GRAVELED',
        882,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'b30b250f-5f7c-4ebf-93a4-5c7323527695',
        2,
        'OTHER',
        7,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'f7da1efd-5aa2-4101-bc77-0d9ee93f287d',
        3,
        'BLACK_TOPPED',
        1168,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '6dbae55a-2261-439a-bc6d-b8a3dbb540d2',
        3,
        'DIRT',
        77,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'b6644e9d-f5ac-4184-97d1-8dcf2f6d5bc8',
        3,
        'GORETO',
        26,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '0d7a7aa1-fae8-4115-9e43-a8b179334946',
        3,
        'GRAVELED',
        789,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '0e71f616-bb8e-461d-b621-1371d3d40799',
        3,
        'OTHER',
        1,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '44319f9d-4b48-46da-ba37-0d79cbb3b7ce',
        4,
        'BLACK_TOPPED',
        1133,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'a36c4234-9dba-4960-89e1-68fd8145c242',
        4,
        'DIRT',
        235,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'aac13b4c-a589-4a02-9d6b-086497e63b2e',
        4,
        'GORETO',
        2,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '447a563a-99e2-492b-9684-babe26047c02',
        4,
        'GRAVELED',
        457,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '7d362b6e-19ba-4162-a703-7f722b04cf56',
        4,
        'OTHER',
        5,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'b36b3708-b533-48fc-9aee-34d4b597a715',
        5,
        'BLACK_TOPPED',
        918,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '72fab2e3-2aaa-4d0e-8c42-f6f8be433e12',
        5,
        'DIRT',
        148,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'bf8b8413-c327-42d3-8c47-dc891c2a7f15',
        5,
        'GORETO',
        44,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'b056ecb1-1be2-4986-a19c-390f914c24df',
        5,
        'GRAVELED',
        735,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'd8bd5d25-11ea-45cf-b18a-ebb016336e53',
        5,
        'OTHER',
        3,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '642bad5a-a89d-468d-8e6e-29c360854dfc',
        6,
        'BLACK_TOPPED',
        546,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'f7e58df5-01d4-45b4-b6ec-e52a48931722',
        6,
        'DIRT',
        157,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '7ffef029-4ccb-48e8-a1b7-099af3509a7d',
        6,
        'GORETO',
        36,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'df73a248-7131-4006-94e9-82101d3d392c',
        6,
        'GRAVELED',
        1200,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'e89e2bc4-9e91-4e66-8f20-51135cbbc85b',
        6,
        'OTHER',
        32,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'b69f9d0a-b719-48d2-915e-8687487817bb',
        7,
        'BLACK_TOPPED',
        1099,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '6966797d-91b8-4304-a462-2d450a116d7e',
        7,
        'DIRT',
        772,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '1f00dd2f-6387-4372-980c-cc3e55dcdb01',
        7,
        'GORETO',
        48,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '49d7a966-615c-437a-9945-a60e3b6241fa',
        7,
        'GRAVELED',
        476,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '17108e6d-5b35-48bd-81c9-9ae388f2e57c',
        7,
        'OTHER',
        12,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '9e95f4d9-a060-4fb9-b388-5117f78fffc0',
        8,
        'BLACK_TOPPED',
        737,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '6026938a-0daa-4035-bca6-ff5c384a4615',
        8,
        'DIRT',
        281,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        'f01d91d0-71ca-41f1-ae23-a72b3b7c5e03',
        8,
        'GORETO',
        102,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    INSERT INTO acme_ward_wise_road_status 
    (id, ward_number, road_status, households, created_at, updated_at)
    VALUES (
        '31c90ce4-0abd-48fc-9b85-15b9a7a43ce6',
        8,
        'GRAVELED',
        770,
        '2025-05-26 20:05:14',
        '2025-05-26 20:05:14'
    );
    

    END IF;
END
$$;

