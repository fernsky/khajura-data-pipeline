-- Generated SQL script
-- Date: 2025-05-23 11:23:53


-- Check if acme_ward_wise_household_income_source table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_household_income_source'
    ) THEN
        CREATE TABLE acme_ward_wise_household_income_source (
            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
            ward_number INTEGER NOT NULL,
            income_source TEXT NOT NULL,
            households INTEGER NOT NULL DEFAULT 0 CHECK (households >= 0),
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_household_income_source) THEN


    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '7eca5b74-ef79-4607-9784-144cc24a2041',
        1,
        'AGRICULTURE',
        575,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '91f987c0-0af4-4aa9-99a5-279365a5e9c9',
        1,
        'BUSINESS',
        77,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'b7e544bd-82ca-45d4-b59c-710105bb109d',
        1,
        'FOREIGN_EMPLOYMENT',
        324,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'a96778ff-d9f6-473b-a8d5-e1d6e09c7d29',
        1,
        'JOB',
        111,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '1e87c13f-4b08-4013-975f-9e91e8729af6',
        1,
        'LABOUR',
        80,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '6256c7e5-8b8b-4dec-993f-602b082f2b2c',
        1,
        'OTHER',
        41,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'efd9cb63-88b7-4d00-b2bc-c24b0ce2607d',
        2,
        'AGRICULTURE',
        1593,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'ebfd007a-8708-4f5d-91bb-9ba456b548fa',
        2,
        'BUSINESS',
        249,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'dc6b1e86-3456-4bc3-bdd6-503d85dd8a8e',
        2,
        'FOREIGN_EMPLOYMENT',
        1040,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'de8557a1-9e5a-4a0a-b83b-e62f1e5542fd',
        2,
        'INDUSTRY',
        4,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'deb0813a-3b57-47a0-b716-d1b3f41d2c5b',
        2,
        'JOB',
        453,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '810bfdfb-cb21-44f1-ad2e-96a5d1f42c64',
        2,
        'LABOUR',
        470,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '11a09793-95e0-495c-a624-1f604aca71c3',
        2,
        'OTHER',
        49,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '129b4be1-dfe4-4913-bc3e-70d2b6405487',
        3,
        'AGRICULTURE',
        527,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '85199cc2-99fa-487c-90a4-826c5a800837',
        3,
        'BUSINESS',
        319,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '9d98e46e-9962-4013-90aa-b3639be5d568',
        3,
        'FOREIGN_EMPLOYMENT',
        606,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '66ae9c6a-220f-4edf-b561-41106ec495aa',
        3,
        'INDUSTRY',
        2,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '24c27b62-ccb6-4a1f-b350-102dc24899f8',
        3,
        'JOB',
        493,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '0e6cf191-b3e9-4c17-80e2-08f371ed9d5b',
        3,
        'LABOUR',
        370,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '55f565a7-42d3-4d7f-93e2-1b2e3610f00b',
        3,
        'OTHER',
        195,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '1e8267c2-3967-4419-93d9-1e679798fc5e',
        4,
        'AGRICULTURE',
        484,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'c4bc979e-041c-4d51-8078-b474a0693b6a',
        4,
        'BUSINESS',
        316,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'ecbb25ce-a200-40b8-b37b-e1ecd46ad26b',
        4,
        'FOREIGN_EMPLOYMENT',
        832,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '105fddbf-5045-4c45-944f-76adfb38cb1c',
        4,
        'INDUSTRY',
        139,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '719c8de6-294b-45d6-9c27-ad109d497432',
        4,
        'JOB',
        281,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '7ba8d167-41a9-4eb9-befb-1fa5d6c0e573',
        4,
        'LABOUR',
        550,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '23d30437-df44-423d-9ac8-974ab45dd1fb',
        4,
        'OTHER',
        117,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '8796d5bf-5c4a-4baa-8211-b0c5f925f361',
        5,
        'AGRICULTURE',
        1251,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'd6571a52-515e-49cc-81c9-0d3cf798b735',
        5,
        'BUSINESS',
        51,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '586b85fc-5a53-4fbd-b501-fe06fb2d9405',
        5,
        'FOREIGN_EMPLOYMENT',
        192,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'bf42d32f-8c5a-4819-acba-5913dce9e498',
        5,
        'INDUSTRY',
        5,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '7e9be3e3-cb59-4a3e-91c4-70a15c095da6',
        5,
        'JOB',
        49,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'be495a82-98ad-470f-8811-51691b4bcad7',
        5,
        'LABOUR',
        1311,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '2617159c-3a2c-4c4e-adca-97fbc824e67c',
        5,
        'OTHER',
        132,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'c934f330-d913-4f23-94d6-0ad07418e5f5',
        6,
        'AGRICULTURE',
        721,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '43ffe4e0-8c84-4bb0-99aa-b3d52f96e658',
        6,
        'BUSINESS',
        156,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '6f14342b-c38a-46f0-80ed-59ee6f22d02a',
        6,
        'FOREIGN_EMPLOYMENT',
        894,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '9670bfc8-153b-42cd-a19f-cc15e8bde2a0',
        6,
        'INDUSTRY',
        2,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '2e41cd7a-8444-40c4-9bc6-06709b4ce4cd',
        6,
        'JOB',
        131,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '7a490c17-e975-4ae4-9fe6-d10ed0806abb',
        6,
        'LABOUR',
        887,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '9f77eaf3-b017-4436-b991-186aa2d60ad9',
        6,
        'OTHER',
        130,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '28f30c5e-6393-4837-8aae-59623fab859d',
        7,
        'AGRICULTURE',
        1504,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '0054c90c-5a57-41ce-8e97-a310d245fd60',
        7,
        'BUSINESS',
        121,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'f3d987c2-23f1-4dd1-a25c-62580f44d269',
        7,
        'FOREIGN_EMPLOYMENT',
        321,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'f823c512-95c1-4f17-8b76-fa3467a121a1',
        7,
        'INDUSTRY',
        33,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '07242ff0-21e9-4b18-b3ca-415cc8b43194',
        7,
        'JOB',
        170,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'e0e74470-5070-4552-934b-943ec103b5d7',
        7,
        'LABOUR',
        1391,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '196d7511-67d7-4524-9e66-1d6916dff917',
        7,
        'OTHER',
        240,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'a1901d31-0774-4dc4-bcc5-8086973a0341',
        8,
        'AGRICULTURE',
        743,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '784f88e9-b33a-43d3-bf70-7ee59bfe9d9b',
        8,
        'BUSINESS',
        338,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '8a0d09c8-a691-413c-8050-920241ab2369',
        8,
        'FOREIGN_EMPLOYMENT',
        308,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'ecc4726d-015f-419f-832a-d6f89bc60170',
        8,
        'INDUSTRY',
        68,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'f89ffaad-668d-4fe8-bd05-5266c99811cf',
        8,
        'JOB',
        58,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        '3e4d63cf-06e6-4ca2-b330-1024f6596e46',
        8,
        'LABOUR',
        720,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    INSERT INTO acme_ward_wise_household_income_source 
    (id, ward_number, income_source, households, updated_at, created_at)
    VALUES (
        'bdc213e8-844f-4950-8e53-6720fd7a20e4',
        8,
        'OTHER',
        54,
        '2025-05-23 11:23:53',
        '2025-05-23 11:23:53'
    );
    

    END IF;
END
$$;

