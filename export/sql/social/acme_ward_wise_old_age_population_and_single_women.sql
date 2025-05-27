-- Generated SQL script
-- Date: 2025-05-27 21:12:50


-- Check if acme_ward_wise_old_age_population_and_single_women table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_old_age_population_and_single_women'
    ) THEN
        CREATE TABLE acme_ward_wise_old_age_population_and_single_women (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            male_old_age_population INTEGER NOT NULL,
            female_old_age_population INTEGER NOT NULL,
            single_women_population INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_old_age_population_and_single_women) THEN


    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        'd4bdf057-6729-492c-8c10-5520154eb183',
        1,
        215,
        251,
        75,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        'a0b3c377-a8b4-4c9c-9616-40bcde2fc031',
        2,
        634,
        588,
        318,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        '089f376d-1e03-4cbf-bc9c-a0da53d1c987',
        3,
        468,
        502,
        262,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        '0d2985d0-a5ed-4af1-a50c-de8c5c270b50',
        4,
        207,
        272,
        197,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        'ea7ead1e-b338-4a8a-85fe-18f82ecbb40f',
        5,
        247,
        234,
        156,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        '7bf221fb-8fbe-4bfa-ab93-53992b1509f8',
        6,
        318,
        302,
        72,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        '040cc79a-da8c-49fa-a989-fd1aa33314fe',
        7,
        401,
        355,
        60,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    INSERT INTO acme_ward_wise_old_age_population_and_single_women 
    (id, ward_number, male_old_age_population, female_old_age_population, single_women_population, created_at, updated_at)
    VALUES (
        '3154b876-6f88-4ba4-a755-685a848be36d',
        8,
        255,
        231,
        99,
        '2025-05-27 21:12:50',
        '2025-05-27 21:12:50'
    );
    

    END IF;
END
$$;

