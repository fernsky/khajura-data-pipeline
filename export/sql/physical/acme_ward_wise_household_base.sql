-- Generated SQL script
-- Date: 2025-05-26 14:25:03


-- Check if acme_ward_wise_household_base table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_household_base'
    ) THEN
        CREATE TABLE acme_ward_wise_household_base (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            base_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_household_base) THEN


    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '9a1e7b0b-4c31-4705-8e10-9a3a90ca616a',
        1,
        'CEMENT_JOINED',
        262,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'e28e6708-9fc8-495f-a743-09b0e74f8e51',
        1,
        'CONCRETE_PILLAR',
        406,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '8b67dfbf-7dc8-4485-b843-35bec916d89b',
        1,
        'MUD_JOINED',
        238,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'd1a82445-94a9-436d-abcf-f1c35391a607',
        1,
        'OTHER',
        2,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'b0cf3c66-efce-4de5-a39e-66a42b8c6041',
        1,
        'WOOD_POLE',
        2,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'bf47261c-ad14-43ed-a2f5-3c595aabf0d4',
        2,
        'CEMENT_JOINED',
        1447,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '00e9d88c-ac82-4a85-b5ee-3554222d8784',
        2,
        'CONCRETE_PILLAR',
        384,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '76cffb6a-4841-45ba-ba70-f0f21be390f0',
        2,
        'MUD_JOINED',
        673,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '04edb016-dcc6-4f5d-840d-6a4b45b96201',
        2,
        'OTHER',
        50,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '5b4b64d5-99a4-4a8a-b205-447b8ca30fc1',
        2,
        'WOOD_POLE',
        57,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '33fcd1e9-37b4-4832-9b92-bc878644368a',
        3,
        'CEMENT_JOINED',
        607,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '145b3bb6-9941-48b1-869b-b058a9d44e96',
        3,
        'CONCRETE_PILLAR',
        1123,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '0dba20b8-0c19-49ae-aae0-629f6965176b',
        3,
        'MUD_JOINED',
        280,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '827cfc7a-1974-4572-82ee-55b01362ffd7',
        3,
        'OTHER',
        19,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '284ef3e6-e85b-41be-a534-aa4c0f2ccb13',
        3,
        'WOOD_POLE',
        32,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '8c3049f2-cb91-4a48-a897-9f342cadde17',
        4,
        'CEMENT_JOINED',
        1142,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '4e754c96-d25c-4393-be4a-55f1a0b2acd0',
        4,
        'CONCRETE_PILLAR',
        377,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '68ede8bf-6c06-4439-a972-16a5628b2f8d',
        4,
        'MUD_JOINED',
        283,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'b503b51f-f483-4891-a99a-1f2680cf1467',
        4,
        'OTHER',
        22,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'b2377159-b35b-4308-a9d5-acd04d93156a',
        4,
        'WOOD_POLE',
        8,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '8463cd9e-b588-46da-9580-da4231f3e32c',
        5,
        'CEMENT_JOINED',
        982,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'ec4b58d9-37ae-4d3b-874f-2630d9786c62',
        5,
        'CONCRETE_PILLAR',
        93,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'cafb634a-dee6-4885-b856-892eff0ea82a',
        5,
        'MUD_JOINED',
        759,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '661ad977-3564-4ba5-a9de-95577e621302',
        5,
        'OTHER',
        6,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '0788052c-66e1-4979-8151-18bdd39ca78c',
        5,
        'WOOD_POLE',
        8,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '4a2429c8-5415-4248-8f8d-2678ff17e572',
        6,
        'CEMENT_JOINED',
        932,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '554ad414-ab3b-4f06-a20e-49931f8e60e6',
        6,
        'CONCRETE_PILLAR',
        177,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '2fc30218-112b-478c-846c-93a893f15b5e',
        6,
        'MUD_JOINED',
        600,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'cdca3e76-f97f-48e0-bdb1-aca1339ebc4b',
        6,
        'OTHER',
        253,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '3429b935-1871-4073-9255-387fbf51f20a',
        6,
        'WOOD_POLE',
        9,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '19aca217-3b1a-4800-8ace-178ce9d86dd3',
        7,
        'CEMENT_JOINED',
        1533,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '78b850cd-c4e7-4cbe-a66d-d7e3f6f8275e',
        7,
        'CONCRETE_PILLAR',
        83,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'a2a2040f-5262-44a0-9f27-3f84350abf14',
        7,
        'MUD_JOINED',
        704,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'c66e34ad-89a6-4462-8cb2-fca0158bee5b',
        7,
        'OTHER',
        42,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '5ec2eb0f-a520-44bf-a50e-16fefbed177a',
        7,
        'WOOD_POLE',
        45,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'fb9facc3-d08c-4c3e-b513-2e6d17c394da',
        8,
        'CEMENT_JOINED',
        1051,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '2eec851d-d4d2-4e16-88b0-e66d770b2e7b',
        8,
        'CONCRETE_PILLAR',
        249,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '0a2febd7-d6b4-43db-8a85-0ad4647e4d93',
        8,
        'MUD_JOINED',
        512,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        'a811e68f-7e8b-4cb1-a8cf-b21439e8ee03',
        8,
        'OTHER',
        76,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    INSERT INTO acme_ward_wise_household_base 
    (id, ward_number, base_type, households, created_at, updated_at)
    VALUES (
        '762843cb-0ae2-4bae-95d2-9b6c3de514b9',
        8,
        'WOOD_POLE',
        2,
        '2025-05-26 14:25:03',
        '2025-05-26 14:25:03'
    );
    

    END IF;
END
$$;

