-- User Data
CREATE TABLE UserData (
    userID VARCHAR(20) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
    -- 다른 사용자 속성을 여기에 추가하세요
);

-- Item Data
CREATE TABLE ItemData (
    itemID INT PRIMARY KEY,
    category VARCHAR(50),
    itemDescription TEXT,
    condition VARCHAR(50),
    sellerID VARCHAR(20),
    buyItNowPrice DECIMAL(10, 2),
    datePosted DATE,
    itemStatus VARCHAR(20),
    FOREIGN KEY (sellerID) REFERENCES UserData (userID) ON DELETE CASCADE ON UPDATE CASCADE
    -- 다른 물품 속성을 여기에 추가하세요
);

-- Bid Data
CREATE TABLE BidData (
    bidID INT PRIMARY KEY,
    itemID INT,
    bidPrice DECIMAL(10, 2),
    bidderID VARCHAR(20),
    datePosted TIMESTAMP,
    bidClosingDate TIMESTAMP,
    FOREIGN KEY (itemID) REFERENCES ItemData (itemID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (bidderID) REFERENCES UserData (userID) ON DELETE CASCADE ON UPDATE CASCADE

    -- 다른 입찰 속성을 여기에 추가하세요
);

-- Billing Data
CREATE TABLE BillingData (
    billingID INT PRIMARY KEY,
    soldItemID INT,
    purchaseDate DATE,
    sellerID VARCHAR(20),
    buyerID VARCHAR(20),
    amountDueByBuyer DECIMAL(10, 2),
    amountToSeller DECIMAL(10, 2),
    FOREIGN KEY (soldItemID) REFERENCES ItemData (itemID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (sellerID) REFERENCES UserData (userID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (buyerID) REFERENCES UserData (userID) ON DELETE CASCADE ON UPDATE CASCADE


    -- 다른 청구 속성을 여기에 추가하세요
);
