-- Generated SQL script
-- Date: 2025-05-24 21:22:45


-- Check if acme_ward_wise_cooking_fuel table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'cooking_fuel_type'
    ) THEN
        CREATE TYPE cooking_fuel_type AS ENUM (
            'WOOD',
            'LP_GAS',
            'KEROSENE',
            'ELECTRICITY',
            'BIOGAS',
            'DUNGCAKE',
            'OTHER'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_cooking_fuel'
    ) THEN
        CREATE TABLE acme_ward_wise_cooking_fuel (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            cooking_fuel cooking_fuel_type NOT NULL,
            households INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_cooking_fuel) THEN


    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '63e371f2-9762-4bf7-9297-3b265ddf8b8c',
        1,
        'BIOGAS',
        15,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'a79d5620-fd07-412b-8424-ad5855404f91',
        1,
        'ELECTRICITY',
        4,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'c08d44dc-1287-4708-87a9-47b874067375',
        1,
        'KEROSENE',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'd8c7a64c-9af7-42d2-a6ac-17d6a229bfc9',
        1,
        'LP_GAS',
        558,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '0665637e-b1e4-4bbd-b2f6-3542a0140077',
        1,
        'WOOD',
        332,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '15d71bf9-6484-4b66-8766-dc804ac0541c',
        2,
        'BIOGAS',
        329,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '2eacda0d-e7a7-46d3-954e-d5097d73e27e',
        2,
        'DUNGCAKE',
        4,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'af0db424-7379-4f8b-ada3-bde3ab67dc93',
        2,
        'ELECTRICITY',
        3,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '400e418b-5ba2-4ea3-999f-eb61d46d93c1',
        2,
        'KEROSENE',
        2,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '0d74adf6-8c86-4e0f-aa3f-7ccecee915ac',
        2,
        'LP_GAS',
        1907,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'd86922b7-b02c-454c-9089-4b79d57481a5',
        2,
        'WOOD',
        366,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'af5c967f-fdca-47aa-a7ea-bcde15e3e8f8',
        3,
        'BIOGAS',
        105,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '85b0d747-9eea-4a1c-973b-913edf65c4d2',
        3,
        'DUNGCAKE',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '63f4223f-3a2e-446f-a571-a7e4f0efc522',
        3,
        'KEROSENE',
        7,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'c75cb6b4-eddc-4809-ac1a-bf93b33f65a2',
        3,
        'LP_GAS',
        1857,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '6266db6d-1dd1-48cd-8055-19c9f0c73e52',
        3,
        'WOOD',
        91,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '81aa7c45-9784-4df2-8a85-81fa0af1f286',
        4,
        'BIOGAS',
        19,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '6534d751-c31b-4b47-9327-515bbd8c7219',
        4,
        'DUNGCAKE',
        4,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '2edb401e-60c1-4b68-8ef5-e189df9e3339',
        4,
        'ELECTRICITY',
        3,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '9b62415d-bb22-4adc-949d-d8bdba58e3fa',
        4,
        'KEROSENE',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'bcf4c664-d157-45e7-9f8f-5401c4a20183',
        4,
        'LP_GAS',
        1712,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'fd63db77-229a-4655-b19a-34a8f42d8765',
        4,
        'WOOD',
        93,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '587f031c-0027-4e15-9328-08e65bf69370',
        5,
        'BIOGAS',
        22,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '1d57e76c-91ce-4be2-b830-9da52b83956e',
        5,
        'DUNGCAKE',
        3,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '730157ee-3c7c-4bbc-8a65-e1b125af5a89',
        5,
        'KEROSENE',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'c044fd6f-b084-4b2c-9791-8b99936a8b00',
        5,
        'LP_GAS',
        130,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'e7d8e2b3-29a2-468c-ba1b-4a369f151eaa',
        5,
        'OTHER',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'c41e48ab-6b1a-4b7b-8007-678392a7a361',
        5,
        'WOOD',
        1691,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '6b7fd657-23f7-47b0-b827-76600013f36d',
        6,
        'BIOGAS',
        12,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '2aa3b41b-0e28-468f-8c62-e9dbc1cee2d5',
        6,
        'ELECTRICITY',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '43bec9eb-6ca2-4192-a23e-6215c1f2972b',
        6,
        'LP_GAS',
        636,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '16ebcbe5-1f08-496a-92e1-05dc40d9f33c',
        6,
        'WOOD',
        1322,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '0454460f-5c10-498f-b3bb-5e7f954cc009',
        7,
        'BIOGAS',
        11,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'b371d71a-a4a9-4a50-8b14-c7a7d4d50691',
        7,
        'DUNGCAKE',
        185,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '5c1b8625-64ed-4301-8b56-94803edff1a7',
        7,
        'ELECTRICITY',
        13,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '53ab44a9-fff6-445b-a5be-f973ece7b143',
        7,
        'KEROSENE',
        104,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '749707c8-c39b-4964-8de4-555bbd63b87e',
        7,
        'LP_GAS',
        335,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '821260f5-9091-4a2d-9cd7-1c51a4974ad7',
        7,
        'OTHER',
        2,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '2d61b483-6ac3-4068-b041-c118a78cfd08',
        7,
        'WOOD',
        1757,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'f09ad071-9f9f-41ef-bb36-6df2a48560d3',
        8,
        'BIOGAS',
        74,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '712b9189-4dde-4cf1-90fd-cf7ae9b9af2a',
        8,
        'DUNGCAKE',
        129,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '04f28ece-8521-4948-af5f-840b0fe3b30b',
        8,
        'ELECTRICITY',
        62,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'a6fef067-9105-48ad-9ed8-851fa41bdc10',
        8,
        'KEROSENE',
        223,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        'e358c9a5-1bdb-448e-a772-5bf413946791',
        8,
        'LP_GAS',
        454,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '122b096f-afa6-4921-b0aa-85ef4a90cde2',
        8,
        'OTHER',
        1,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    INSERT INTO acme_ward_wise_cooking_fuel 
    (id, ward_number, cooking_fuel, households, updated_at, created_at)
    VALUES (
        '0231488e-81ec-43e5-a8b3-0d5dd2f646b8',
        8,
        'WOOD',
        947,
        '2025-05-24 21:22:45',
        '2025-05-24 21:22:45'
    );
    

    END IF;
END
$$;

