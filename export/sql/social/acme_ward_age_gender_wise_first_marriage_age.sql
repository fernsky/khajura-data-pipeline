-- Generated SQL script
-- Date: 2025-05-27 20:54:33


-- Check if acme_ward_age_gender_wise_first_marriage_age table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_age_gender_wise_first_marriage_age'
    ) THEN
        CREATE TABLE acme_ward_age_gender_wise_first_marriage_age (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            first_marriage_age_group VARCHAR(100) NOT NULL,
            gender VARCHAR(50) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_age_gender_wise_first_marriage_age) THEN


    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'aab0340d-8c87-4629-808d-76fb5c7c6aaf',
        1,
        'FEMALE',
        'AGE_0_14',
        131,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '7214edb9-46fa-4e21-997e-cc9aaa43dcf2',
        1,
        'FEMALE',
        'AGE_15_19',
        882,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '853a3f53-f5f6-4913-aa64-1586b1712572',
        1,
        'FEMALE',
        'AGE_20_24',
        302,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e03d4d64-aa46-4263-b8fb-b48335c6197a',
        1,
        'FEMALE',
        'AGE_25_29',
        69,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '231bb2d0-77b4-4fc2-8299-672e664f3732',
        1,
        'FEMALE',
        'AGE_30_34',
        9,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f92d3143-59ba-4668-86bc-ed54a502c0d1',
        1,
        'FEMALE',
        'AGE_35_39',
        8,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '90826837-e587-4560-a88d-2120f056539a',
        1,
        'FEMALE',
        'AGE_40_44',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '8194afc2-46e3-4cee-86c8-87d757b3da51',
        1,
        'FEMALE',
        'AGE_45_49',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '362ea0d5-1d67-45f4-a37e-f495dcac1f56',
        1,
        'MALE',
        'AGE_0_14',
        15,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '3f0413b7-53c2-41c8-a70e-aaf684190f15',
        1,
        'MALE',
        'AGE_15_19',
        374,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'd15233af-7362-4b8c-bdfb-09b0cbed2cc6',
        1,
        'MALE',
        'AGE_20_24',
        472,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e256ea15-1215-4753-81bc-55aec0de2334',
        1,
        'MALE',
        'AGE_25_29',
        203,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'd37af604-c189-452c-afd6-32da9c7ab040',
        1,
        'MALE',
        'AGE_30_34',
        40,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6914fea8-10cc-45a5-8600-b7ba332bfad4',
        1,
        'MALE',
        'AGE_35_39',
        12,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '04d58404-1c96-486e-9b11-fb7b6687b573',
        1,
        'MALE',
        'AGE_40_44',
        5,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'fc9f01a5-0fa0-4dfc-9bba-71413ea860a8',
        1,
        'MALE',
        'AGE_45_49',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '44bdc01f-8f57-46d7-a185-62053a1b619f',
        1,
        'MALE',
        'AGE_55_59',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '15793319-9b2e-452e-acd3-51075df6fbd3',
        2,
        'FEMALE',
        'AGE_0_14',
        250,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6e31bf88-0a27-4446-ab73-99ddfae9b17c',
        2,
        'FEMALE',
        'AGE_15_19',
        2188,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '65632057-1414-4462-8f78-24c04331a74d',
        2,
        'FEMALE',
        'AGE_20_24',
        1128,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6c0fc831-8a80-4c34-b306-2d8c8badcc4b',
        2,
        'FEMALE',
        'AGE_25_29',
        158,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '3903b2cc-e510-4079-a021-ac151365f254',
        2,
        'FEMALE',
        'AGE_30_34',
        28,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'c673704b-870b-4592-8e43-197d3d9f2959',
        2,
        'FEMALE',
        'AGE_35_39',
        6,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '834549fc-5c27-43d6-85e0-636be391d0c2',
        2,
        'FEMALE',
        'AGE_40_44',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '9f42769e-7cc4-48a6-981b-6dcfd0b72093',
        2,
        'FEMALE',
        'AGE_45_49',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '9be44f19-3497-4177-9904-e43a0126630c',
        2,
        'FEMALE',
        'AGE_55_59',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '7b84f214-b8fd-4283-9fc3-9b1fba5600e4',
        2,
        'FEMALE',
        'AGE_60_AND_ABOVE',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'd67fe740-9703-49b2-9bcc-f67b7685da12',
        2,
        'MALE',
        'AGE_0_14',
        53,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '476f10ed-a4d0-4c18-b993-56022330cfcb',
        2,
        'MALE',
        'AGE_15_19',
        920,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f623af46-4c69-4c59-b084-a6ab937d29fa',
        2,
        'MALE',
        'AGE_20_24',
        1780,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '07af0632-ba14-4a47-bb4f-c2e7aa4fe2f4',
        2,
        'MALE',
        'AGE_25_29',
        707,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ad88053c-22d7-43a1-b2b4-de561b824543',
        2,
        'MALE',
        'AGE_30_34',
        88,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e5eece10-d67b-47c4-8229-effc0c6f9ba4',
        2,
        'MALE',
        'AGE_35_39',
        18,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '5494c509-3537-4d3f-ac94-485ed4e40f66',
        2,
        'MALE',
        'AGE_40_44',
        7,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '0a9c0e4b-6329-42fc-a8f4-64b516005469',
        2,
        'MALE',
        'AGE_45_49',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '34f40498-77b9-4977-8b38-10ec635db173',
        2,
        'MALE',
        'AGE_50_54',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ff0ed634-9f34-46c4-a9de-b6f867bea329',
        2,
        'MALE',
        'AGE_60_AND_ABOVE',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6829a93f-9910-4105-b5d5-dd8d5e541e26',
        3,
        'FEMALE',
        'AGE_0_14',
        228,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '153d03da-2ded-42b0-a17d-b51fa03f55f4',
        3,
        'FEMALE',
        'AGE_15_19',
        1157,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e4c7df7f-15d9-4ed8-aef1-09e7975dd9bf',
        3,
        'FEMALE',
        'AGE_20_24',
        769,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '02b84945-0779-40f0-a4c4-741e95730799',
        3,
        'FEMALE',
        'AGE_25_29',
        135,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '526f809d-c11b-4171-87a7-30b46a5793ae',
        3,
        'FEMALE',
        'AGE_30_34',
        20,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '4480dbf9-58cc-4deb-adb0-09d09c2b0ac2',
        3,
        'FEMALE',
        'AGE_35_39',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'fa1185f6-78f3-4c3e-b6da-2537481d750e',
        3,
        'FEMALE',
        'AGE_40_44',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '7869a335-41e1-4d80-8c93-bf6a5a5c0c7d',
        3,
        'MALE',
        'AGE_0_14',
        40,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '0190880a-ac95-4bd6-aa59-7572b4b1e534',
        3,
        'MALE',
        'AGE_15_19',
        398,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'c875ad97-9cc1-4a4c-acb4-b0f38d74577f',
        3,
        'MALE',
        'AGE_20_24',
        932,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'bf207f63-3108-4ebf-90d8-d046208e80b3',
        3,
        'MALE',
        'AGE_25_29',
        514,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '30afda35-b721-4e2c-8723-181566f6b0a4',
        3,
        'MALE',
        'AGE_30_34',
        149,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a6719ccd-f3d6-47c5-88fe-4a14b9afd487',
        3,
        'MALE',
        'AGE_35_39',
        26,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e427fda8-3b34-4f99-8a3f-a2685f6b28dd',
        3,
        'MALE',
        'AGE_40_44',
        5,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'fd5faf9d-a522-422b-a18f-7c53a21c915c',
        3,
        'MALE',
        'AGE_45_49',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6e97727e-089c-4897-9be1-5fb1db1f98d6',
        4,
        'FEMALE',
        'AGE_0_14',
        66,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '711091f4-bbb8-48ca-9dfa-50b1f041402a',
        4,
        'FEMALE',
        'AGE_15_19',
        895,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '0ae8e041-efd6-4246-9de5-886bd883ef0b',
        4,
        'FEMALE',
        'AGE_20_24',
        560,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'fce9d08d-fc71-441e-95e8-a397d1cf1e7d',
        4,
        'FEMALE',
        'AGE_25_29',
        209,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '922b71a8-cfc6-4278-ada4-3f6b51b0d15e',
        4,
        'FEMALE',
        'AGE_30_34',
        25,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '3d3f9d50-e1ba-4354-82b8-8799a5a86d79',
        4,
        'FEMALE',
        'AGE_35_39',
        4,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '8497bb30-3e67-48d8-9a58-6299d5534852',
        4,
        'FEMALE',
        'AGE_40_44',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ea18c11a-69f6-4118-83fb-6baff1adcb21',
        4,
        'FEMALE',
        'AGE_45_49',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f7dcd37a-7187-4c1f-8bcf-e1e13de026bb',
        4,
        'FEMALE',
        'AGE_50_54',
        6,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '675544fa-b620-4b4d-9766-b897fff4b0bb',
        4,
        'FEMALE',
        'AGE_55_59',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'd8270eeb-b371-45c9-acb3-8a99ed80a5c7',
        4,
        'FEMALE',
        'AGE_60_AND_ABOVE',
        9,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '825ccd63-ec2c-4e63-b35e-c90a67d005bd',
        4,
        'MALE',
        'AGE_0_14',
        8,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'edc99de5-70c2-40c3-81b0-76e3bd77431f',
        4,
        'MALE',
        'AGE_15_19',
        397,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '2f8bfbb7-0c3f-4dcd-a2c4-006b22676a2b',
        4,
        'MALE',
        'AGE_20_24',
        781,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e9794d89-c94f-4b74-8ab6-9e18c936646f',
        4,
        'MALE',
        'AGE_25_29',
        322,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f1908ad4-9bfa-40db-86ae-a40cdc508ffb',
        4,
        'MALE',
        'AGE_30_34',
        38,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '93e1e890-c7bb-48c3-a92a-bbd0ee41826e',
        4,
        'MALE',
        'AGE_35_39',
        12,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '4d6e5c48-b995-4c98-a2d4-5af4ea3f9875',
        4,
        'MALE',
        'AGE_40_44',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '2ce61558-4f59-4ca2-9bbf-5ba9b617d171',
        4,
        'MALE',
        'AGE_45_49',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '675a437d-22a2-402b-8241-8ff5937c943b',
        4,
        'MALE',
        'AGE_60_AND_ABOVE',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '265f03eb-c699-4aa0-812f-a0732befe0cc',
        4,
        'OTHER',
        'AGE_15_19',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '38b9f698-79cf-4ab9-b25b-7c5bd137df5f',
        5,
        'FEMALE',
        'AGE_0_14',
        243,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6fe7be68-e979-4980-be60-59e1a9ed2802',
        5,
        'FEMALE',
        'AGE_15_19',
        1357,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f4109aba-8a85-42b6-8ae9-2f0fd2847de5',
        5,
        'FEMALE',
        'AGE_20_24',
        395,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '3d1c47f8-076c-4af3-8bcf-223e02b172cf',
        5,
        'FEMALE',
        'AGE_25_29',
        17,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '8d6cf888-0ecd-44d0-8aa4-d270c3a097b7',
        5,
        'FEMALE',
        'AGE_30_34',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '95ce81f8-d64d-43dd-bb71-bcba01e0b5b4',
        5,
        'FEMALE',
        'AGE_35_39',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a0c59018-d761-4c04-8d9b-bda36d25a503',
        5,
        'FEMALE',
        'AGE_40_44',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f73a3b13-7db4-4167-a2d3-b5c34a7c4247',
        5,
        'FEMALE',
        'AGE_45_49',
        6,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'fb819b15-043b-4ba9-bdd8-0e8a0a7868c7',
        5,
        'FEMALE',
        'AGE_50_54',
        10,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ba6399a1-8d36-46b4-a27f-dfb07bc00cd4',
        5,
        'FEMALE',
        'AGE_55_59',
        6,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '5ced3c73-17a5-4d10-8966-5d52ee19870d',
        5,
        'FEMALE',
        'AGE_60_AND_ABOVE',
        15,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f8e0d619-b480-4451-9909-afc12f4d59ee',
        5,
        'MALE',
        'AGE_0_14',
        192,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '9afc4d2b-f1dc-4389-ae75-e978c45da724',
        5,
        'MALE',
        'AGE_15_19',
        1050,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '9bdd77ef-9be5-465f-ae5f-fc5b3a00c67d',
        5,
        'MALE',
        'AGE_20_24',
        650,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '593111c1-26e5-41a6-997a-78d98a0bc65e',
        5,
        'MALE',
        'AGE_25_29',
        45,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e63ea9f8-a0f8-4554-b06c-d72c8c3cdbf9',
        5,
        'MALE',
        'AGE_30_34',
        8,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'dd1df6f2-3832-4d7a-af0f-7fdd8cebcb81',
        5,
        'MALE',
        'AGE_35_39',
        5,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '73ca0145-8c7f-45cc-8248-265a15f29e48',
        5,
        'MALE',
        'AGE_40_44',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '08bbcbc8-023e-4276-9c64-ccba51aec2d5',
        5,
        'MALE',
        'AGE_45_49',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'c55fb6e3-a730-412d-914a-43faf7d6ce05',
        5,
        'MALE',
        'AGE_50_54',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '66bd4003-d4bc-4f5e-b6b2-214e72f9ba70',
        5,
        'MALE',
        'AGE_55_59',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e5f00adb-644a-43c5-95bc-a553db706238',
        5,
        'MALE',
        'AGE_60_AND_ABOVE',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '351d842a-e29b-43e9-bbea-6ea30a35794f',
        6,
        'FEMALE',
        'AGE_0_14',
        222,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '4deeef18-0ee1-426d-b685-a8fafc496ef6',
        6,
        'FEMALE',
        'AGE_15_19',
        1399,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ac869040-0f8d-479d-826c-1883b9517596',
        6,
        'FEMALE',
        'AGE_20_24',
        826,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '5bee380f-974d-4014-9c45-ad5166eee31a',
        6,
        'FEMALE',
        'AGE_25_29',
        43,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '0f6a436d-1184-40c0-874b-1da8327780d8',
        6,
        'FEMALE',
        'AGE_30_34',
        7,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '55790e8e-ce6d-4932-aba7-e947016e6f53',
        6,
        'FEMALE',
        'AGE_35_39',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'e1570cdc-e1d9-46a6-932b-bdfb841d6085',
        6,
        'MALE',
        'AGE_0_14',
        45,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a5a8ba86-d8c4-4fcf-a136-f330ccc2b9b7',
        6,
        'MALE',
        'AGE_15_19',
        820,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '48348bfb-dafd-442b-a560-82723a59f936',
        6,
        'MALE',
        'AGE_20_24',
        1308,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '889614fb-d741-4e77-940f-44723ddd3a71',
        6,
        'MALE',
        'AGE_25_29',
        165,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ed07fd00-a88c-4e0a-84f8-ce03e801c3d5',
        6,
        'MALE',
        'AGE_30_34',
        23,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '16e73932-256a-4494-a9ac-ab68ec82e7c2',
        6,
        'MALE',
        'AGE_35_39',
        6,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '8551a8f5-763e-40c3-b4e3-baf407294ed0',
        7,
        'FEMALE',
        'AGE_0_14',
        117,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a975e84b-7738-4f18-85c2-9ebe942b332a',
        7,
        'FEMALE',
        'AGE_15_19',
        1724,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '99591ecd-e256-41e5-a8da-8ff44de9d731',
        7,
        'FEMALE',
        'AGE_20_24',
        780,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '1248fda7-372b-4466-aaa0-69d4be47f1bf',
        7,
        'FEMALE',
        'AGE_25_29',
        26,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ecf2d038-8c14-49c1-9284-c9dcb28166a3',
        7,
        'FEMALE',
        'AGE_30_34',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '805a52e3-14dd-4373-b53f-0877b28b9e46',
        7,
        'FEMALE',
        'AGE_55_59',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '14ca414a-021a-4a70-9486-dc9762d4a69e',
        7,
        'MALE',
        'AGE_0_14',
        97,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '9fac5204-9cf8-41ad-a450-cfc16dacee2d',
        7,
        'MALE',
        'AGE_15_19',
        1433,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f2a63b57-7819-42a7-a56b-a72e5d8a056a',
        7,
        'MALE',
        'AGE_20_24',
        934,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ec89bb57-c5fc-457a-ac00-85526fdcb01b',
        7,
        'MALE',
        'AGE_25_29',
        76,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '9d5861bc-702a-4673-b6bc-94608a18fdd7',
        7,
        'MALE',
        'AGE_30_34',
        4,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'b50670a3-22c8-4055-b352-619ee4f67ac8',
        7,
        'MALE',
        'AGE_35_39',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a9eb4263-3013-40a6-bb52-67f469a3f104',
        7,
        'MALE',
        'AGE_45_49',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '3cb69e24-481c-4848-9511-b85fd4692bc3',
        8,
        'FEMALE',
        'AGE_0_14',
        256,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '2d5b2ef7-a447-45fb-ae58-2e1184462834',
        8,
        'FEMALE',
        'AGE_15_19',
        1112,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a953f6b5-eb6e-47d3-aecf-6edd565d3e8a',
        8,
        'FEMALE',
        'AGE_20_24',
        508,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '0f8af787-a96f-42e7-b075-21b10fe877e9',
        8,
        'FEMALE',
        'AGE_25_29',
        42,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'bf64628b-126e-4eb9-b241-409462ef6ce7',
        8,
        'FEMALE',
        'AGE_30_34',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '63309ee0-c3c4-40b6-8178-0ad087a66508',
        8,
        'FEMALE',
        'AGE_35_39',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '26244839-56c2-4879-8efd-d7b4a9f1a306',
        8,
        'FEMALE',
        'AGE_45_49',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'd2cabd1f-0c55-4203-8cd8-19d90d48ff6e',
        8,
        'FEMALE',
        'AGE_50_54',
        2,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '1ae6427e-bdea-44c1-a2d1-52cb650ad014',
        8,
        'FEMALE',
        'AGE_55_59',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6c75458a-acdd-4746-ae9a-51ee640706d3',
        8,
        'FEMALE',
        'AGE_60_AND_ABOVE',
        7,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '3b2104dc-4730-410c-9a67-fa0c9df87fc4',
        8,
        'MALE',
        'AGE_0_14',
        144,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '69718943-6f16-46e0-b4fb-579501c231b3',
        8,
        'MALE',
        'AGE_15_19',
        846,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '74abf0b5-0b50-4950-879f-1addfb0f98e4',
        8,
        'MALE',
        'AGE_20_24',
        758,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'f9d66505-678b-4d8d-9307-0c6e375c8149',
        8,
        'MALE',
        'AGE_25_29',
        100,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a6d0b0d2-1473-40c3-809f-4c1e3b25a6d3',
        8,
        'MALE',
        'AGE_30_34',
        9,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'a66c4d3c-f086-4b34-be55-dd835fea8c8c',
        8,
        'MALE',
        'AGE_35_39',
        5,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        'ddf23ba3-e706-4f86-9388-777b00ba5e29',
        8,
        'MALE',
        'AGE_55_59',
        3,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    INSERT INTO acme_ward_age_gender_wise_first_marriage_age 
    (id, ward_number, gender, first_marriage_age_group, population, created_at, updated_at)
    VALUES (
        '6b42aafa-88a7-4a56-bf9e-1c57b0afd053',
        8,
        'MALE',
        'AGE_60_AND_ABOVE',
        1,
        '2025-05-27 20:54:33',
        '2025-05-27 20:54:33'
    );
    

    END IF;
END
$$;

