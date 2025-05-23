-- Generated SQL script
-- Date: 2025-05-23 14:03:01


-- Check if acme_ward_wise_major_occupation table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_major_occupation'
    ) THEN
        CREATE TABLE acme_ward_wise_major_occupation (
            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
            ward_number INTEGER NOT NULL,
            occupation TEXT NOT NULL,
            population INTEGER NOT NULL DEFAULT 0 CHECK (population >= 0),
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_major_occupation) THEN


    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'e84ae507-59c9-4b52-9c17-27fa0960273e',
        1,
        'ANIMAL_HUSBANDRY',
        6,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'b9e36a74-2442-4ad0-bb50-6df1a60a6963',
        1,
        'BUSINESS',
        80,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c2fe3f22-ba3a-47ee-a12c-3d5083e2b157',
        1,
        'DAILY_WAGE',
        147,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '49c39b2b-52d7-4246-82b9-5cb0915e885e',
        1,
        'GOVERNMENT_SERVICE',
        126,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '83fbf1f2-d1a4-40e4-91d9-daeb88eb7264',
        1,
        'HOUSEHOLD_WORK',
        4,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '6cea115f-93e5-4856-932b-c84b26f48cb0',
        1,
        'INDUSTRY',
        21,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '9132b00b-04dc-4a5f-a466-fda60818c25a',
        1,
        'NON_GOVERNMENT_SERVICE',
        120,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '7b693684-32d0-4706-a6a1-c84229280282',
        1,
        'OTHER',
        424,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '421e468e-2ed0-449e-bd6d-fec9e18ada14',
        1,
        'OTHER_SELF_EMPLOYMENT',
        8,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'a1680e3c-806e-4b49-8215-c5adcab93b77',
        1,
        'OTHER_UNEMPLOYMENT',
        11,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '1a8e5217-a30b-4b25-b8be-3ab5ee2eb41e',
        1,
        'STUDENT',
        8,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'd7017d70-2c95-4625-9ca4-e0671b7fde9e',
        2,
        'ANIMAL_HUSBANDRY',
        158,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '1a4a9871-1579-4223-ab66-2fda6342042b',
        2,
        'BUSINESS',
        270,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '82d21f00-c3dd-4966-a3cf-b98454e3f3d5',
        2,
        'DAILY_WAGE',
        674,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '34b5df7a-f647-4a6d-b17e-3a0ff603b628',
        2,
        'GOVERNMENT_SERVICE',
        340,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '35022faa-5213-4f03-92fa-f23ceac95e93',
        2,
        'HOUSEHOLD_WORK',
        458,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'de1da090-aa0c-4e1b-ab6b-93c92cb54a82',
        2,
        'INDUSTRY',
        933,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '1fccb4f3-7916-4736-9e38-f9a032efe600',
        2,
        'NON_GOVERNMENT_SERVICE',
        312,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'fca81f24-5932-4a70-934b-410235618d8a',
        2,
        'OTHER',
        1715,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '1eacba78-f256-4300-b6e9-44cbb980a0eb',
        2,
        'OTHER_SELF_EMPLOYMENT',
        35,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'aab24618-6d1e-4162-b493-4b396c496c8c',
        2,
        'OTHER_UNEMPLOYMENT',
        70,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '81edf54d-9772-44dc-bedd-2faf1a15acfa',
        2,
        'STUDENT',
        194,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '65abf0e4-4579-42fe-b094-ecd3650567e8',
        3,
        'ANIMAL_HUSBANDRY',
        30,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ee908d70-7750-423b-8cec-8cc19cd3f90c',
        3,
        'BUSINESS',
        360,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'b090a25a-39e4-4319-9f1f-1fc7a43537ca',
        3,
        'DAILY_WAGE',
        506,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ea9b9875-f32d-4b7b-acaf-e2b035b66d61',
        3,
        'GOVERNMENT_SERVICE',
        364,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'adabe520-87ac-4bba-aa4b-a75ba66ab3ab',
        3,
        'HOUSEHOLD_WORK',
        772,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '1659c2cb-4d06-4067-8873-713931bda193',
        3,
        'INDUSTRY',
        206,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c8b10ece-1d4e-41c3-ba98-50f80c9f5cf1',
        3,
        'NON_GOVERNMENT_SERVICE',
        290,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '5ad3b5d9-eb14-44f6-9e9c-327e78880920',
        3,
        'OTHER',
        928,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ee2cb67c-a087-4aaf-bb42-1be45a331687',
        3,
        'OTHER_SELF_EMPLOYMENT',
        91,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '7674119a-3331-4d32-a3e5-30b22218fd04',
        3,
        'OTHER_UNEMPLOYMENT',
        7,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'bba589c5-35a4-40fe-84a2-61228bc18c61',
        3,
        'STUDENT',
        367,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '7e33ce40-4c8c-4399-a9c8-97ee47c39426',
        4,
        'ANIMAL_HUSBANDRY',
        9,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ca4f7cd4-382d-413a-8e1e-5e0a9320fbf7',
        4,
        'BUSINESS',
        87,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '219b023c-f287-4ec2-8151-5c509de338a6',
        4,
        'DAILY_WAGE',
        142,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '54e6b404-b451-4f0a-be92-9ee68e7a96a1',
        4,
        'GOVERNMENT_SERVICE',
        143,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c9966b0a-598d-4487-82da-48a0d89e7987',
        4,
        'HOUSEHOLD_WORK',
        526,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ce927521-c931-45f1-8e49-fa6608a3fd50',
        4,
        'INDUSTRY',
        273,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'e912e1f5-b625-412a-a56b-04d2626eb4d9',
        4,
        'NON_GOVERNMENT_SERVICE',
        80,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'd66f22c5-61a8-499c-bc33-cfb8ffa10470',
        4,
        'OTHER',
        864,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'bbdb39dc-6809-4cb8-8268-661f03f8240c',
        4,
        'OTHER_SELF_EMPLOYMENT',
        91,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '2fe88cf3-9a9b-493a-883a-80f1df7c8e0f',
        4,
        'OTHER_UNEMPLOYMENT',
        14,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c38cee1c-893a-4450-b48a-0aa96baa22f1',
        4,
        'STUDENT',
        314,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'dadcba67-4e35-4791-ac69-b413b1949cf2',
        5,
        'ANIMAL_HUSBANDRY',
        25,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '525e9c50-4f87-4a43-9576-8055899385e3',
        5,
        'BUSINESS',
        25,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '440e5fe2-b800-4483-be0e-80e00801017d',
        5,
        'DAILY_WAGE',
        1358,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c5df5f90-8039-409d-94c5-33a66ff35752',
        5,
        'GOVERNMENT_SERVICE',
        52,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'df8bb2a3-1c00-4879-b129-20778f39f55c',
        5,
        'HOUSEHOLD_WORK',
        504,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c30f19e2-92e3-4a95-b62c-0e3c50adcb2f',
        5,
        'INDUSTRY',
        83,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '52b640b1-17be-4089-b11d-47b2c385bd38',
        5,
        'NON_GOVERNMENT_SERVICE',
        19,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '5aa084d1-c5c4-43cb-a0e8-82a5003ae4ea',
        5,
        'OTHER',
        415,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ebd5db4b-5f8f-46e7-a79c-79e97125abfc',
        5,
        'OTHER_SELF_EMPLOYMENT',
        66,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'b6e5f8a8-06af-42fa-9fea-76c375890125',
        5,
        'OTHER_UNEMPLOYMENT',
        22,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '7335bfa8-497c-4e82-8609-98a3b5ecf43c',
        5,
        'STUDENT',
        309,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'c9b72a75-3885-492e-8000-d898b9202c86',
        6,
        'ANIMAL_HUSBANDRY',
        16,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'f4480d18-4ebd-44c8-b0c2-6caea28f13c0',
        6,
        'BUSINESS',
        165,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'db76b4b0-7761-47d0-b7f2-0ccde79b6951',
        6,
        'DAILY_WAGE',
        919,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '990f0992-7494-4709-8dd7-4dfed1bd4e9d',
        6,
        'GOVERNMENT_SERVICE',
        93,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '4c902818-c05c-49c3-a573-1722af0d83ab',
        6,
        'HOUSEHOLD_WORK',
        679,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '695a6d5a-2cfb-4514-910f-84072449c6df',
        6,
        'INDUSTRY',
        341,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '8aedb12b-09c7-47dd-a529-e9d5c4fe86e2',
        6,
        'NON_GOVERNMENT_SERVICE',
        90,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '549bc1e7-a307-43d6-80b8-0b78c9864bb8',
        6,
        'OTHER',
        1259,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '622e2580-7f46-48a9-b903-0daa84734066',
        6,
        'OTHER_SELF_EMPLOYMENT',
        10,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '46fd375c-de78-437c-a149-e6808aa3ce6c',
        6,
        'OTHER_UNEMPLOYMENT',
        7,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'e8bd10bb-9af7-4387-aad7-3a972929c0bf',
        6,
        'STUDENT',
        570,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'a303047d-8a54-4c5e-b263-4ad4ee7be497',
        7,
        'ANIMAL_HUSBANDRY',
        14,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '15df77fd-fea2-43c6-ba43-33c16c56d716',
        7,
        'BUSINESS',
        9,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '29f9324a-2490-4948-a1d7-fc0f7204ae34',
        7,
        'DAILY_WAGE',
        783,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ad044508-4cb1-4ef9-8605-38c1c350c8eb',
        7,
        'GOVERNMENT_SERVICE',
        66,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '3a9ef5bb-7ebe-4415-b06d-5e8b8fc7dc40',
        7,
        'HOUSEHOLD_WORK',
        5,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '516d0b6a-3f30-40fc-a63b-347f68cc595e',
        7,
        'INDUSTRY',
        112,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '2ca1ba84-383b-4053-9c5e-b3d6a47d41ed',
        7,
        'NON_GOVERNMENT_SERVICE',
        150,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '6c4b7a74-49bd-477e-9cf7-291849455853',
        7,
        'OTHER',
        504,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '93f17633-8364-4816-9304-412d41328139',
        7,
        'OTHER_SELF_EMPLOYMENT',
        63,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '6ccf00ee-4491-4b8d-ba4a-c2583ad1d756',
        7,
        'OTHER_UNEMPLOYMENT',
        5,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'fd2f11fa-b545-4ae7-a416-704bf6d09513',
        7,
        'STUDENT',
        2,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '406f78b5-340e-4d15-81e1-35b380e5103d',
        8,
        'ANIMAL_HUSBANDRY',
        7,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ea64dd45-207d-4112-95da-f888a3379589',
        8,
        'BUSINESS',
        18,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'a4fde90e-52be-4eda-ae88-72b2f44f6305',
        8,
        'DAILY_WAGE',
        275,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '915d41a7-e8e4-4057-acdf-8e09673765ce',
        8,
        'GOVERNMENT_SERVICE',
        21,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        'ebf28965-96f8-4afe-98a3-c55e9828e6af',
        8,
        'HOUSEHOLD_WORK',
        135,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '6dd4d276-04b3-4ce7-8b6d-a50df055d211',
        8,
        'INDUSTRY',
        18,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '5cef18f9-8acf-4945-a09f-7f9265b01db3',
        8,
        'NON_GOVERNMENT_SERVICE',
        12,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '8d1428b4-d11b-4ecb-ac8b-caf7ed9695df',
        8,
        'OTHER',
        241,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '99e6e38c-9d57-4178-873f-091fb96e892f',
        8,
        'OTHER_SELF_EMPLOYMENT',
        34,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '97926cba-c2ba-40c3-aae1-eda9e8c6d1b5',
        8,
        'OTHER_UNEMPLOYMENT',
        4,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    INSERT INTO acme_ward_wise_major_occupation 
    (id, ward_number, occupation, population, updated_at, created_at)
    VALUES (
        '7e6c9b35-7b29-45b6-9f9e-33e0a3468870',
        8,
        'STUDENT',
        26,
        '2025-05-23 14:03:01',
        '2025-05-23 14:03:01'
    );
    

    END IF;
END
$$;

