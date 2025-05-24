-- Generated SQL script
-- Date: 2025-05-24 14:42:53


-- Check if acme_ward_wise_chronic_diseases table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_chronic_diseases'
    ) THEN
        CREATE TABLE acme_ward_wise_chronic_diseases (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            chronic_disease VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_chronic_diseases) THEN


    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '49b4f923-729c-4244-9237-4b57cb3ae0bf',
        1,
        'ARTHRITIS_JOINT_PAIN',
        34,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'a4bac515-e82f-4856-96a5-8e98523123d5',
        1,
        'ASTHMA',
        5,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '725cbc5b-bf4f-4e62-989e-f02192a68b23',
        1,
        'BLOOD_PRESSURE_HIGH_LOW',
        73,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '8cb3241f-9fba-4278-952d-f72c1fbb3c4d',
        1,
        'DIABETES',
        44,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'fef043fc-d248-4a86-990c-b77ff88617fa',
        1,
        'EPILEPSY',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'ea98a61e-0d66-436a-9195-40a8291b430c',
        1,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        19,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'e592892f-1606-47ed-8711-df77db564a1e',
        1,
        'GYNECOLOGICAL_DISEASE',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '5b88ee4d-8a41-486b-88c0-9ba30be198b0',
        1,
        'HEART_RELATED_DISEASE',
        18,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '26ce1fb4-978c-4c27-bb8b-d5b5519be8c4',
        1,
        'KIDNEY_RELATED',
        8,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'bf8903f5-aa8f-479d-b9dd-f04b4510023e',
        1,
        'LIVER_RELATED',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '3d39e19b-c1af-42d1-87f1-8cf564754fef',
        1,
        'MIGRAINE',
        4,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '9ebf302a-8d15-4128-898f-99334b878db8',
        1,
        'OTHER',
        10,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'cb13b97f-0c9c-418d-818e-980e60b1174e',
        1,
        'PARKINSON_ALZHEIMER',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'a5702a7a-ef2b-46d1-8c3e-a57267bb8d98',
        1,
        'RESPIRATION_RELATED',
        6,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'bd7f333b-878e-49f0-aab9-b8e3c3c38e4f',
        1,
        'TUMOR_CANCER',
        5,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '3cb5ef5e-92ec-40c2-8ae4-57250f4ca2e5',
        2,
        'ARTHRITIS_JOINT_PAIN',
        119,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '43199081-9a37-426f-99f3-a266dcb8e395',
        2,
        'ASTHMA',
        54,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '8093e400-fbf3-4075-ba03-df2ef309e6b2',
        2,
        'BLOOD_PRESSURE_HIGH_LOW',
        199,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c10c5774-2239-4564-a4e0-5d54700dc184',
        2,
        'DIABETES',
        59,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'ce88fb01-1174-4644-86db-6837f199349d',
        2,
        'EPILEPSY',
        5,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'cc85fe99-2752-4643-b50b-d06822e41534',
        2,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        61,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '319a7b87-dde4-48aa-9970-0aa8fbfdc60a',
        2,
        'GYNECOLOGICAL_DISEASE',
        13,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '979d86af-9e7a-43ef-81cf-5c16e659eaf4',
        2,
        'HEART_RELATED_DISEASE',
        59,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f33d258d-cb70-49f1-9536-fd0a21db2a06',
        2,
        'KIDNEY_RELATED',
        10,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c20f9c27-1ad2-4b10-96d2-d2e65e2c07be',
        2,
        'LIVER_RELATED',
        5,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '84b33edf-1a15-481c-814f-f0b49a3cf7e0',
        2,
        'MIGRAINE',
        33,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '3d3a83eb-3bef-47f9-babf-8ed0b29ec893',
        2,
        'OCCUPATIONAL_DISEASE',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '888abd29-1cf1-45eb-a5a2-1100b76424cd',
        2,
        'OTHER',
        130,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '4a330ed1-57e6-4917-8616-cd2f3c8a83cb',
        2,
        'PARKINSON_ALZHEIMER',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f2f68892-9921-40e4-be70-db2affcb946a',
        2,
        'RESPIRATION_RELATED',
        28,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'a511a2b0-9847-4e8f-8a6c-ae9d91f8ba44',
        2,
        'TUMOR_CANCER',
        7,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '7b4bbfbe-23fc-4563-9e79-0d456e283121',
        3,
        'ARTHRITIS_JOINT_PAIN',
        85,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '733e47f1-3c88-41cd-9cf4-ed47afee38ff',
        3,
        'ASTHMA',
        29,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '5397445e-1329-4f6c-85c0-0cb92565506f',
        3,
        'BLOOD_PRESSURE_HIGH_LOW',
        404,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'aa7f24cb-f289-4462-9ce1-f80e64afb656',
        3,
        'DIABETES',
        105,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '03b164fd-31d2-4a0e-a8ba-7c842acdc708',
        3,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        51,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '771a7e40-2e0a-456d-9102-04f91877b459',
        3,
        'GYNECOLOGICAL_DISEASE',
        9,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '173fb44b-c75d-462a-a073-c655d39d1187',
        3,
        'HEART_RELATED_DISEASE',
        51,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'cf589b71-94a9-48f2-b27c-18f8ef41a4f4',
        3,
        'KIDNEY_RELATED',
        9,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'dad1a303-75b6-4394-a01c-06b5187482f0',
        3,
        'LIVER_RELATED',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '2c9c6653-6e79-4f8b-a7fe-c4ca3aec47f0',
        3,
        'MIGRAINE',
        22,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c635663a-d55c-4437-91bc-726359661131',
        3,
        'OCCUPATIONAL_DISEASE',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '0c8acfbc-0fdc-4df8-b6ef-c92300a9fc8f',
        3,
        'OTHER',
        83,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'e4bfa2fd-e062-4738-9d31-960bf0fa3a69',
        3,
        'PARKINSON_ALZHEIMER',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '6c9e3a3a-f356-4b94-9c99-86d1986134d7',
        3,
        'RESPIRATION_RELATED',
        11,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '0fa7ad52-df9f-4e19-a0dc-14543634510b',
        3,
        'TUMOR_CANCER',
        12,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'dbcf473c-bfbd-49d3-862f-368f11cedb67',
        4,
        'ARTHRITIS_JOINT_PAIN',
        24,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f0a10bc2-958f-4930-890a-aeee0afcdc6a',
        4,
        'ASTHMA',
        16,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '2f3ae0ea-ba7e-47da-a13e-79b16518df5d',
        4,
        'BLOOD_PRESSURE_HIGH_LOW',
        90,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '8a37648c-b353-401c-8a1a-1813b1759f41',
        4,
        'DIABETES',
        14,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c833d740-5093-43bf-9992-6bbe7be6af36',
        4,
        'EPILEPSY',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'd17a816f-8085-4ee5-8e1d-de5459a36c22',
        4,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        5,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '083d2d97-20f3-459d-95a7-cc74ff62aae1',
        4,
        'GYNECOLOGICAL_DISEASE',
        4,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '9ffe0936-b6d0-4afa-b3d4-f0b75faa0f9e',
        4,
        'HEART_RELATED_DISEASE',
        19,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '6e9bfaf7-0e65-437a-b73b-ad4536a4717e',
        4,
        'KIDNEY_RELATED',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '654ee7e1-745e-4e99-9c85-c60654ce8328',
        4,
        'LIVER_RELATED',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '1cf004a2-82b6-4aa0-8d5b-0331ae713e64',
        4,
        'MIGRAINE',
        9,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f4bd339f-8b85-4669-80b2-ea4599e862fc',
        4,
        'OCCUPATIONAL_DISEASE',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '8f54eacf-37aa-4cea-bade-9ffc38f37d08',
        4,
        'OTHER',
        82,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'abfeeb82-0a54-4aea-aacb-5b126212447d',
        4,
        'PARKINSON_ALZHEIMER',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '5d3bafa2-15b2-4d63-9bdd-fdcebf725788',
        4,
        'RESPIRATION_RELATED',
        5,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '9f82991b-7a93-4c26-8f3b-944ac0b32e1a',
        4,
        'TUMOR_CANCER',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f5b96945-d539-40f0-a6ea-ea60b7801067',
        5,
        'ARTHRITIS_JOINT_PAIN',
        4,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'ada10b49-a02b-48c9-94a6-2aea11c2b404',
        5,
        'ASTHMA',
        8,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'd4e44c92-bd8e-48ee-93bf-0dccb24aafed',
        5,
        'BLOOD_PRESSURE_HIGH_LOW',
        10,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'cc32a7fa-77a2-4fc9-8565-4ba5912ba2b9',
        5,
        'DIABETES',
        7,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '340cef47-b946-4883-8327-b85378b42fdc',
        5,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        4,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '86573d50-81d7-4a47-b39a-d031f64bf23f',
        5,
        'HEART_RELATED_DISEASE',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '07eb0fa0-1d66-4976-b56b-04ce2a09a33c',
        5,
        'KIDNEY_RELATED',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '124d223d-4b12-4980-846b-058362e8f7a4',
        5,
        'LIVER_RELATED',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '7e990580-754c-45ac-8591-d3e7805da3e5',
        5,
        'MIGRAINE',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '97cbc65b-a9a6-430d-8690-b7f7258c71f2',
        5,
        'OTHER',
        12,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '011675b7-5aa2-4a6d-96bd-bc0d24651b5c',
        5,
        'RESPIRATION_RELATED',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '4f62e089-e741-425c-b70b-2192eb54504d',
        5,
        'TUMOR_CANCER',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '817e7bdf-3192-4363-9dd4-c1a2c98de2fa',
        6,
        'ARTHRITIS_JOINT_PAIN',
        61,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '268e1d0f-82bc-4b95-8595-70418d42049f',
        6,
        'ASTHMA',
        33,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f29f7cc1-76e7-4e1c-bbed-c5da6e6b5df8',
        6,
        'BLOOD_PRESSURE_HIGH_LOW',
        62,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c1294b99-807f-43e3-8645-20cc43257bca',
        6,
        'DIABETES',
        22,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'a66bd0d9-7ddf-4568-bc44-697d5910e12e',
        6,
        'EPILEPSY',
        6,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '6ede649e-204d-4bc9-a4bc-1edbbb584c7a',
        6,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        66,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '0e948384-bbbb-4dba-875c-92a47ff63c50',
        6,
        'GYNECOLOGICAL_DISEASE',
        13,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '3ed6c887-4fda-41d6-ae5f-fcc1f1f4d471',
        6,
        'HEART_RELATED_DISEASE',
        19,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'd40e1cae-488b-49c6-84e8-b54d96508eab',
        6,
        'KIDNEY_RELATED',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'bb09a9e1-1930-4c29-ba24-8eee6b6e4325',
        6,
        'LIVER_RELATED',
        4,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '29ae2588-fd68-49f4-b5c2-264d59351997',
        6,
        'MIGRAINE',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '95a747bf-bf68-4273-aa87-15154c9c05be',
        6,
        'OTHER',
        62,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '73c53e53-c57b-4f03-81da-df46823bcb19',
        6,
        'RESPIRATION_RELATED',
        14,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'fe9ccc3d-4e09-4b0a-9171-19d9b2f4651c',
        6,
        'TUMOR_CANCER',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '6f2b180f-ccd1-46aa-a767-12b48f9fbdcc',
        7,
        'ARTHRITIS_JOINT_PAIN',
        57,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'fbda1074-b38c-477d-bdb1-8c1ed833789c',
        7,
        'ASTHMA',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c60829c1-2724-482d-b3d6-f68ce73f5ee1',
        7,
        'BLOOD_PRESSURE_HIGH_LOW',
        26,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'c056e08d-009e-46b1-b977-f69f1f942737',
        7,
        'DIABETES',
        28,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '8990473c-5c20-449e-846c-d85d4a9fa439',
        7,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        28,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'b3f6ed6a-8195-449f-b1f5-1fa4b4c157c2',
        7,
        'GYNECOLOGICAL_DISEASE',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '0e696a7f-8137-4190-91b3-02a2d5783624',
        7,
        'HEART_RELATED_DISEASE',
        15,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '444e9f57-c7bf-4859-82ac-3fab6ac2a721',
        7,
        'KIDNEY_RELATED',
        9,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'f61af9b2-cc2f-4eac-9bca-332e1a05d632',
        7,
        'LIVER_RELATED',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'e8248462-74be-4c12-b838-101ee24b61ed',
        7,
        'MIGRAINE',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '71337d20-3279-4d41-b0dc-59fa7c564fc7',
        7,
        'OTHER',
        38,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'b4515ad0-0bb0-4c24-9e99-81369bbdd91a',
        7,
        'PARKINSON_ALZHEIMER',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '5fcfffdf-fa52-4519-8e07-f349cd90eb41',
        7,
        'RESPIRATION_RELATED',
        13,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'e41497c6-5c01-4c2b-bd4f-4f8974be770a',
        7,
        'TUMOR_CANCER',
        3,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '07361349-cf71-417f-8d0d-4b163d35221c',
        8,
        'ARTHRITIS_JOINT_PAIN',
        20,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '39d8ea79-51e4-4f35-aeb5-d447ecd7eeda',
        8,
        'ASTHMA',
        6,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        '6b789871-ce10-4fe8-80b7-e9a85ea38bad',
        8,
        'BLOOD_PRESSURE_HIGH_LOW',
        13,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'dfed5202-4b57-44ee-a344-a00509d4f128',
        8,
        'DIABETES',
        7,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'fec15345-ab93-4689-a46d-0566e1e6dd0a',
        8,
        'GASTRIC_ULCER_INTESTINE_DISEASE',
        7,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'd369db4c-8abe-4dfb-a8d5-5d3ac4fda589',
        8,
        'GYNECOLOGICAL_DISEASE',
        8,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'a6293499-1394-4f94-982b-3e967e4addba',
        8,
        'HEART_RELATED_DISEASE',
        9,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'fab4f666-3d9b-4af1-9121-27b61152051c',
        8,
        'KIDNEY_RELATED',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'b9dee44c-cc07-45d4-a1be-8b0d469085c9',
        8,
        'MIGRAINE',
        8,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'b99b69d9-df7f-45e8-9d41-4cb249de88d2',
        8,
        'OCCUPATIONAL_DISEASE',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'e6ffec26-93d7-4a21-b3ea-d4f41012cb3e',
        8,
        'OTHER',
        17,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'cf562ad2-6637-4b89-9155-e5a9b5d834f7',
        8,
        'RESPIRATION_RELATED',
        2,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    INSERT INTO acme_ward_wise_chronic_diseases 
    (id, ward_number, chronic_disease, population, updated_at, created_at)
    VALUES (
        'b462127b-48be-4df0-b869-5a46153ac860',
        8,
        'TUMOR_CANCER',
        1,
        '2025-05-24 14:42:53',
        '2025-05-24 14:42:53'
    );
    

    END IF;
END
$$;

