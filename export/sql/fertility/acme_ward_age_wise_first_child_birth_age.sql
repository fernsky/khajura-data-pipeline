-- Generated SQL script
-- Date: 2025-05-24 14:21:36


-- Check if acme_ward_age_wise_first_child_birth_age table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'first_child_birth_age_group'
    ) THEN
        CREATE TYPE first_child_birth_age_group AS ENUM (
            'AGE_15_19',
            'AGE_20_24',
            'AGE_25_29',
            'AGE_30_34',
            'AGE_35_39',
            'AGE_40_44',
            'AGE_45_49'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_age_wise_first_child_birth_age'
    ) THEN
        CREATE TABLE acme_ward_age_wise_first_child_birth_age (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            first_child_birth_age_group first_child_birth_age_group NOT NULL,
            population INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW(),
            UNIQUE(ward_number, first_child_birth_age_group)
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_age_wise_first_child_birth_age) THEN


    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '0c8f4223-6c30-4655-95e5-de8cdf36c6c1',
        1,
        'AGE_15_19',
        355,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '2c985203-4bf0-46dd-9979-9cb8845011da',
        1,
        'AGE_20_24',
        382,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '0b70146b-5bd3-4a0d-8e10-19c9806b2859',
        1,
        'AGE_25_29',
        72,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'c6663bd5-1d89-41f4-b3c7-e6f7a8edc323',
        1,
        'AGE_30_34',
        20,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'e52356cd-b49f-4594-bd37-cbaee733a9a7',
        1,
        'AGE_35_39',
        7,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '8c3ab769-83f4-4494-9b31-b2df60fbaccd',
        1,
        'AGE_40_44',
        1,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '6b07339f-136a-4bac-96b0-eedc32d14a7e',
        2,
        'AGE_15_19',
        713,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '9a9670fc-6e8c-4dce-8756-1786f71523da',
        2,
        'AGE_20_24',
        1208,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'e01f2077-4250-43c2-90ae-ba13daf78d72',
        2,
        'AGE_25_29',
        149,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'f6c0b373-6166-4269-86d4-6ec6645bd904',
        2,
        'AGE_30_34',
        21,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'cac031f3-08a0-45ec-9423-238d87e7e62d',
        2,
        'AGE_35_39',
        2,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'a6ac5221-14bc-4689-8747-03488b70ef0a',
        3,
        'AGE_15_19',
        508,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '0dcd1dcb-fde6-411a-b269-a3adfdbddd1a',
        3,
        'AGE_20_24',
        1006,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '8a5fd0b7-5b19-45f1-8dca-7d7df35a901b',
        3,
        'AGE_25_29',
        176,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '3bad9b87-ec43-4ab7-ab7f-0a5c9e830f33',
        3,
        'AGE_30_34',
        23,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '0e0fb020-8468-4de8-a8c7-80013d992065',
        3,
        'AGE_35_39',
        6,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'f571ef20-e797-460d-af7f-eba1cec029af',
        3,
        'AGE_40_44',
        2,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '25376bf6-485f-497c-8285-8556f02b8d8b',
        4,
        'AGE_15_19',
        275,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '301f8cec-fbb5-4bc6-acd6-603b1993b5f3',
        4,
        'AGE_20_24',
        493,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '2c44b8bb-8b85-419a-896f-5935e12da7f6',
        4,
        'AGE_25_29',
        33,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'd274f5f6-dbb3-4242-ae87-c52746ff3b47',
        4,
        'AGE_30_34',
        8,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'fd2953c8-c731-4258-965d-05ed7f938968',
        4,
        'AGE_35_39',
        2,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '72693260-02fd-4b6a-a19e-92bed8c8905b',
        5,
        'AGE_15_19',
        344,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'ea0558be-5dab-4789-9ae0-2ec63ac0ab07',
        5,
        'AGE_20_24',
        632,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'ede2c6bf-b33c-4135-9bf4-9e36fdb8875c',
        5,
        'AGE_25_29',
        79,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '40b2d478-3abe-45df-9b6f-7f04a91ccc2b',
        5,
        'AGE_30_34',
        8,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'b3469101-d6c7-4f93-a7cd-a5444e9e0df4',
        5,
        'AGE_35_39',
        2,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '0599a427-fa94-441b-afca-7b4f4cd2b2c2',
        6,
        'AGE_15_19',
        665,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '4e24dca3-9ebf-4008-a74f-eff9bec9b1a1',
        6,
        'AGE_20_24',
        546,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'b04e83a7-4d62-484a-8f36-596f50159913',
        6,
        'AGE_25_29',
        64,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '010a6d23-594b-41b1-bb70-5bff09d47187',
        6,
        'AGE_30_34',
        9,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '7422fa3c-871c-4c19-903b-cd9d2676ff7d',
        6,
        'AGE_35_39',
        2,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'b696fd3d-cdef-4b49-a19f-3e84a48e7780',
        7,
        'AGE_15_19',
        426,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'cb4985c4-b004-4f6c-922f-ce249bc121bf',
        7,
        'AGE_20_24',
        928,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '7b66d8bd-f9fb-4f43-bd04-273a09c732b3',
        7,
        'AGE_25_29',
        100,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'e79e53b9-78bd-4100-b296-a3b9278396d7',
        7,
        'AGE_30_34',
        18,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '64cf4eab-119b-4b4b-8f0c-40544e6cede5',
        7,
        'AGE_35_39',
        2,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        '7dbc412a-86eb-4ed8-a937-683a9d627195',
        8,
        'AGE_15_19',
        331,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'd3b8e286-31bf-488a-a7f5-cfe82477a845',
        8,
        'AGE_20_24',
        414,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    INSERT INTO acme_ward_age_wise_first_child_birth_age 
    (id, ward_number, first_child_birth_age_group, population, updated_at, created_at)
    VALUES (
        'd2ffe791-c745-4a0e-a199-1e87f382e627',
        8,
        'AGE_25_29',
        19,
        '2025-05-24 14:21:36',
        '2025-05-24 14:21:36'
    )
    ON CONFLICT (ward_number, first_child_birth_age_group) 
    DO NOTHING;
    

    END IF;
END
$$;

