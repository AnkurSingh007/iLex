DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Consumer;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Tag;

Create Table Consumer(
  consumer_id int,
  name varchar(255) not null,
  PRIMARY KEY (consumer_id)
);

Create Table Orders(
  consumer_id int,
  order_id int not null,
  PRIMARY KEY (consumer_id, order_id),
  Foreign key (consumer_id) references Consumer(consumer_id)
);

Create Table Tag(
  tag_id int ,
  name varchar(20) not null,
  PRIMARY KEY (tag_id)
);

Create Table Product(
  product_id int,
  tag_id int,
  name varchar(20)  not null,
  PRIMARY KEY (product_id),
  Foreign key (tag_id) references Tag(tag_id)
);

