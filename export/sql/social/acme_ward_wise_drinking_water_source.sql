-- Generated SQL script
-- Date: 2025-05-26 20:32:52


-- Check if acme_ward_wise_drinking_water_source table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_drinking_water_source'
    ) THEN
        CREATE TABLE acme_ward_wise_drinking_water_source (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            drinking_water_source VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_drinking_water_source) THEN


    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '3b0cee07-d1b3-4775-99b7-60d644af096a',
        1,
        'JAR',
        14,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '4f6695cc-6af3-4d31-9d4f-2cf257867c49',
        1,
        'TAP_INSIDE_HOUSE',
        3,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'fe25753a-5cb8-44cd-8560-f12d7318b17e',
        1,
        'TAP_OUTSIDE_HOUSE',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'f52f4c70-d8b3-4bde-b583-09ab9af93091',
        1,
        'TUBEWELL',
        877,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'ac4f2af9-291c-4531-ac5d-918dd2e1aa9f',
        2,
        'AQUIFIER_MOOL',
        134,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '213313b4-e931-47fc-8a77-6715aa764f83',
        2,
        'JAR',
        108,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'ddc79d5e-2551-40fb-81d6-9d5fb3bad37b',
        2,
        'OTHER',
        4,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '70cab09b-fd43-41f1-b8d1-26fe68cd0cc8',
        2,
        'RIVER',
        6,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '487cecda-0baf-4b51-83be-79c874f72c54',
        2,
        'TAP_INSIDE_HOUSE',
        1142,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'b3cf72f6-6efb-4560-8d26-f52c8e455a15',
        2,
        'TAP_OUTSIDE_HOUSE',
        505,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'f891eed0-9458-40f9-bc8c-8769454aab1c',
        2,
        'TUBEWELL',
        628,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '0b8d0bf2-43ae-497b-a39f-45c22a1c7a33',
        3,
        'AQUIFIER_MOOL',
        6,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'd5ffb1d0-e778-42a9-8aa4-3b196ab77296',
        3,
        'JAR',
        143,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '8015cafb-c7fc-4a57-a960-612740b627a1',
        3,
        'OTHER',
        106,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '3532f6a8-5752-4c4f-84f0-682cd76a3957',
        3,
        'RIVER',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '7782d6df-ed6a-4121-b971-1f9057dee885',
        3,
        'TAP_INSIDE_HOUSE',
        493,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'a3fdff45-0f13-4f5e-be5e-7c90ca040c82',
        3,
        'TAP_OUTSIDE_HOUSE',
        846,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '1981ed4e-0f29-4a47-ac8f-5d62018d52f1',
        3,
        'TUBEWELL',
        115,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'e7d13be0-2744-47c9-bc5b-6150193573b1',
        4,
        'AQUIFIER_MOOL',
        65,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'eb3aea62-9ae6-4a5f-8d5e-b862f5c26cca',
        4,
        'JAR',
        20,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '334bb1d7-e68d-4b7b-ac9d-3e6469399cc1',
        4,
        'TAP_INSIDE_HOUSE',
        147,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'b9e8a70e-edfa-482b-9040-f05777c2200c',
        4,
        'TAP_OUTSIDE_HOUSE',
        717,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'af24696f-6a27-406d-a6be-41861acd2202',
        4,
        'TUBEWELL',
        33,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '6c87b880-68b8-481e-b589-9deaf5ffe12f',
        5,
        'AQUIFIER_MOOL',
        1731,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '86655daa-2e1b-4d51-b199-cf0a8f16c198',
        5,
        'JAR',
        6,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'c8446d32-bc47-4229-a61c-3c6875d237a8',
        5,
        'OTHER',
        2,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '0a5cafe3-3c75-40d7-abe7-5c0e894e547e',
        5,
        'RIVER',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '96cf76b8-a7f4-401d-947b-7364c2488e88',
        5,
        'TAP_INSIDE_HOUSE',
        58,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'ae30bbbe-c589-4780-8602-59c8d1890da4',
        5,
        'TAP_OUTSIDE_HOUSE',
        28,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'fffad692-ff6d-4fb5-813a-246cdf6913fd',
        5,
        'TUBEWELL',
        11,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'e46fbb78-2012-41d6-8c1d-c715bcbfaba4',
        6,
        'AQUIFIER_MOOL',
        48,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '99a3d3bd-03a2-4f5d-a38d-f9349b51d235',
        6,
        'COVERED_WELL',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'b0a9f956-d882-4a78-8100-daef600a9013',
        6,
        'OTHER',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'f0ab7458-4fe6-4cba-a125-501a9126c4ae',
        6,
        'TAP_INSIDE_HOUSE',
        23,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'c1df69ee-164b-409e-ae3f-9298061aab2a',
        6,
        'TAP_OUTSIDE_HOUSE',
        38,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'd61f219a-bc98-4591-b10c-a6afe4fdf4cd',
        6,
        'TUBEWELL',
        1606,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'c86eefe8-b448-436b-a8c0-5383eebb665e',
        7,
        'AQUIFIER_MOOL',
        1040,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '83d84042-0306-4f49-bd40-7fe5c08efc65',
        7,
        'COVERED_WELL',
        3,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '05124a29-95f0-42b5-98c5-e6b39d45dbb9',
        7,
        'JAR',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'ac7f1e9a-aaa7-4706-aeeb-8031fcbc5eee',
        7,
        'OPEN_WELL',
        2,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'f523b014-1556-488f-b038-265dd6d7be4e',
        7,
        'OTHER',
        6,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'fd9b836d-7dc0-4f8a-8710-f6bb7fdf3fff',
        7,
        'RIVER',
        10,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '689f11d7-f349-4f65-8364-2a9ec220d1ab',
        7,
        'TAP_INSIDE_HOUSE',
        554,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '88be08e7-4a64-44b5-8fe9-51cba96bee54',
        7,
        'TAP_OUTSIDE_HOUSE',
        255,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'd7aef2ce-944b-4645-89d2-34a9780f2115',
        7,
        'TUBEWELL',
        19,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '308dcd93-05f9-4a37-b7b5-3b8fc0126c62',
        8,
        'AQUIFIER_MOOL',
        418,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '94097544-5b0b-48bb-bdee-02785518a25c',
        8,
        'COVERED_WELL',
        4,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '66978770-42eb-4cc6-bc6e-52ea016b101d',
        8,
        'JAR',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'f82ec2e8-de8d-4391-8f6a-7432901514c7',
        8,
        'OPEN_WELL',
        1,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '87472f59-e922-4d98-a4f9-b3d516b9c175',
        8,
        'OTHER',
        18,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '00a1d31d-5dc8-4826-bf83-322e97a869b8',
        8,
        'RIVER',
        2,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '6546d412-8a1d-4abf-a9d1-1df004ab0c45',
        8,
        'TAP_INSIDE_HOUSE',
        677,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '9b3d9b0d-634f-4e7f-9583-f48945409f81',
        8,
        'TAP_OUTSIDE_HOUSE',
        390,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    INSERT INTO acme_ward_wise_drinking_water_source 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        'a9a3eb03-1fd2-4160-aff9-cd845747f035',
        8,
        'TUBEWELL',
        33,
        '2025-05-26 20:32:52',
        '2025-05-26 20:32:52'
    );
    

    END IF;
END
$$;

