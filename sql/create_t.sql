-- перевірено увімкнення ключів
PRAGMA foreign_keys;
PRAGMA foreign_keys = ON;

-- створено таблицю customers
CREATE TABLE customers (
user_id TEXT PRIMARY KEY ,
first_name TEXT,
last_name TEXT,
email TEXT,
gender TEXT,
age INTEGER,
city TEXT,
acquisition_channel TEXT,
registration_date TEXT
);

-- створено таблицю orders
CREATE TABLE orders (
user_id TEXT NOT NULL,
registration_date TEXT,
order_date TEXT NOT NULL,
order_id TEXT PRIMARY KEY,
purchase_amount REAL NOT NULL CHECK (purchase_amount >=0),
order_channel TEXT,
payment_method TEXT,
items_count INTEGER,
delivery_days INTEGER,
order_status TEXT,

FOREIGN KEY (user_id) REFERENCES customers (user_id)
ON UPDATE CASCADE
ON DELETE RESTRICT
);

-- присвоєно індекси для joins
CREATE INDEX idx_orders_user_id ON orders (user_id);
CREATE INDEX idx_orders_order_date ON orders (order_date);
