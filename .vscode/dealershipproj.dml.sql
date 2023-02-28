-- - Shannon
INSERT INTO sales_person(
    first_name,
    last_name
) VALUES (
    'Don',
    'Jacobs'
),
(
    'Ryan',
    'Matthews'
),
(
    'Stephen',
    'Williams'
);
INSERT INTO sales_invoice(
    sale_date,
    sales_person_id,
    car_id,
    customer_id
) VALUES (
    '2003-16-04',
    7,
    1,
    2
),
(
    '2016-13-04',
    8,
    2,
    3
),
(
    '2026-12-04',
    9,
    3,
    1
);

INSERT INTO customer(
    first_name,
    last_name,
    phone_num,
    customer_address
) VALUES (
    'Moe',
    'Kaid',
    '313-333-3333',
    '313 grove st'
),
(
    'Emma',
    'Borsavage',
    '888-888-8888',
    '626 grove st'
),
(
    'Shannon',
    'Melvin',
    '727-777-7777',
    '929 grove st'
);
-- - Shannon
-- - Moe
INSERT INTO mechanic (
    first_name,
    last_name
) VALUES (
    'Mason',
    'Bercier'),
    ('Christian',
    'Askew'),
    ('Dylan',
    'Katina'
);

INSERT INTO mechanics_used (
    mechanic_id
) VALUES (
    1
),
(
    2
),
(
    3
),
(
    4
);

INSERT INTO car(
    make,
    model,
    color,
    car_year,
    for_sale
) VALUES (
    'Dodge', 'Durango SRT Hellcat', 'Black', '2023', true),
    ('Lexus', 'LFA', 'Black', '2013', true),
    ('Jeep', 'Grand-Wagoneer L', 'Black', '2023', true
);
INSERT INTO service_ticket(
    date_of_service,
    service_done,
    car_id,
    customer_id,
    mechanics_used_id
) VALUES (
    '2023-01-01',
    'Oil change and filter',
    1,
    3,
    2
),
(
    '2013-01-01',
    'Tires changed and rotated',
    2,
    1,
    4
),
(
    '2023-02-02',
    'Engine tune-up',
    3,
    2,
    3
);
-- - Moe

