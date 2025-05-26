-- Generated SQL script
-- Date: 2025-05-26 19:52:27


-- Check if acme_ward_wise_household_outer_wall table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_household_outer_wall'
    ) THEN
        CREATE TABLE acme_ward_wise_household_outer_wall (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            wall_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_household_outer_wall) THEN


    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '409f277b-cdfe-4613-b6f0-6b9183b23928',
        1,
        'BAMBOO',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '59e34868-cc7a-4525-84df-6b2125986042',
        1,
        'CEMENT_JOINED',
        675,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'c58f9947-d719-41b2-8818-f21368e21c8a',
        1,
        'MUD_JOINED',
        231,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '8bfcb23a-24ca-40c3-99cc-7c79c2901730',
        1,
        'OTHER',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '8f0679b1-5671-447a-9676-f9312bb4fa6d',
        2,
        'BAMBOO',
        6,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '89c5def7-3407-467d-aeac-19851c15a935',
        2,
        'CEMENT_JOINED',
        1873,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '538561e5-a5d7-4926-8c7d-f91065839f74',
        2,
        'MUD_JOINED',
        615,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'df017bf9-93c1-4d9a-9e0b-4d232b244809',
        2,
        'OTHER',
        45,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '9b2e9bb7-17e8-4e9d-b66c-52715441ae33',
        2,
        'TIN',
        7,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '15db3ed1-553a-4328-9fed-f5b42ceabade',
        2,
        'UNBAKED_BRICK',
        33,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'cce32d64-699e-4dcb-9c87-228c71595d74',
        2,
        'WOOD',
        32,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '7e4b9296-8fd0-4da7-87d3-fcd87ddb54e3',
        3,
        'BAMBOO',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '986885c0-6dab-4c7f-92ee-fed3181a92cc',
        3,
        'CEMENT_JOINED',
        1720,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'f86f0140-b2f0-48c2-bdc5-dc6fe61f1153',
        3,
        'MUD_JOINED',
        274,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'fb5986de-b293-4847-a7c3-c761e367a5e3',
        3,
        'OTHER',
        37,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '51ccb20e-66d2-4ec0-a2ad-cd1eafa27172',
        3,
        'TIN',
        21,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '8c9302f1-2e20-45ae-a071-5a5e91e27ca0',
        3,
        'WOOD',
        7,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '17b4a1fe-b243-4874-ba71-c3c72fbe841e',
        4,
        'BAMBOO',
        3,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'b6df152d-1c29-4ead-ba71-0f322fd6b4f4',
        4,
        'CEMENT_JOINED',
        1526,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'ea56b6d0-1e0c-45bc-a341-325006993ef6',
        4,
        'MUD_JOINED',
        276,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '71a7ce6b-0fb0-4304-9df3-6cd11bb7498a',
        4,
        'OTHER',
        20,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '98ac384b-0982-424b-aa1f-e50d56b2c572',
        4,
        'PREFAB',
        1,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '38fd5cf4-ec09-46d6-9fc5-41aafa77542d',
        4,
        'TIN',
        4,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'bfb3a6e9-1223-499d-ac30-676e9a1bca14',
        4,
        'UNBAKED_BRICK',
        1,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'f0758644-7233-4036-b76c-d617d979f04d',
        4,
        'WOOD',
        1,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'aa7b28e9-e2e3-4c39-94a6-62a7074eab29',
        5,
        'BAMBOO',
        10,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'f76927cf-e75b-449e-b796-2fc0f0603a58',
        5,
        'CEMENT_JOINED',
        1091,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '052bbc06-fb74-4560-bed7-d3c52db9fbfe',
        5,
        'MUD_JOINED',
        739,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'aa137256-c818-4225-b665-90d7bb11617a',
        5,
        'OTHER',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'd3881e12-db96-4a0e-9b2e-5e3d7fc66b5c',
        5,
        'UNBAKED_BRICK',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'd53e39c3-588a-4621-8bc0-60beb046e883',
        5,
        'WOOD',
        4,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '34757927-fd5d-4aed-b65c-1184ed534d24',
        6,
        'BAMBOO',
        3,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '379caffe-2a80-4b13-8958-6a1d2295ba56',
        6,
        'CEMENT_JOINED',
        1106,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'df68c257-abbf-427d-b476-414bc259035b',
        6,
        'MUD_JOINED',
        607,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '60151f97-8fb8-4e49-86f1-25bfd75a028f',
        6,
        'OTHER',
        252,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '00efe247-55ff-425c-a0aa-70e9f8ba6074',
        6,
        'TIN',
        1,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'a1fbd75b-3b0d-472a-9b67-162b28cad716',
        6,
        'UNBAKED_BRICK',
        1,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '40d2dbac-8943-4a7c-ac38-af1e6d9a0cbd',
        6,
        'WOOD',
        1,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '615ee2f9-4436-4c7d-9093-31b90ec0e94f',
        7,
        'BAMBOO',
        11,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '6d21e704-dc05-4902-9748-2ba643de52da',
        7,
        'CEMENT_JOINED',
        1615,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '26bc91b0-9d7d-4d44-b4a2-32efaa5379fa',
        7,
        'MUD_JOINED',
        680,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '9c0e2401-21b8-4bb4-a39a-71dbb6712d7f',
        7,
        'OTHER',
        43,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '7382524a-d647-49b9-a00d-68a38f215d96',
        7,
        'TIN',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '81dcf2c7-ae16-4363-b520-5cd2ac033d4c',
        7,
        'UNBAKED_BRICK',
        19,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '44e94a3e-9f86-4977-a2f6-cacb461f4907',
        7,
        'WOOD',
        37,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'a28fc554-25e6-42a8-b25b-4a5977fe0fb4',
        8,
        'BAMBOO',
        2,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '3031d807-0293-439e-bfbf-cc1df84df72a',
        8,
        'CEMENT_JOINED',
        1329,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '17ba2edd-04d7-46c9-b3cc-19ddf260d6f8',
        8,
        'MUD_JOINED',
        471,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '810cfdea-3483-47a9-907c-44c12febd0d9',
        8,
        'OTHER',
        27,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'f4c179a2-80d4-440f-ab84-e60347207745',
        8,
        'TIN',
        3,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        'f10ee0dd-b627-4767-9a03-80a247128f72',
        8,
        'UNBAKED_BRICK',
        45,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    INSERT INTO acme_ward_wise_household_outer_wall 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '12547c20-3ad6-4056-abef-148dd4d34746',
        8,
        'WOOD',
        13,
        '2025-05-26 19:52:27',
        '2025-05-26 19:52:27'
    );
    

    END IF;
END
$$;

