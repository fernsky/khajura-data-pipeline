-- Generated SQL script
-- Date: 2025-05-24 12:26:18


-- Check if acme_ward_wise_literacy_status table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_literacy_status'
    ) THEN
        CREATE TABLE acme_ward_wise_literacy_status (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            literacy_type VARCHAR(100) NOT NULL,
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
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_literacy_status) THEN


    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'e59a3581-18da-4853-810e-f6df1a63f6b9',
        1,
        'BOTH_READING_AND_WRITING',
        3462,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '538b3b94-7446-4315-b48f-4a485fe6d814',
        1,
        'ILLITERATE',
        644,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'dd301a9a-6d2c-4568-a211-e7ed991acca4',
        1,
        'READING_ONLY',
        6,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '13c6d373-d8d8-42f0-a3e1-ee4faa3e9b54',
        2,
        'BOTH_READING_AND_WRITING',
        9868,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '4566031f-87ab-425d-af42-a1ebef130c61',
        2,
        'ILLITERATE',
        2057,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '98a3aa22-a5f4-42cc-9fa8-644c1e805166',
        2,
        'READING_ONLY',
        46,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'd0e6cb47-7ad4-40c7-91a4-b5917d14e8c9',
        3,
        'BOTH_READING_AND_WRITING',
        7636,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'de543372-ac75-4dbb-ae04-2c69224344c6',
        3,
        'ILLITERATE',
        1417,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'a252d7ff-c0b2-48bd-95aa-5bfc34b7656d',
        3,
        'READING_ONLY',
        28,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'c70ddc7a-1cf8-4b26-aaf4-b390edd36407',
        4,
        'BOTH_READING_AND_WRITING',
        4020,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '73759b8a-32bc-4aaa-a976-c9c1f2a40db7',
        4,
        'ILLITERATE',
        1676,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '3eda6c03-0b10-4836-9aa9-e6b9918f4db6',
        4,
        'READING_ONLY',
        22,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'aed7a108-97c4-4c5a-8a03-305324214808',
        5,
        'BOTH_READING_AND_WRITING',
        3602,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'b0f343ba-6c4b-4420-a576-d869ee856534',
        5,
        'ILLITERATE',
        3761,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '2cd1ca83-0515-4fc0-ac7b-70346845d026',
        5,
        'READING_ONLY',
        159,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '6e00fa0b-a934-4288-b324-b145d0f2c17e',
        6,
        'BOTH_READING_AND_WRITING',
        6123,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '3499e51a-502a-4e24-af93-15b276ac91c8',
        6,
        'ILLITERATE',
        3064,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '258ad5fb-5f42-40d1-abf1-801ddcb9d8fb',
        6,
        'READING_ONLY',
        2,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'b2d68053-cfb4-4c13-923a-3d1e787ad550',
        7,
        'BOTH_READING_AND_WRITING',
        4030,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'a7643c54-e652-4671-826f-59c2471ac4e6',
        7,
        'ILLITERATE',
        5065,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '79da3c7c-17f9-4dc5-a5d6-4003aeb0ec35',
        7,
        'READING_ONLY',
        86,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '105b9a78-8d70-4340-8b36-08a83dc05716',
        8,
        'BOTH_READING_AND_WRITING',
        2036,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        'aa5f4893-4c9b-47ae-b8fa-9e65ef862ec9',
        8,
        'ILLITERATE',
        4052,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    INSERT INTO acme_ward_wise_literacy_status 
    (id, ward_number, literacy_type, population, updated_at, created_at)
    VALUES (
        '0aef0f75-7760-4fa6-bbc8-b2df2b40e7af',
        8,
        'READING_ONLY',
        12,
        '2025-05-24 12:26:18',
        '2025-05-24 12:26:18'
    );
    

    END IF;
END
$$;

