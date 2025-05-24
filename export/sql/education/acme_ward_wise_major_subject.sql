-- Generated SQL script
-- Date: 2025-05-24 12:33:16


-- Check if acme_ward_wise_major_subject table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_major_subject'
    ) THEN
        CREATE TABLE acme_ward_wise_major_subject (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            subject_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_major_subject) THEN


    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '6a130cbc-d238-46d5-aa1d-35a4645b4a25',
        1,
        'BOTANY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'a34f5920-ec0f-415f-bfcd-ac30785a0374',
        1,
        'ECONOMICS',
        52,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '41fd93ed-ad81-4a9f-931b-6001e0a027f2',
        1,
        'EDUCATION',
        6,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'ca6d239c-65c1-4a06-8a5a-67d32ceeaf7b',
        1,
        'ENGINEERING',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '5ecf8c5c-a92d-4ffb-a11c-f6e8de86599d',
        1,
        'ENGLISH',
        27,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'e2b8a33d-11d9-43ac-ada8-605874f5337f',
        1,
        'HOME_ECONOMICS',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '93dd1c6c-6c8c-4afe-a98c-8dd9e267bfcc',
        1,
        'INFORMATION_TECHNOLOGY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'aff3eb95-06db-48de-a5a5-2e6e8ca6589f',
        1,
        'MANAGEMENT',
        36,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '352b0c1d-c76f-49ac-953e-eb3d78ff3ce0',
        1,
        'MEDICINE',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0a6819d9-c64e-43c1-a0ba-db10538b016a',
        1,
        'NEPALI',
        14,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '1508c591-0508-48c0-b370-7c7aeca6dbdf',
        1,
        'OTHER',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7c27da8b-d97d-4bdb-b4e1-9ef09809e8a3',
        1,
        'POPULATION_STUDY',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b4dab48a-feb5-467e-bf5d-59f93f9897a1',
        1,
        'PSYCHOLOGY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '05397baf-095a-4558-b9a7-310be7215ea5',
        1,
        'RURAL_DEVELOPMENT',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '774ac74f-efd4-4f1e-a01d-c01c1427b1e9',
        1,
        'SCIENCE',
        7,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0b3ec42b-f7e1-4c35-86db-507672c96cbe',
        1,
        'SOCIAL_SCIENCES',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'af2bd435-7438-42e1-9b80-21496cb80b04',
        2,
        'BIOLOGY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'bb595162-bf7a-49bb-bc57-23640bfd6a02',
        2,
        'BOTANY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '020d8e93-6a65-4620-a8bc-d489afecc422',
        2,
        'CHEMISTRY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '550f6e1a-3c62-45b4-bff1-9ede0eccc5f3',
        2,
        'COMMERCE',
        23,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0e4027eb-e8a2-4350-aae7-6ad8e7f569d2',
        2,
        'ECONOMICS',
        109,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '1e24ab4f-0d66-4882-b70c-382e069be9fd',
        2,
        'EDUCATION',
        67,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'd26800c1-245e-452e-ae3b-fb7f48f919f4',
        2,
        'EDUCATIONAL_SCIENCE',
        10,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b71090e1-95ff-4797-b238-054ca8e05862',
        2,
        'ENGINEERING',
        32,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'd9671c16-308a-488f-81bb-12905aa20683',
        2,
        'ENGLISH',
        99,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'e7fa31d1-34d1-49e8-a3aa-edc7d4bed848',
        2,
        'FORESTRY_AND_AGRICULTRE',
        39,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'c8089d84-031d-4bfa-9a5a-72083a1d683d',
        2,
        'GEOGRAPHY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7c50122a-8cb0-4d94-9541-eb7fb0e2bc6c',
        2,
        'HISTORY',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'ffb9d90d-784b-46db-963c-e57f98217c49',
        2,
        'HOME_ECONOMICS',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'c03d321b-1c77-4918-abf1-f470915c7d2b',
        2,
        'HUMANITIES',
        9,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '439dbf60-f70a-4e50-a3a6-31ecbd5aebcf',
        2,
        'INFORMATION_TECHNOLOGY',
        8,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '327f710b-8e57-4fd2-80b1-3d2a4b69fa98',
        2,
        'MANAGEMENT',
        183,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '726fb4fa-901b-405b-a403-da185097ee80',
        2,
        'MEDICINE',
        29,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '784dccce-ca19-41b8-baa5-5cfa40eaf01c',
        2,
        'NEPALI',
        100,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '83f2c5cb-8dda-4c34-832a-93d3655e22d0',
        2,
        'OTHER',
        39,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '76ddb7d7-9b88-4d6c-a873-0047b19405fd',
        2,
        'PHYSICS',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0a865197-3124-4045-b1c6-c03d0f86da09',
        2,
        'POLITCAL_SCIENCE',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '78ccd3bf-29e7-453a-948f-8b5b3322e2dc',
        2,
        'POPULATION_STUDY',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'e3e86d22-ca70-4b20-b071-f1ab6411d812',
        2,
        'PSYCHOLOGY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'd5838cc4-4b2f-4932-b836-f583abd4713b',
        2,
        'RURAL_DEVELOPMENT',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'f804f22f-0670-4507-9175-29b975ac06bd',
        2,
        'SCIENCE',
        62,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4f1908f5-b087-445c-8d02-4226cb0ed4fa',
        2,
        'SOCIAL_SCIENCES',
        13,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'ec728b8a-8a91-476f-8ceb-e5e0141bfe1f',
        2,
        'STATISTICS',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0745c2d7-63e5-40ee-b32f-3e3bf1ef50ff',
        2,
        'TOURISM',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4ba2b78b-6812-4984-bb40-536737634863',
        3,
        'CHEMISTRY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '1925b802-1d9a-4b36-aec4-8a4a2b30790a',
        3,
        'COMMERCE',
        6,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '14e71655-c194-4e68-8b6e-660eb811c9b8',
        3,
        'ECONOMICS',
        24,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '30477354-b114-4b82-ae1d-e737474c4af7',
        3,
        'EDUCATION',
        62,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '54983658-67d0-449c-915d-47a36ff06348',
        3,
        'EDUCATIONAL_SCIENCE',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'c7788593-1b0d-48f4-90d2-93cf66e303ac',
        3,
        'ENGINEERING',
        31,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '68e11a1d-bd7f-49e8-91ab-e0a08b81d948',
        3,
        'ENGLISH',
        73,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'e3d9bd2b-fbff-4e51-9b01-59078e5b97a2',
        3,
        'FORESTRY_AND_AGRICULTRE',
        43,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '27b67775-ab96-43a9-8839-425e94f84098',
        3,
        'GEOGRAPHY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '3a005f90-7dd3-4cdc-9bd1-3cecd52270c6',
        3,
        'HISTORY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'd2eab3e8-c41a-4c52-bbfc-b7fe30d709f0',
        3,
        'HOME_ECONOMICS',
        6,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '77b0f5a5-ae5f-4cf9-9438-c48b99ef7a52',
        3,
        'HUMANITIES',
        12,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '2e37f5c4-4c3d-460b-ad99-704743b4fd06',
        3,
        'INFORMATION_TECHNOLOGY',
        29,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '5f8d4ba8-f398-42f8-af1f-435f8d2758c8',
        3,
        'MANAGEMENT',
        241,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '3456a02d-eb0d-456d-949c-7174bc3650ad',
        3,
        'MEDICINE',
        39,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '6a2813b8-a4f2-4c5d-9ada-4c0168da11ed',
        3,
        'NEPALI',
        70,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'f76b5aac-4fed-4768-8a9e-8a1071f6abe4',
        3,
        'OTHER',
        75,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '10cd88ff-d913-496e-b884-e1110b65b32d',
        3,
        'POLITCAL_SCIENCE',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '3afe5114-bac4-4514-b4c5-0b5656d06874',
        3,
        'POPULATION_STUDY',
        17,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '876fda9e-1e6f-4582-9b7b-bb5cc8ed84da',
        3,
        'PSYCHOLOGY',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '2d6009d9-8e3e-4d0c-a317-47adc734f498',
        3,
        'RURAL_DEVELOPMENT',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0a41d92c-20c7-45be-ab8b-f84ced833f3b',
        3,
        'SCIENCE',
        69,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '408af409-aaf0-48c7-9fe9-a877f575b279',
        3,
        'SOCIAL_SCIENCES',
        11,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'f539b4ae-d3d3-4d0e-a9d5-c1a04580df8d',
        3,
        'STATISTICS',
        23,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '3b14f52e-0fc2-441f-bb58-18d33a30f6dd',
        4,
        'ECONOMICS',
        14,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4cc3520b-9b8b-4f3f-acb6-3baf4a3e822c',
        4,
        'EDUCATION',
        13,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7f56b6e6-5ebd-4ee6-8994-3b3133793258',
        4,
        'EDUCATIONAL_SCIENCE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '710d73da-7921-45ca-bc0b-195ca6623d09',
        4,
        'ENGINEERING',
        13,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0d6f603c-a3ab-402e-8ae7-9495645e7d68',
        4,
        'ENGLISH',
        12,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '8716dcd3-d262-44ec-b546-a0f9ec922840',
        4,
        'FORESTRY_AND_AGRICULTRE',
        7,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '6672ec91-db69-4ed8-8cf3-a99c7ccb1bd1',
        4,
        'HISTORY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '670e0574-0634-4c00-8849-8291103cff77',
        4,
        'INFORMATION_TECHNOLOGY',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '3eb1150f-d4a0-4c75-acff-19875bb38986',
        4,
        'MANAGEMENT',
        33,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '9807234e-9622-42a4-8f26-1f4870ea5ad6',
        4,
        'MEDICINE',
        9,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '2069231a-0f88-4404-9fcf-243924109dd0',
        4,
        'NEPALI',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'eed23339-1f86-4781-a95d-d6595d09ac16',
        4,
        'OTHER',
        16,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'f47349ef-9bc4-49da-9589-9a8890009ccd',
        4,
        'POPULATION_STUDY',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'c7ea981b-1684-4ed5-89fc-1546f87009fc',
        4,
        'RURAL_DEVELOPMENT',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '69d79025-9d93-4594-a8b2-12aeae458840',
        4,
        'SCIENCE',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '2a1b7a51-57f0-45da-94d3-d3db693f4290',
        4,
        'SOCIAL_SCIENCES',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '79a1ebc3-1f37-447f-b863-9ebb7bac1eca',
        4,
        'STATISTICS',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0eee88c2-dbe0-42c5-a1cd-d7dadc8cae5d',
        5,
        'BIOLOGY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '1bfd3b2c-0c7b-4de9-bc3a-bec0421ec4b1',
        5,
        'EDUCATION',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '8313052e-b159-4760-b510-117053625972',
        5,
        'EDUCATIONAL_SCIENCE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '91795247-db61-40ef-8a32-ecf3e49629fc',
        5,
        'ENGLISH',
        6,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7c2a5731-aa53-4152-99d0-737e8e69b898',
        5,
        'FORESTRY_AND_AGRICULTRE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '6740e1c1-c912-408f-b270-f6af50d277b0',
        5,
        'HOME_ECONOMICS',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'eab7fd94-bd38-4cba-abec-ecdf1c082745',
        5,
        'INFORMATION_TECHNOLOGY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'ef166410-d04a-49f8-9c55-38b2152bdc93',
        5,
        'MANAGEMENT',
        10,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '0ff64f43-627c-4b59-a5bb-2aace5a36700',
        5,
        'MEDICINE',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4e2b8ec6-af22-480b-817e-3e5ccbfeff78',
        5,
        'NEPALI',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '56a3222e-54e5-453a-9310-e7fe0985b399',
        5,
        'OTHER',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '6af2c36a-2e52-4b58-b2a7-49462ab7d15f',
        5,
        'PHYSICS',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '911293fb-c9f0-40b6-a9ba-17cec40fae34',
        5,
        'POPULATION_STUDY',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '69a5db37-8586-4fac-9974-7d461ee560f1',
        5,
        'PSYCHOLOGY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '93291ad0-26ae-4f89-9af2-f1829696b74a',
        5,
        'SCIENCE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'eb96dedf-8388-4565-b147-e35e47babe5e',
        6,
        'COMMERCE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '44f45dd6-8a4a-49b9-82e7-ba9852fd8039',
        6,
        'ECONOMICS',
        7,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '646dd8e9-ff56-4fba-913d-7ef9ae734db4',
        6,
        'EDUCATION',
        9,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '111c5e83-984a-44c2-8364-c388b627351e',
        6,
        'EDUCATIONAL_SCIENCE',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4fe77a85-38d3-414b-8d67-affe395f6e4b',
        6,
        'ENGINEERING',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7ef9e6e3-34dd-4d32-bec8-3d2c10251604',
        6,
        'ENGLISH',
        24,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '8d31f0ec-1218-40f0-ab20-a0775bb8915c',
        6,
        'HUMANITIES',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '6505b57f-e8f7-4a95-932e-04d58d578d5f',
        6,
        'INFORMATION_TECHNOLOGY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '2ecc9815-da97-436f-be88-2d46cfc0a746',
        6,
        'MANAGEMENT',
        20,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '1b4661c8-1643-446e-9ba7-4e0b5739e656',
        6,
        'MEDICINE',
        8,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '1adba4b4-526e-489f-be1a-c7e00864fca3',
        6,
        'NEPALI',
        19,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'c9d68798-b352-42d9-85f7-3fdda86c9892',
        6,
        'OTHER',
        9,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'a890e693-1866-49a9-a025-c4f0d854d443',
        6,
        'POPULATION_STUDY',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'f4bc818c-9615-460f-8b89-e9406f7fa21a',
        6,
        'PSYCHOLOGY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'f7880606-18cd-45e7-ae31-1c51c05fda4c',
        6,
        'RURAL_DEVELOPMENT',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b546aed2-c300-4f89-8ffd-910cd842bfcb',
        6,
        'SCIENCE',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7198cb28-9fdb-46ac-9986-1d17493ad224',
        6,
        'SOCIAL_SCIENCES',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '59afdd32-b50c-4d86-902f-6d205f905db3',
        7,
        'BIOLOGY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '89713403-7849-44eb-ad31-2d60e01e31f1',
        7,
        'ECONOMICS',
        56,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7f9c802d-1935-4c8a-aff7-ca0ae70b3560',
        7,
        'EDUCATION',
        7,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '5a78aef3-5b80-4f16-abb6-c6f3aa60f24b',
        7,
        'EDUCATIONAL_SCIENCE',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '73e5e162-34d0-419c-badc-1f5af7b83260',
        7,
        'ENGINEERING',
        16,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '93542891-dc0a-4ea0-a801-66325fd9c40a',
        7,
        'ENGLISH',
        9,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '26fc0dcb-5042-472a-8b17-e53959ce8d9f',
        7,
        'FORESTRY_AND_AGRICULTRE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '7030f7c4-c78d-459f-af7f-971c61e43cc3',
        7,
        'HUMANITIES',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'e54bf1a8-52b7-441c-8257-e67801ed2d0c',
        7,
        'MANAGEMENT',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '04df2f0f-11ae-415a-8c2c-6867e91bf8df',
        7,
        'MEDICINE',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '166f58f3-4e81-437b-9040-b5358855ff6a',
        7,
        'NEPALI',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '51460781-13c4-45da-b57e-9ab03f7b7b58',
        7,
        'OTHER',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'dfcc200f-aee3-4920-aedd-09146bdfa988',
        7,
        'POLITCAL_SCIENCE',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'be805a10-eca3-4afa-a61e-ce28a89556a5',
        7,
        'POPULATION_STUDY',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '443ac0ed-4970-4650-af63-01513b1675e1',
        7,
        'SCIENCE',
        5,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '3cf7e800-7789-42bd-b447-72b7aff994a7',
        8,
        'COMMERCE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b04e2c29-ecf2-41b1-828a-881d0cb5adb4',
        8,
        'ECONOMICS',
        16,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '923cab8e-24b9-4ce2-97f1-098466102ae9',
        8,
        'EDUCATION',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4c51e743-8a6e-4e1e-ac98-5f2ecb71eb35',
        8,
        'ENGINEERING',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '4c60f555-a640-4f3f-8db2-d85cfe3d99fb',
        8,
        'ENGLISH',
        3,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'c73b2441-f402-4be0-ba35-c9281256953b',
        8,
        'HISTORY',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '57e1b222-489a-4367-95a1-304d7af4c2f2',
        8,
        'MANAGEMENT',
        6,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b3a4bd4e-d80c-464a-bb3b-63ad6691cea2',
        8,
        'MEDICINE',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b5caa9e3-4a8e-4268-90ab-4dcc3c352575',
        8,
        'NEPALI',
        4,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        'b8fefee8-b93a-42f9-9145-efd6e146570a',
        8,
        'OTHER',
        1,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    INSERT INTO acme_ward_wise_major_subject 
    (id, ward_number, subject_type, population, updated_at, created_at)
    VALUES (
        '065eb679-741e-460a-9f10-48ecd669a17a',
        8,
        'SCIENCE',
        2,
        '2025-05-24 12:33:16',
        '2025-05-24 12:33:16'
    );
    

    END IF;
END
$$;

