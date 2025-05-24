-- Generated SQL script
-- Date: 2025-05-24 21:15:56


-- Check if acme_ward_wise_time_to_market_center table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'time_to_market_center_type'
    ) THEN
        CREATE TYPE time_to_market_center_type AS ENUM (
            'UNDER_15_MIN', 
            'UNDER_30_MIN', 
            'UNDER_1_HOUR', 
            '1_HOUR_OR_MORE'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_time_to_market_center'
    ) THEN
        CREATE TABLE acme_ward_wise_time_to_market_center (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            time_to_market_center time_to_market_center_type NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_time_to_market_center) THEN


    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '7411e865-ca1d-4143-944a-6984440de4d4',
        1,
        '1_HOUR_OR_MORE',
        294,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'f21b9fd0-e154-42d1-9a26-4c1af9f2726f',
        1,
        'UNDER_15_MIN',
        145,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'c10234c4-d1e9-492d-b5f1-4caecbc23259',
        1,
        'UNDER_1_HOUR',
        145,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '448b5f83-8449-4451-9771-ab40b4808cae',
        1,
        'UNDER_30_MIN',
        326,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '51498a54-d4a6-43b3-8888-232b3e72bd70',
        2,
        '1_HOUR_OR_MORE',
        2,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '51aff2d7-ed83-49ee-bc8f-1ef28060ecb5',
        2,
        'UNDER_15_MIN',
        2015,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'd9dd37f5-a523-4a49-a724-43794df0bdcf',
        2,
        'UNDER_1_HOUR',
        168,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '958b804e-e08a-4c5b-9981-31e0448e7599',
        2,
        'UNDER_30_MIN',
        426,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '8b15400b-093f-4180-b1fc-aa6bf602ee9c',
        3,
        '1_HOUR_OR_MORE',
        4,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '9c1e7b61-f3eb-474c-b63a-67fca3972f21',
        3,
        'UNDER_15_MIN',
        1460,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'dde3bef2-0ec6-40e3-8fa6-a9002d89305e',
        3,
        'UNDER_1_HOUR',
        44,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '9b8c5bff-59ed-4bb5-a5eb-11c2ec1afc0d',
        3,
        'UNDER_30_MIN',
        553,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '05db466b-347f-4333-b8ce-280d658f645a',
        4,
        '1_HOUR_OR_MORE',
        10,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '8ca4f441-a9eb-4574-8a6e-1d30a21a51b5',
        4,
        'UNDER_15_MIN',
        1147,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'de35b768-52fb-4e12-8e92-31095684a5fb',
        4,
        'UNDER_1_HOUR',
        51,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'b2590a11-4f21-4d6d-9782-6da04bb9ef88',
        4,
        'UNDER_30_MIN',
        624,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'bce271ce-d02c-4fa0-b8de-3ceea46e9ad6',
        5,
        '1_HOUR_OR_MORE',
        46,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '2a809948-5335-477c-b0c9-30396589e295',
        5,
        'UNDER_15_MIN',
        640,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '4d8b0a51-107d-4d8c-b613-2a346e8b661d',
        5,
        'UNDER_1_HOUR',
        469,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '3562b6fa-3533-4931-b3f2-8f1561e534dc',
        5,
        'UNDER_30_MIN',
        693,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '78402fc9-de72-4951-a7ad-5c844235c559',
        6,
        '1_HOUR_OR_MORE',
        174,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '12102f9b-341b-44a7-97d6-7e03f7e25a31',
        6,
        'UNDER_15_MIN',
        190,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'af23d4c2-b8d1-4f05-a06e-2f3a54724a1a',
        6,
        'UNDER_1_HOUR',
        286,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'e10a39fb-5134-476d-9665-1412866bc7a5',
        6,
        'UNDER_30_MIN',
        1321,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'e8033a14-b8ba-4297-82f5-d74888ee4dff',
        7,
        '1_HOUR_OR_MORE',
        16,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '5ed3e6e7-1699-4be4-a780-e23ca027a9a4',
        7,
        'UNDER_15_MIN',
        614,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'be1097d0-b2c1-464a-9f55-78cd5f78d698',
        7,
        'UNDER_1_HOUR',
        1051,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '551874b1-5542-4504-98ca-27fd621477ab',
        7,
        'UNDER_30_MIN',
        726,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '8e8857d1-b005-489e-9ec1-9287b1eba9c9',
        8,
        '1_HOUR_OR_MORE',
        73,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'b274798b-26ff-4b25-96e3-7e6ba15ff1a7',
        8,
        'UNDER_15_MIN',
        1024,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        '738da03a-2fb2-4813-9c72-427f24f5b9eb',
        8,
        'UNDER_1_HOUR',
        178,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    INSERT INTO acme_ward_wise_time_to_market_center 
    (id, ward_number, time_to_market_center, households, updated_at, created_at)
    VALUES (
        'c756721d-7896-4390-9ce8-2b172a1ac3d6',
        8,
        'UNDER_30_MIN',
        615,
        '2025-05-24 21:15:56',
        '2025-05-24 21:15:56'
    );
    

    END IF;
END
$$;

