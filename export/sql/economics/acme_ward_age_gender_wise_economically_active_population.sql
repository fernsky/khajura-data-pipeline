-- Generated SQL script
-- Date: 2025-05-23 16:44:13


-- Check if acme_ward_age_gender_wise_economically_active_population table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_age_gender_wise_economically_active_population'
    ) THEN
        CREATE TABLE acme_ward_age_gender_wise_economically_active_population (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            age_group VARCHAR(100) NOT NULL,
            gender VARCHAR(100) NOT NULL,
            population INTEGER NOT NULL CHECK (population >= 0),
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_age_gender_wise_economically_active_population) THEN


    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'ea471987-eba3-49a7-a5a5-b763058139c6',
        1,
        'AGE_0_TO_14',
        'FEMALE',
        419,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '7a9c529f-d561-4d1a-a95b-37216860f38e',
        1,
        'AGE_0_TO_14',
        'MALE',
        498,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'c79356ae-0820-4d48-bbbd-3d75f223598c',
        1,
        'AGE_15_TO_59',
        'FEMALE',
        1454,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'a24c63dd-1e14-4da2-ac11-5727d5a0280a',
        1,
        'AGE_15_TO_59',
        'MALE',
        1275,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'ecb274ee-343d-4f67-a180-266c79488f20',
        1,
        'AGE_60_PLUS',
        'FEMALE',
        251,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '236d1c35-17e3-4bcf-8522-f8e04f80d053',
        1,
        'AGE_60_PLUS',
        'MALE',
        215,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '292fef05-a21b-482c-8d62-6d8cd2f46aae',
        2,
        'AGE_0_TO_14',
        'FEMALE',
        1197,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'cc36a756-f74b-4f7d-86a2-88e8cd40fce1',
        2,
        'AGE_0_TO_14',
        'MALE',
        1490,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '27d1b0eb-56cc-4314-95da-777251210794',
        2,
        'AGE_0_TO_14',
        'OTHER',
        1,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '435f1300-e843-416b-b6b0-4b2c26b38201',
        2,
        'AGE_15_TO_59',
        'FEMALE',
        4025,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'a8b89cef-beb9-4f20-8326-80614f0e364a',
        2,
        'AGE_15_TO_59',
        'MALE',
        4026,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'ef99fdde-c3b6-4827-9819-f13b9fbb2ff5',
        2,
        'AGE_15_TO_59',
        'OTHER',
        1,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '2d6b304d-6c2a-4dfe-965a-696fa452ceb0',
        2,
        'AGE_60_PLUS',
        'FEMALE',
        588,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '199425c8-44be-4ce1-a8f3-2a03ce852f10',
        2,
        'AGE_60_PLUS',
        'MALE',
        634,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'bebca23e-298e-4ac2-974c-b0a5e3654c96',
        3,
        'AGE_0_TO_14',
        'FEMALE',
        895,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'c97beb00-0fc5-489f-8ce7-b5ab14ec4a29',
        3,
        'AGE_0_TO_14',
        'MALE',
        1040,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '811743cb-cb89-48a7-8d7d-50e2d7aca9fd',
        3,
        'AGE_15_TO_59',
        'FEMALE',
        3102,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '1ae372e1-ca3f-43c4-bfb7-0ab361d7a1ef',
        3,
        'AGE_15_TO_59',
        'MALE',
        3043,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '9ca647f6-fe36-4fdf-a933-6de45138fd74',
        3,
        'AGE_60_PLUS',
        'FEMALE',
        502,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'def84d10-d133-4d66-b34f-09a6d41cd103',
        3,
        'AGE_60_PLUS',
        'MALE',
        468,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'cfa118fc-f984-4461-a157-f043cdf9477c',
        4,
        'AGE_0_TO_14',
        'FEMALE',
        549,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '1a010f2f-eb07-458d-9303-dc90302f8c4f',
        4,
        'AGE_0_TO_14',
        'MALE',
        614,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'acd520c5-712a-41f0-8539-bd0361bed8fb',
        4,
        'AGE_15_TO_59',
        'FEMALE',
        2057,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'dbd323e2-ed6a-4b0c-ba16-514422231922',
        4,
        'AGE_15_TO_59',
        'MALE',
        2006,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'd63ba825-447b-46b8-bcb7-27e1651053ff',
        4,
        'AGE_60_PLUS',
        'FEMALE',
        272,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '977579d4-b6b8-487b-ae3d-61b037c841f2',
        4,
        'AGE_60_PLUS',
        'MALE',
        207,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'af7dfaf3-f530-4024-afa0-e51ac06aa32d',
        4,
        'AGE_60_PLUS',
        'OTHER',
        1,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '8c1ba92a-7883-40de-9fe1-d04bc2f2a76f',
        5,
        'AGE_0_TO_14',
        'FEMALE',
        1104,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'bc378d2a-eb03-4cc5-9eaf-6350ebd7c1e0',
        5,
        'AGE_0_TO_14',
        'MALE',
        1291,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '19c0bbc7-0ce0-412b-a124-c0c11fe5751f',
        5,
        'AGE_15_TO_59',
        'FEMALE',
        2241,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'f57409c5-dcdc-4c29-89d9-cb1018930c8b',
        5,
        'AGE_15_TO_59',
        'MALE',
        2404,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '53e229b4-fb2f-4bfb-b624-acaf405bbcda',
        5,
        'AGE_60_PLUS',
        'FEMALE',
        234,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'ce2efd12-8bd7-40ca-a24a-7c44d9dccd39',
        5,
        'AGE_60_PLUS',
        'MALE',
        247,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'b4062380-065c-4a04-82b4-57a9c6d681c1',
        6,
        'AGE_0_TO_14',
        'FEMALE',
        1341,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '153a8b4f-5131-429e-85e1-95abcf2fbd52',
        6,
        'AGE_0_TO_14',
        'MALE',
        1533,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '39468030-ef7c-4710-a892-2aa654350d7b',
        6,
        'AGE_15_TO_59',
        'FEMALE',
        2735,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'c4e09227-6140-43a4-a7ac-628bec0dfe11',
        6,
        'AGE_15_TO_59',
        'MALE',
        2960,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '79aa9cdc-8a76-4aee-8567-b2a92351ffe8',
        6,
        'AGE_60_PLUS',
        'FEMALE',
        302,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '594e61bf-76e5-422f-a11e-c8de1b475040',
        6,
        'AGE_60_PLUS',
        'MALE',
        318,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '4f03ca01-028a-4e07-a7ee-fac6f8fd5448',
        7,
        'AGE_0_TO_14',
        'FEMALE',
        1173,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '6ef7adde-543b-487c-92eb-2c260805dcd5',
        7,
        'AGE_0_TO_14',
        'MALE',
        1393,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'f6f7bf50-f6ed-4ad1-96c4-2ec4ea3b71a7',
        7,
        'AGE_15_TO_59',
        'FEMALE',
        2821,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '220d79ed-1876-4dac-b30e-1fb3d9e6f59b',
        7,
        'AGE_15_TO_59',
        'MALE',
        3038,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '47101c3c-9e1f-4b99-a3af-17d7b0f235f0',
        7,
        'AGE_60_PLUS',
        'FEMALE',
        355,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'bbbf28b4-5859-4bf2-898f-51acac4cd95e',
        7,
        'AGE_60_PLUS',
        'MALE',
        401,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'a478e225-05b0-4e2f-b7fc-f92a65d559ae',
        8,
        'AGE_0_TO_14',
        'FEMALE',
        653,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'dccd9a1a-5067-4d0a-81e7-30f7cba75ad3',
        8,
        'AGE_0_TO_14',
        'MALE',
        730,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '932ed92b-55d7-4f77-9778-1b15cbc190c9',
        8,
        'AGE_15_TO_59',
        'FEMALE',
        2044,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '2dd7e620-13c0-40dc-aedb-4115a3d41c84',
        8,
        'AGE_15_TO_59',
        'MALE',
        2185,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        '94a377bf-5944-4a58-9463-46f15db2af04',
        8,
        'AGE_60_PLUS',
        'FEMALE',
        231,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    INSERT INTO acme_ward_age_gender_wise_economically_active_population 
    (id, ward_number, age_group, gender, population, updated_at, created_at)
    VALUES (
        'a061c0aa-cbb2-45c3-b14c-b1816237647b',
        8,
        'AGE_60_PLUS',
        'MALE',
        255,
        '2025-05-23 16:44:13',
        '2025-05-23 16:44:13'
    );
    

    END IF;
END
$$;

