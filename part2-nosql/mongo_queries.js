// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
{
  _id: "P1001",
  name: "Samsung Galaxy S23",
  category: "Electronics",
  price: 75000,
  brand: "Samsung"
},

{
  _id: "P2001",
  name: "Men Cotton T-Shirt",
  category: "Clothing",
  price: 1200,
  brand: "H&M"
},

{
  _id: "P3001",
  name: "Organic Milk",
  category: "Groceries",
  price: 80,
  expiry_date: "2024-12-15"
}
]);


// OP2: find() — retrieve Electronics products with price > 20000

db.products.find({
category: "Electronics",
price: { $gt: 20000 }
});


// OP3: find() — groceries expiring before 2025

db.products.find({
category: "Groceries",
expiry_date: { $lt: "2025-01-01" }
});


// OP4: updateOne() — add discount_percent

db.products.updateOne(
{ _id: "P1001" },
{ $set: { discount_percent: 10 } }
);


// OP5: createIndex()

db.products.createIndex({ category: 1 });

// This index improves query performance when searching products by category.
