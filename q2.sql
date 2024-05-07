drop table if exists products;
drop table if exists orders;

create table products(
    id int PRIMARY KEY,
    name VARCHAR(255),
    price float,
    category VARCHAR(255)
);
insert into products (id, name, price, category)
values
       (1, 'PS5',                   500,    'gaming'),
       (2, 'BMW 328i',              45000,  'vehicles'),
       (3, 'AMD Ryzen 9 7950X3D',   1500,   'Tech'),
       (4, 'Potato',                2,      'Vegetables');

create table orders(
    id int PRIMARY KEY,
    product_id int,
    order_date date,
    num int
);

insert into orders (id, product_id, order_date, num)
VALUES
    (1, 2, '2024-04-29', 23),
    (2, 4, '2023-10-25', 43),
    (3, 2, '2024-04-10', 17),
    (4, 3, '2024-04-20', 26),
    (5, 1, '2024-01-13', 42),
    (6, 1, '2023-10-07', 36),
    (7, 4, '2023-10-18', 31),
    (8, 4, '2023-11-19', 3),
    (9, 2, '2024-02-12', 34),
    (10, 3, '2024-02-17', 41),
    (11, 1, '2024-01-11', 23),
    (12, 3, '2024-04-29', 13),
    (13, 4, '2024-05-01', 11),
    (14, 2, '2024-03-28', 12),
    (15, 2, '2024-04-30', 42),
    (16, 3, '2024-03-16', 6),
    (17, 4, '2024-04-14', 39),
    (18, 1, '2023-10-22', 24),
    (19, 4, '2023-12-01', 48),
    (20, 3, '2023-10-17', 46),
    (21, 4, '2024-02-17', 34),
    (22, 2, '2024-01-09', 14),
    (23, 4, '2024-01-08', 26),
    (24, 1, '2023-11-02', 20),
    (25, 4, '2023-12-23', 48),
    (26, 2, '2024-02-16', 30),
    (27, 2, '2023-12-02', 5),
    (28, 3, '2023-12-21', 17),
    (29, 4, '2023-11-30', 1),
    (30, 4, '2023-10-31', 45),
    (31, 2, '2023-10-20', 12),
    (32, 4, '2024-04-10', 34),
    (33, 2, '2023-10-12', 10),
    (34, 2, '2024-03-15', 7),
    (35, 4, '2024-02-16', 7),
    (36, 2, '2024-02-06', 22),
    (37, 4, '2024-03-23', 23),
    (38, 2, '2023-10-13', 3),
    (39, 3, '2023-10-10', 22),
    (40, 1, '2023-10-07', 5),
    (41, 2, '2023-11-15', 43),
    (42, 4, '2023-10-19', 30),
    (43, 2, '2023-11-14', 18),
    (44, 3, '2023-10-06', 31),
    (45, 4, '2024-02-28', 1),
    (46, 1, '2024-04-06', 12),
    (47, 3, '2023-10-27', 25),
    (48, 4, '2023-10-16', 3),
    (49, 3, '2024-03-01', 2),
    (50, 4, '2023-10-10', 13),
    (51, 2, '2023-11-18', 13),
    (52, 4, '2023-12-29', 14),
    (53, 3, '2023-12-10', 33),
    (54, 3, '2024-05-06', 50),
    (55, 4, '2023-12-05', 12),
    (56, 2, '2024-01-24', 29),
    (57, 1, '2023-10-15', 23),
    (58, 3, '2023-11-04', 41),
    (59, 1, '2024-02-13', 20),
    (60, 1, '2024-02-13', 46),
    (61, 2, '2023-11-10', 31),
    (62, 1, '2024-01-20', 15),
    (63, 1, '2024-02-17', 2),
    (64, 1, '2023-12-07', 19),
    (65, 1, '2023-12-27', 7),
    (66, 2, '2023-11-13', 33),
    (67, 4, '2023-10-28', 40),
    (68, 2, '2023-12-02', 38),
    (69, 1, '2023-11-15', 34),
    (70, 4, '2024-03-28', 4),
    (71, 4, '2024-04-09', 25),
    (72, 3, '2023-10-31', 4),
    (73, 3, '2023-10-06', 22),
    (74, 2, '2024-01-07', 13),
    (75, 1, '2024-02-12', 19),
    (76, 3, '2024-02-28', 13),
    (77, 2, '2023-10-15', 11),
    (78, 3, '2024-03-26', 17),
    (79, 2, '2023-11-28', 22),
    (80, 2, '2024-03-15', 6),
    (81, 3, '2024-04-04', 27),
    (82, 1, '2023-12-30', 19),
    (83, 4, '2023-12-07', 47),
    (84, 1, '2024-03-08', 30),
    (85, 4, '2023-10-09', 38),
    (86, 2, '2024-03-13', 29),
    (87, 4, '2023-10-07', 25),
    (88, 3, '2023-11-11', 30),
    (89, 2, '2023-10-31', 7),
    (90, 3, '2024-01-28', 46),
    (91, 4, '2024-02-15', 43),
    (92, 3, '2024-01-08', 14),
    (93, 1, '2023-12-09', 35),
    (94, 2, '2023-12-23', 3),
    (95, 4, '2023-12-06', 17),
    (96, 4, '2024-03-04', 49),
    (97, 1, '2023-12-27', 22),
    (98, 2, '2023-11-14', 27),
    (99, 4, '2024-04-06', 32),
    (100, 4, '2024-04-09', 32),
    (101, 4, '2024-04-03', 46),
    (102, 3, '2023-10-27', 44),
    (103, 1, '2023-11-26', 8),
    (104, 1, '2024-01-14', 49),
    (105, 2, '2023-10-19', 34),
    (106, 4, '2023-11-17', 9),
    (107, 3, '2023-11-10', 39),
    (108, 4, '2024-05-05', 1),
    (109, 1, '2024-02-07', 28),
    (110, 4, '2024-01-30', 49),
    (111, 3, '2024-01-11', 39),
    (112, 3, '2023-11-14', 6),
    (113, 2, '2023-10-24', 25),
    (114, 2, '2023-10-30', 15),
    (115, 1, '2023-10-26', 18),
    (116, 1, '2024-01-16', 3),
    (117, 1, '2024-04-16', 17),
    (118, 1, '2023-11-12', 23),
    (119, 1, '2024-04-01', 27),
    (120, 1, '2024-01-20', 10),
    (121, 4, '2024-05-02', 18),
    (122, 1, '2023-12-04', 46),
    (123, 3, '2023-10-14', 12),
    (124, 1, '2024-03-05', 13),
    (125, 1, '2024-03-30', 12),
    (126, 3, '2023-12-26', 37),
    (127, 4, '2024-04-24', 35),
    (128, 2, '2024-04-30', 33),
    (129, 3, '2024-03-01', 49),
    (130, 3, '2024-04-19', 46),
    (131, 3, '2024-04-23', 26),
    (132, 1, '2023-11-26', 21),
    (133, 4, '2024-01-14', 9),
    (134, 2, '2024-04-30', 37),
    (135, 3, '2023-11-04', 4),
    (136, 1, '2024-05-04', 23),
    (137, 4, '2024-05-02', 7),
    (138, 1, '2024-04-20', 46),
    (139, 4, '2024-03-12', 22),
    (140, 3, '2024-04-23', 8),
    (141, 4, '2024-03-17', 26),
    (142, 1, '2024-05-04', 4),
    (143, 1, '2024-04-25', 25),
    (144, 4, '2024-01-17', 2),
    (145, 4, '2023-11-14', 8),
    (146, 2, '2024-03-15', 28),
    (147, 3, '2024-01-10', 24),
    (148, 3, '2024-03-26', 13),
    (149, 4, '2024-02-18', 37),
    (150, 3, '2024-03-07', 12),
    (151, 1, '2023-12-22', 32),
    (152, 2, '2024-04-19', 34),
    (153, 3, '2024-03-22', 25),
    (154, 4, '2023-12-26', 50),
    (155, 1, '2023-12-12', 13),
    (156, 1, '2023-11-29', 25),
    (157, 3, '2024-04-19', 38),
    (158, 1, '2024-01-11', 38),
    (159, 2, '2024-04-29', 34),
    (160, 1, '2023-12-05', 50),
    (161, 2, '2024-03-24', 11),
    (162, 4, '2023-10-26', 30),
    (163, 2, '2024-01-24', 28),
    (164, 1, '2024-01-19', 36),
    (165, 2, '2024-03-29', 3),
    (166, 1, '2023-11-05', 25),
    (167, 2, '2023-11-03', 37),
    (168, 3, '2023-12-26', 40),
    (169, 2, '2024-01-23', 9),
    (170, 3, '2024-01-02', 49),
    (171, 3, '2024-02-25', 22),
    (172, 1, '2024-01-05', 3),
    (173, 2, '2024-04-14', 48),
    (174, 3, '2024-04-01', 21),
    (175, 1, '2023-11-30', 22),
    (176, 1, '2024-01-20', 19),
    (177, 2, '2024-03-07', 19),
    (178, 2, '2024-01-28', 27),
    (179, 4, '2024-01-02', 26),
    (180, 1, '2024-01-01', 49),
    (181, 2, '2024-04-10', 32),
    (182, 3, '2023-10-09', 28),
    (183, 2, '2023-12-25', 13),
    (184, 2, '2024-01-10', 6),
    (185, 2, '2024-04-24', 34),
    (186, 1, '2023-10-17', 46),
    (187, 1, '2024-04-05', 7),
    (188, 2, '2024-03-30', 25),
    (189, 4, '2023-11-06', 29),
    (190, 4, '2024-01-22', 4),
    (191, 1, '2023-10-10', 45),
    (192, 1, '2024-03-06', 30),
    (193, 1, '2023-12-29', 14),
    (194, 4, '2024-01-09', 17),
    (195, 1, '2024-05-01', 21),
    (196, 2, '2023-12-29', 33),
    (197, 3, '2023-10-21', 31),
    (198, 4, '2023-12-06', 8),
    (199, 2, '2023-12-15', 3),
    (200, 1, '2024-03-14', 32);

select
       products.name as Product_Name,
       sum(num) as Total_Ordered,
       sum(products.price * num) as Total_Sold
from
orders LEFT JOIN products on orders.product_id = products.id
where order_date >= (NOW() - interval '1 month') -- MYSQL: WHERE order_date >= DATEADD(month, -1, GETDATE()) AND order_date < GETDATE()
group by name;