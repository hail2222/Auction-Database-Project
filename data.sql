-- Inserting data into UserData
INSERT INTO UserData (userID, password)
VALUES (1, '111'),
       (2, '222'),
       (3, '333');

-- Inserting data into ItemData
INSERT INTO ItemData (itemID, category, itemDescription, condition, sellerID, buyItNowPrice, datePosted, itemStatus)
VALUES (1001, 'Electronics', 'Smartphone', 'Like-New', 1, 300.00, '2023-10-01', 'Active'),
       (1002, 'Clothing', 'Designer T-shirt', 'New', 2, 50.00, '2023-10-02', 'Active'),
       (1003, 'Furniture', 'Coffee Table', 'Good', 1, 150.00, '2023-10-03', 'Active');

-- Inserting data into BidData
INSERT INTO BidData (bidID, itemID, bidPrice, bidderID, datePosted, bidClosingDate)
VALUES (2001, 1001, 320.00, 2, '2023-10-02 14:30:00', '2023-10-04 14:30:00'),
       (2002, 1001, 350.00, 3, '2023-10-03 15:45:00', '2023-10-04 14:30:00'),
       (2003, 1002, 55.00, 1, '2023-10-02 12:15:00', '2023-10-04 12:15:00');


-- Inserting data into BillingData
INSERT INTO BillingData (billingID, soldItemID, purchaseDate, sellerID, buyerID, amountDueByBuyer, amountToSeller)
VALUES (3001, 1001, '2023-10-04', 1, 2, 350.00, 315.00),
       (3002, 1002, '2023-10-04', 2, 1, 55.00, 49.50);
