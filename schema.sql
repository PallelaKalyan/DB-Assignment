#Create the 'product_category' table:

CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

#Create the 'product' table with foreign key referencing the 'product_category' table:

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    category_id INT,
    product_inventory TEXT,
    created_at TIMESTAMP,
    inventory_id INT,
    price DECIMAL(10, 2),
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);


