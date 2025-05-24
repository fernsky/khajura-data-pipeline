-- Generated SQL script
-- Date: 2025-05-24 12:40:15


-- Check if acme_ward_wise_school_dropout table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_school_dropout'
    ) THEN
        CREATE TABLE acme_ward_wise_school_dropout (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            cause VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_school_dropout) THEN


    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'f4907d8d-6ef6-485f-9603-5ffdf80bffc4',
        1,
        'EMPLOYMENT',
        49,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'ca06cab9-bca6-4a17-b870-ef18d87b7801',
        1,
        'EXPENSIVE',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '92808be0-3a7b-4dde-9522-5e020b169c4c',
        1,
        'HOUSE_HELP',
        41,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '659d963a-8475-4002-b1b1-b7debfc2dda3',
        1,
        'MARRIAGE',
        155,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'e8d11ead-2f37-4052-8aae-a6b63e64c3a1',
        1,
        'OTHER',
        65,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '3a583258-1c32-475d-a7c2-a7303bc8db2e',
        1,
        'UNWILLING_PARENTS',
        6,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '4949f729-4a25-41e3-a022-cc26b200fd71',
        1,
        'WANTED_STUDY_COMPLETED',
        105,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '889e699a-f0b8-4aa2-967c-a382cf35d41b',
        2,
        'EMPLOYMENT',
        231,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'ad413bff-929d-40ee-8b6a-19bf2ac38c12',
        2,
        'EXPENSIVE',
        30,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '071ddb81-e58d-46ff-af78-429edc99d63e',
        2,
        'FAR',
        5,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '24899539-8c02-412f-a40e-5d993ee23a1f',
        2,
        'HOUSE_HELP',
        115,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'e130429d-77ab-4eeb-a1b2-6a3cebc787cd',
        2,
        'MARRIAGE',
        468,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'b51b0fe0-eec1-4592-b293-7076c152b127',
        2,
        'OTHER',
        136,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '1de8b987-463a-4fcd-b8e9-7a284551a0e5',
        2,
        'UNWILLING_PARENTS',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'ea124251-f4d7-485f-ac14-8ad102983903',
        2,
        'WANTED_STUDY_COMPLETED',
        67,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '9406ea39-b706-4bfb-9547-de65c3de3f20',
        3,
        'EMPLOYMENT',
        197,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '6b2cb583-7b3f-40d0-8484-ca51f7c0bfae',
        3,
        'EXPENSIVE',
        7,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '4229829a-648a-4eb1-a4e5-21683805615a',
        3,
        'FAR',
        3,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '40bdec40-f231-42e5-9b83-abf93a6e4f14',
        3,
        'HOUSE_HELP',
        44,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'bd1006c7-8b2e-4c9e-aaa1-f0bf957095d7',
        3,
        'LIMITED_SPACE',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '23061828-04aa-43f6-80ec-f1c8042121cc',
        3,
        'MARRIAGE',
        292,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '470c8a25-c5d6-4cc6-b9a8-f16fc14adb2c',
        3,
        'OTHER',
        191,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'f3250077-51a5-465a-a5ea-21f5a7c929f3',
        3,
        'UNWILLING_PARENTS',
        3,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'fb8187e7-96b0-4d91-8552-14e08f098887',
        3,
        'WANTED_STUDY_COMPLETED',
        99,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '1f9a2577-2703-4a58-bb8b-ee5dcecff467',
        4,
        'EMPLOYMENT',
        94,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'd2941adf-264f-4378-84e7-5ee96ac30ab0',
        4,
        'EXPENSIVE',
        1,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'a29b1d27-0668-4daa-9cb6-5fe4d6e7d260',
        4,
        'HOUSE_HELP',
        30,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '01b9ff17-2ec5-487c-aafc-ae498ade24cb',
        4,
        'LIMITED_SPACE',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'd88ac19b-20b1-419e-b843-5f3808c6453d',
        4,
        'MARRIAGE',
        226,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'ebdb0cf3-f11d-4c26-b86b-a018a9a5f69a',
        4,
        'OTHER',
        94,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '77b916ad-7128-46ec-8873-ba4679612117',
        4,
        'UNWILLING_PARENTS',
        9,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'f1502db6-1145-462d-a76d-13617a44fa7d',
        4,
        'WANTED_STUDY_COMPLETED',
        61,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '797b82cf-e3f4-40e8-9868-ebfd15d0051f',
        5,
        'EMPLOYMENT',
        295,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'a824865d-b74a-4d95-9b2e-f9dbe8b20a93',
        5,
        'EXPENSIVE',
        10,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '8cef1921-239e-4d46-b499-c8071335ae1e',
        5,
        'FAR',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '7d5d689f-c704-4ced-b50c-4b16e75fd00d',
        5,
        'HOUSE_HELP',
        121,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '1a03bfa7-98e6-4632-b2f3-ca66868c8d2f',
        5,
        'LIMITED_SPACE',
        1,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '473a195b-e1c4-4314-9cbc-52ab92dc47a1',
        5,
        'MARRIAGE',
        144,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'e4d004ac-d254-4e49-a59e-a0453dd90539',
        5,
        'OTHER',
        732,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'ec4aae28-c970-4010-8753-3fe6655a213e',
        5,
        'UNWILLING_PARENTS',
        44,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'efd31123-7617-48c6-9ff7-7ae6aab242fe',
        5,
        'WANTED_STUDY_COMPLETED',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '11a87b76-9262-48e2-a430-433c3693fdc4',
        6,
        'EMPLOYMENT',
        14,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '4baa9f28-84dc-45fd-a2bb-6afd0e71c60e',
        6,
        'EXPENSIVE',
        29,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'b981f02e-0b18-4c4d-ace4-56e32b6456d4',
        6,
        'FAR',
        4,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'b3a4d76e-0103-492f-ab94-601c3460d8fa',
        6,
        'HOUSE_HELP',
        458,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '98f11c46-dd48-4abe-8216-193c11f11011',
        6,
        'LIMITED_SPACE',
        2,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'f91dbf83-44b6-44da-9b77-95124c9d9ade',
        6,
        'MARRIAGE',
        428,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '904c75dd-0c90-401b-a639-c1ef56edd37c',
        6,
        'OTHER',
        491,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'd00aaba2-151f-4745-b440-ba9ff5fdfd26',
        6,
        'UNWILLING_PARENTS',
        34,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '1af224c1-66c6-476e-86bf-c2327cb606f4',
        6,
        'WANTED_STUDY_COMPLETED',
        21,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'cf35f95f-e937-4442-9339-74d7cbd5272a',
        7,
        'EMPLOYMENT',
        71,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '590f91c2-99fb-4d11-8b8e-fb414b38b64c',
        7,
        'EXPENSIVE',
        80,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '13f13eed-1dab-4d97-aa65-aec6ea8b3e04',
        7,
        'FAR',
        5,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '2d4c05e0-b5cc-46a0-b813-d42b190a20fe',
        7,
        'HOUSE_HELP',
        123,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'b2801cad-c55a-44c8-98dc-ed42473f7cf8',
        7,
        'MARRIAGE',
        97,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '5bfbe716-7444-48c8-8311-1e89a9899fe4',
        7,
        'OTHER',
        1399,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '636afd97-e2bf-432a-8347-f1aac776d0ce',
        7,
        'UNWILLING_PARENTS',
        98,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '5eb74729-1d4b-4291-9647-23ccbd7ab86c',
        7,
        'WANTED_STUDY_COMPLETED',
        45,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '5416b1cd-35f5-4d48-ae62-d2228228fbd2',
        8,
        'EMPLOYMENT',
        14,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '368c5ff6-07a7-4f1d-b0ab-e5e0d4b11b88',
        8,
        'EXPENSIVE',
        47,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '516152af-25a3-4674-91ba-e610e3abf287',
        8,
        'FAR',
        68,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '4dcd8738-4b67-4cdb-8800-10bac63feed4',
        8,
        'HOUSE_HELP',
        295,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'a88072d1-e5f3-4885-8056-3c952b7fde1e',
        8,
        'LIMITED_SPACE',
        6,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '02c160b8-e84d-4cc6-8028-c18ffb4c078a',
        8,
        'MARRIAGE',
        362,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'ffdbf72e-ee58-482d-8af1-ab01214d26ea',
        8,
        'OTHER',
        609,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        '7545efc2-8d35-4312-ba70-f9965c9f6cd1',
        8,
        'UNWILLING_PARENTS',
        259,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    INSERT INTO acme_ward_wise_school_dropout 
    (id, ward_number, cause, population, updated_at, created_at)
    VALUES (
        'c72b05d4-c9b5-46f2-a324-1a5b5fb8285c',
        8,
        'WANTED_STUDY_COMPLETED',
        41,
        '2025-05-24 12:40:15',
        '2025-05-24 12:40:15'
    );
    

    END IF;
END
$$;

