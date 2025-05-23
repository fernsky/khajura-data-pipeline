-- Generated SQL script
-- Date: 2025-05-23 13:29:44


-- Check if acme_ward_wise_major_skills table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_major_skills'
    ) THEN
        CREATE TABLE acme_ward_wise_major_skills (
            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
            ward_number INTEGER NOT NULL,
            skill TEXT NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_major_skills) THEN


    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2aaa996d-cd49-439c-a708-04485b264262',
        1,
        'OTHER',
        1545,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6d0fcd55-1ee3-40d2-99d6-c7c7b7e5c457',
        1,
        'SELF_PROTECTION_RELATED',
        79,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '721d9cd7-dcff-4e56-ac50-494663a432e9',
        1,
        'COMPUTER_SCIENCE_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'fdeab40f-7e52-4936-8c06-a0ee445766f8',
        1,
        'AGRICULTURE_RELATED',
        117,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2b451d4b-0e3d-424f-bcf0-9daa4ddd1fdd',
        1,
        'BEUATICIAN_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '44d61bfb-708d-47f0-9ed6-74028aaa789e',
        1,
        'MUSIC_DRAMA_RELATED',
        9,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6f0361f2-f638-44bc-b7cf-be235dccc65f',
        1,
        'ANIMAL_HEALTH_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6f166af4-4b9b-4687-9b8d-1e07f21e2245',
        1,
        'SEWING_RELATED',
        36,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '12a043b7-5d29-488b-a27c-7a6d4553b334',
        1,
        'PLUMBING',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '60d38bb5-a8f6-4524-b2f2-780139ae78a1',
        1,
        'FURNITURE_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ad4be2e4-5af3-4594-a94e-e9a2a38ac1db',
        1,
        'ELECTRICITY_INSTALLMENT_RELATED',
        14,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '02b29ab1-318f-404b-9a00-724600f0be3f',
        1,
        'HUMAN_HEALTH_RELATED',
        12,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e6cb6c1d-e5e2-4113-87b9-41a41c22e6b7',
        1,
        'MECHANICS_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '973d0d06-2c9e-4b2e-a1e0-de9df3c99c6c',
        1,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a586b533-7cc9-4e0c-a2f1-375193c61513',
        1,
        'NONE',
        1409,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '188a6322-fea7-4b1a-ae73-d21139f6629c',
        1,
        'TEACHING_RELATED',
        153,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a89a495a-a8a5-4049-bbf3-1cd096586391',
        1,
        'PHOTOGRAPHY_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2ce9a7ec-192b-4bad-bc73-7c93ab571f43',
        1,
        'DRIVING_RELATED',
        27,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '0b40a63e-3862-4158-8dbc-3f9f7cbcbf1a',
        1,
        'CARPENTERY_RELATED',
        14,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6b9e5cbd-f139-44ed-80b8-378d130ca3f3',
        1,
        'HANDICRAFT_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e83f7664-9096-434f-bf33-87e9908de717',
        1,
        'HOTEL_RESTAURANT_RELATED',
        79,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '883208c5-fcee-474a-a30e-d88efad7c0cb',
        2,
        'OTHER',
        3901,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '02a1362d-0451-4d0b-aaed-62616f2f5693',
        2,
        'SELF_PROTECTION_RELATED',
        44,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ae8724dd-437e-4f85-96d3-f5a7580b2261',
        2,
        'ENGINEERING_DESIGN_RELATED',
        12,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '22f7956b-fdce-4914-a381-3bf2bfc00c0c',
        2,
        'COMPUTER_SCIENCE_RELATED',
        92,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a4101d25-18e0-4d07-be8b-153bbf6024c2',
        2,
        'AGRICULTURE_RELATED',
        712,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '9351a0dd-9741-466c-a923-2bc5fe693dfc',
        2,
        'BEUATICIAN_RELATED',
        34,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ce73721c-dfea-446b-b923-05d179e4ff6e',
        2,
        'JWELLERY_MAKING_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3ce1544f-d83a-4a78-8a89-4e2d7aad15a5',
        2,
        'MUSIC_DRAMA_RELATED',
        13,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f28e4bec-8f5f-4b5d-9000-c73d2722c284',
        2,
        'PRINTING_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '38b845dd-7e8a-4076-9db4-81d6919aa1d5',
        2,
        'LAND_SURVEY_RELATED',
        6,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'fb1c9df3-5bde-44ab-abd0-5fd1af14f4e5',
        2,
        'ANIMAL_HEALTH_RELATED',
        8,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '874e5dfb-d5d8-4aa7-86dc-e9f9bca78860',
        2,
        'SEWING_RELATED',
        78,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '39a24136-2c73-4258-bb84-9d816a9baf7c',
        2,
        'PLUMBING',
        20,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '75430aad-9dd1-473c-9503-dc1c421ba502',
        2,
        'FURNITURE_RELATED',
        11,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3a5d976d-f6d5-4c09-ae2a-5fb28b2cd951',
        2,
        'ELECTRICITY_INSTALLMENT_RELATED',
        56,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f1b1f869-81cb-4e5f-adea-29d22fa94fd4',
        2,
        'HUMAN_HEALTH_RELATED',
        87,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '22dfcbd4-df67-454d-a632-8d9c2c18cdd7',
        2,
        'STONEWORK_WOODWORK',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f50ae04e-71b6-4354-a6ad-f6c321d1c8a3',
        2,
        'MECHANICS_RELATED',
        10,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3e4fbac1-166d-4481-abbd-4564a7bb54c2',
        2,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ad9c0cc8-ca0a-42bf-a827-e48754e31288',
        2,
        'NONE',
        4410,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b0aff3b5-a1b2-46bc-9ff4-f0b84cb4aa9e',
        2,
        'TEACHING_RELATED',
        213,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a03b155d-2f92-4dc3-84d7-c2f98812e296',
        2,
        'PHOTOGRAPHY_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f8c7b45b-be6e-408f-9a0e-07c6d74e5a97',
        2,
        'DRIVING_RELATED',
        173,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b08a36c4-a842-410c-b268-bba06a70dcf9',
        2,
        'LITERARY_CREATION_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e6059401-7de4-4e83-beae-a63ccbeb16a1',
        2,
        'CARPENTERY_RELATED',
        84,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'de4a9af8-5752-426c-9c64-b55541a3d495',
        2,
        'HANDICRAFT_RELATED',
        9,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '19b3689c-affb-492d-8bb9-24285505e60d',
        2,
        'HOTEL_RESTAURANT_RELATED',
        286,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3f090260-07cc-493d-b04c-9de2b9ce94e1',
        3,
        'OTHER',
        707,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4ff57e13-ec2d-419f-ba8e-f0503700ecac',
        3,
        'SELF_PROTECTION_RELATED',
        58,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'c74de5a5-c0fb-4c35-9527-f1cbf2de6da1',
        3,
        'ENGINEERING_DESIGN_RELATED',
        17,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '7c9b83fa-8013-45d7-a42f-3a05af1c6feb',
        3,
        'COMPUTER_SCIENCE_RELATED',
        24,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '77b28abf-1816-4539-b1d1-f66d1794d253',
        3,
        'AGRICULTURE_RELATED',
        140,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'c8209b11-cf1d-433f-9487-13c17dae06cd',
        3,
        'BEUATICIAN_RELATED',
        34,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6523fb28-5be2-45b4-8beb-8458f14b6619',
        3,
        'JWELLERY_MAKING_RELATED',
        12,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '1c6f1959-15a2-47a9-aa57-03492276d09b',
        3,
        'MUSIC_DRAMA_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '762bce55-4913-424b-8065-debe5d4317b9',
        3,
        'PRINTING_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '0c8ea010-2a6a-4c8d-9c6a-5043f46ba3d2',
        3,
        'LAND_SURVEY_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ae6d3cd2-e92e-4801-aa16-eeddada6cc66',
        3,
        'ANIMAL_HEALTH_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b2475b2f-acdf-480b-9b73-e940733c2af3',
        3,
        'SEWING_RELATED',
        75,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ef20ee9d-720b-4f54-9b5d-ad0919c7bf29',
        3,
        'PLUMBING',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '40a4be9c-6e3e-4ffd-b32d-ca7d17d0eefd',
        3,
        'FURNITURE_RELATED',
        8,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f0bc49ef-f211-4800-84bd-e1ea643ffb3b',
        3,
        'ELECTRICITY_INSTALLMENT_RELATED',
        35,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a28a464c-2e35-4db8-b8e2-6949c9a415e0',
        3,
        'HUMAN_HEALTH_RELATED',
        67,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8f769d16-9f3b-44bc-a76c-12c5d1a500dc',
        3,
        'MECHANICS_RELATED',
        8,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3f1a626e-b4cf-4588-a73c-fc582d586e3c',
        3,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        25,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4a602cd3-80a8-4d38-b09f-5400e7c5bfbf',
        3,
        'NONE',
        6147,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8dc63937-eb66-436e-bfd3-e5fa88b20bbe',
        3,
        'TEACHING_RELATED',
        202,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '9ced74b0-efe0-48c6-b354-53fdda7a7941',
        3,
        'PHOTOGRAPHY_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd8f2847f-37b2-41f8-b828-90988b89f725',
        3,
        'DRIVING_RELATED',
        141,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'bb0d566e-5b35-425b-aea1-d0a3d7d53323',
        3,
        'LITERARY_CREATION_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a352625a-cb4b-4dca-81d2-3f1816e2971a',
        3,
        'CARPENTERY_RELATED',
        20,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '009b0a3a-1eab-434c-b838-103cdce8175e',
        3,
        'HANDICRAFT_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f66e3d84-58dc-47c0-8f73-3ae8eeeae0aa',
        3,
        'HOTEL_RESTAURANT_RELATED',
        108,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'cd721fc9-15b0-47a8-a77d-4cde91066a50',
        4,
        'OTHER',
        272,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '407cee72-d7c5-4f0d-9c46-fb2b4d4eda57',
        4,
        'SELF_PROTECTION_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '10b99516-dedf-4227-ac44-624d0b7c397a',
        4,
        'ENGINEERING_DESIGN_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '1e775420-9931-4285-8080-b4be5d8f1a74',
        4,
        'COMPUTER_SCIENCE_RELATED',
        15,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '30eed384-9885-4380-87d1-e803cb25bf9e',
        4,
        'AGRICULTURE_RELATED',
        149,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '7f35ecac-fb99-4c99-810c-8d80e2784a7f',
        4,
        'BEUATICIAN_RELATED',
        9,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '13a502e8-6f91-4e14-bd6f-6d4cf68492cf',
        4,
        'JWELLERY_MAKING_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '9f6a3be1-763a-4c7c-aeb0-e5fbc946269e',
        4,
        'MUSIC_DRAMA_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2294621a-5d5a-4584-b8fe-8701d5babf0a',
        4,
        'PRINTING_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ec398ee8-d5e3-431c-8d91-fe157b03fd14',
        4,
        'LAND_SURVEY_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '1756d586-2e70-40f5-9dcd-20dad9ea2f87',
        4,
        'ANIMAL_HEALTH_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd6219a1b-2250-4902-bc35-a9fd600d08ea',
        4,
        'SEWING_RELATED',
        26,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e378195c-e728-4eaa-9afc-6abae4d01aac',
        4,
        'PLUMBING',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '0ed41553-8716-4672-a126-0766d6b53f40',
        4,
        'FURNITURE_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a2cc22cd-9aaf-4e0b-ae88-73a881b739b1',
        4,
        'ELECTRICITY_INSTALLMENT_RELATED',
        10,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2b7b9837-1ec0-4164-865e-0df5858054e4',
        4,
        'HUMAN_HEALTH_RELATED',
        11,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b0ff502c-f72c-42a5-8693-2440c5310d16',
        4,
        'STONEWORK_WOODWORK',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '24b81c62-a415-4af0-85d7-633fd3410657',
        4,
        'MECHANICS_RELATED',
        6,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'cd4b913f-9c13-4db5-8abb-7a5b560a9009',
        4,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ba07db51-0bcc-4883-b8b1-26633aa19b83',
        4,
        'NONE',
        4259,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '39ae3929-acde-4b04-8bc8-2f002d95b9ec',
        4,
        'TEACHING_RELATED',
        41,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '001e6533-3688-47a3-bfef-52fd0b15eb80',
        4,
        'PHOTOGRAPHY_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '96166541-d8f8-44e9-a379-3cdbe4b5e74d',
        4,
        'DRIVING_RELATED',
        23,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '588ab606-620c-46b8-926d-ef71010e17b8',
        4,
        'LITERARY_CREATION_RELATED',
        8,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4aa21921-99aa-4d2a-88dc-b4f96a14f4a7',
        4,
        'CARPENTERY_RELATED',
        11,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '70368ee6-7efa-4b18-98c0-2194718f321c',
        4,
        'HANDICRAFT_RELATED',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6584ab25-d636-45a5-9100-24a4f1186db5',
        4,
        'HOTEL_RESTAURANT_RELATED',
        89,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '691d0327-fee8-4430-851b-d7ec31f1fb47',
        5,
        'OTHER',
        3410,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '9c61d3da-b8c2-408e-b979-ff9c151cdb3a',
        5,
        'SELF_PROTECTION_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4443132d-ad28-476c-9fce-bf5c56d81f9a',
        5,
        'ENGINEERING_DESIGN_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6619f2b6-9b06-4f0a-87d8-0b37645092d0',
        5,
        'COMPUTER_SCIENCE_RELATED',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3df53be8-07cd-43e8-a951-a4cf837cd612',
        5,
        'AGRICULTURE_RELATED',
        805,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e7c1f4dc-0148-46ca-ad85-bf74d56b8819',
        5,
        'BEUATICIAN_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8a12686c-0f54-40db-98b8-6a9f9d9def83',
        5,
        'MUSIC_DRAMA_RELATED',
        11,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6f7efd6f-e522-4aab-ac5e-056b0aa377d6',
        5,
        'ANIMAL_HEALTH_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3f62b966-03be-41ba-a536-a51ed73bccbe',
        5,
        'SEWING_RELATED',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2dfb84d1-63d2-40d5-9fcc-2d99cbf6c2fc',
        5,
        'PLUMBING',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a0cc959c-8276-404a-af8d-d667693bf896',
        5,
        'FURNITURE_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '783a56c6-1746-4013-b0db-b1902ed5ae26',
        5,
        'ELECTRICITY_INSTALLMENT_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '7cc5f75e-72ea-40b1-a3b7-4a17f5c27549',
        5,
        'HUMAN_HEALTH_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'c9b303be-397a-4cf3-ac4e-68bc8462b2c9',
        5,
        'STONEWORK_WOODWORK',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '5a110e37-d9d2-47ae-a5ab-500e732407f7',
        5,
        'MECHANICS_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'be8e57d4-4652-410f-9a04-295dc281382f',
        5,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '87141167-562d-4ed7-b516-11340028f94e',
        5,
        'NONE',
        840,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f81f41fa-49b7-453a-9cf7-376f147157b2',
        5,
        'TEACHING_RELATED',
        738,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '37e5b5f1-bc92-4a7e-8939-0a5127ba588d',
        5,
        'DRIVING_RELATED',
        14,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '522ecb66-d79b-4e3b-b8be-9e2f93a198b3',
        5,
        'LITERARY_CREATION_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b189e49f-7890-4c7b-b884-0113aa9b2438',
        5,
        'CARPENTERY_RELATED',
        13,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '7aedf179-3c1e-44fa-a92e-89c97b16f3a9',
        5,
        'HANDICRAFT_RELATED',
        14,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6b19a225-c281-4065-9b5b-96bfd21bef7c',
        5,
        'HOTEL_RESTAURANT_RELATED',
        14,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd57a6e88-c9e9-4ccb-815b-79ba9ee74c23',
        6,
        'OTHER',
        2375,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3d803128-e48f-479a-a054-8bc4857c9016',
        6,
        'SELF_PROTECTION_RELATED',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8076ede3-dade-4ee9-96e7-35d8d5f23151',
        6,
        'ENGINEERING_DESIGN_RELATED',
        10,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'dba3ed2e-c285-4338-b12a-ef08b0df663c',
        6,
        'COMPUTER_SCIENCE_RELATED',
        39,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '198e70fc-ca5c-4774-9891-12dcbeb7e892',
        6,
        'AGRICULTURE_RELATED',
        53,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'faaafd85-88d8-4e66-a26f-80aa0faa2e4d',
        6,
        'BEUATICIAN_RELATED',
        18,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd52d8b42-cba9-468b-b7ff-d6755d162305',
        6,
        'JWELLERY_MAKING_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '2bd538bc-02ac-4dd2-b5a3-3c0609b811e4',
        6,
        'MUSIC_DRAMA_RELATED',
        6,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '15e86861-bf50-43ba-90a9-b1ae3fd96e90',
        6,
        'LAND_SURVEY_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6b37aa29-9249-4bd1-bff2-a78652c0cb4a',
        6,
        'SHOEMAKING_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '797955f3-e0bf-4901-afe7-539a9392faf6',
        6,
        'ANIMAL_HEALTH_RELATED',
        6,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '139cb171-cd30-4f8e-9797-f090076738de',
        6,
        'SEWING_RELATED',
        150,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd2541667-3566-413b-bb4a-7af51848ba4d',
        6,
        'PLUMBING',
        9,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a9fb7bae-961e-4ab8-9f4f-3062c86145a2',
        6,
        'FURNITURE_RELATED',
        20,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd4213cd5-8993-4484-8826-f8f85ab618bc',
        6,
        'ELECTRICITY_INSTALLMENT_RELATED',
        33,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'f517dfd4-6cb9-4d8c-962f-3549d055a68c',
        6,
        'HUMAN_HEALTH_RELATED',
        17,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b3e4b8d1-8fed-49ba-ba73-432e1a569037',
        6,
        'STONEWORK_WOODWORK',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b827eaab-6663-416c-8e32-a0a8cc07b86b',
        6,
        'MECHANICS_RELATED',
        18,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'fbbcb324-5a52-45e0-a38f-095ea65f95bb',
        6,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        7,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b2553c9d-168d-4772-b105-e1cff56147a5',
        6,
        'NONE',
        4084,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8f8746f4-6309-4ad7-b72b-0ffa62402f1b',
        6,
        'TEACHING_RELATED',
        116,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '51e125cb-c005-46b9-93b3-afef0c9119b2',
        6,
        'DRIVING_RELATED',
        125,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a110094e-786d-419c-bc90-0e7065f9266d',
        6,
        'LITERARY_CREATION_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '79cbe46c-f9c0-4d25-afa0-1e18df159302',
        6,
        'CARPENTERY_RELATED',
        172,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '92f01bab-a21a-4eca-8a1a-86d852ef7d11',
        6,
        'HANDICRAFT_RELATED',
        10,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '961dba4d-412b-4792-83c4-8d71ca8b2ee4',
        6,
        'HOTEL_RESTAURANT_RELATED',
        87,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ded5b06c-3fe5-44a5-ba12-31433ca66a2f',
        7,
        'OTHER',
        4190,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '7d218aa8-f05d-4852-9070-d183b3f1cd73',
        7,
        'SELF_PROTECTION_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a33466cb-7d9e-4918-afaa-ce2bdd9b098d',
        7,
        'ENGINEERING_DESIGN_RELATED',
        22,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '45c4ad1a-afb5-494d-8932-7e433f21db4c',
        7,
        'COMPUTER_SCIENCE_RELATED',
        36,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a2ea3a1b-9ec6-4966-9338-c3230977453b',
        7,
        'AGRICULTURE_RELATED',
        959,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4944fd67-080d-445e-8be7-11fade366d7f',
        7,
        'BEUATICIAN_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '274eb394-af76-4660-b97d-c30c09585265',
        7,
        'MUSIC_DRAMA_RELATED',
        70,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'c70073c0-9859-43e3-b1b3-f6c85bf8112f',
        7,
        'PRINTING_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd9c78f3c-3e05-462e-8364-b20a65b7afdc',
        7,
        'SHOEMAKING_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '180ccbb4-3a0a-4aeb-aa71-4ad6577220da',
        7,
        'SEWING_RELATED',
        54,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '81efbe0f-4380-40b1-99f1-682fce69081a',
        7,
        'PLUMBING',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '1dddac25-5eaf-4161-9bc7-62a18d1a073d',
        7,
        'FURNITURE_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '69b65d9c-c795-443a-8b33-a914f1c3ba65',
        7,
        'ELECTRICITY_INSTALLMENT_RELATED',
        12,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '3692f428-f0c6-45c2-860c-e201071e90cb',
        7,
        'HUMAN_HEALTH_RELATED',
        11,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'af54a150-c49c-4018-a14a-c8b0239c8a4f',
        7,
        'STONEWORK_WOODWORK',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'eb927ab1-3492-42be-8c62-e866133d7b65',
        7,
        'MECHANICS_RELATED',
        8,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd8e6df62-7872-45d4-b63d-902ef6b6437b',
        7,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ba74c5f3-17ae-476f-b569-c290556e24df',
        7,
        'NONE',
        1545,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '10d61e5e-552d-4a32-8fcb-438c45c320d2',
        7,
        'TEACHING_RELATED',
        385,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '6324b7d8-72e4-42e0-a07c-821d07ca95cf',
        7,
        'PHOTOGRAPHY_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '04a383c7-b755-4108-841d-9ec2c8362ba6',
        7,
        'DRIVING_RELATED',
        74,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4d017c68-1441-43fd-a5b7-6f7688a11bc0',
        7,
        'LITERARY_CREATION_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '45c56fff-ac32-4199-9749-e90a0eeb1082',
        7,
        'CARPENTERY_RELATED',
        20,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'cf7bfcad-eda3-431b-a1bf-0cb689e96757',
        7,
        'HANDICRAFT_RELATED',
        19,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ca416e03-f67b-4c12-a4ae-28bcc442c7ec',
        7,
        'HOTEL_RESTAURANT_RELATED',
        36,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8ba819e5-5d5c-4f2b-83d7-92a5a902d06a',
        8,
        'OTHER',
        1261,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '191fbe11-deb0-430d-92f6-a3c5c4d3ab98',
        8,
        'SELF_PROTECTION_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '03513cfe-c54e-4168-94bd-b881cefdef79',
        8,
        'ENGINEERING_DESIGN_RELATED',
        2,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'ed5c1b6e-a275-4e13-9e5f-3b88950f0ee0',
        8,
        'COMPUTER_SCIENCE_RELATED',
        20,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '99f678cb-0d1e-4c3a-ba92-45ad499ba4be',
        8,
        'AGRICULTURE_RELATED',
        61,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e1fa3f15-431f-46e2-8045-d9f98aeda524',
        8,
        'BEUATICIAN_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e98f44d5-e91f-46fa-a31e-c03f828d42f9',
        8,
        'JWELLERY_MAKING_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '66a6f2da-fe03-4b45-a5a4-98906269cd6d',
        8,
        'MUSIC_DRAMA_RELATED',
        17,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e46dc449-7c93-47a1-b865-d55991f8a9c1',
        8,
        'LAND_SURVEY_RELATED',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '94fd0df2-c2cb-4aa6-8da3-0b1798548113',
        8,
        'SEWING_RELATED',
        51,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4eaa9c4d-714e-46aa-9103-d835d6f820a9',
        8,
        'PLUMBING',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '34c2bfeb-329e-4588-befe-92358bd06aaa',
        8,
        'FURNITURE_RELATED',
        4,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'a81f4e38-01f5-4b56-b306-abd27c95709d',
        8,
        'ELECTRICITY_INSTALLMENT_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '24696a62-a7b8-48de-976c-f33cc0e625e0',
        8,
        'HUMAN_HEALTH_RELATED',
        3,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '0908dc49-01e7-4cca-8348-1971dfa42783',
        8,
        'MECHANICS_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'd8121822-7271-4ba6-9d79-2a7655e5c133',
        8,
        'RADIO_TELEVISION_ELECTRICAL_REPAIR',
        1,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '064f1c91-524b-4bdd-b234-a7db32be776b',
        8,
        'NONE',
        3397,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '4d0efff6-9f58-442e-9f51-f1c9f9cca9df',
        8,
        'TEACHING_RELATED',
        203,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'e14728b9-5cf8-4d5d-b448-2e42e9bffeaa',
        8,
        'DRIVING_RELATED',
        45,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '458e0f56-2921-48f5-8604-dde836bba9f4',
        8,
        'LITERARY_CREATION_RELATED',
        5,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        'b166c4ab-6fea-4562-9a29-40b54dc4bc6b',
        8,
        'CARPENTERY_RELATED',
        34,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '92c01806-b5b1-4250-9fe0-9c236f39f1d5',
        8,
        'HANDICRAFT_RELATED',
        55,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    INSERT INTO acme_ward_wise_major_skills 
    (id, ward_number, skill, population, updated_at, created_at)
    VALUES (
        '8fd95b4b-de75-43af-adbd-fa7dd494b08c',
        8,
        'HOTEL_RESTAURANT_RELATED',
        22,
        '2025-05-23 13:29:44',
        '2025-05-23 13:29:44'
    );
    

    END IF;
END
$$;

