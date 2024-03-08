/* ==========================================
 * TABLE: ATG_GFM_BOXES
 * ========================================== */
CREATE TABLE "ATG_GFM_BOXES"(
 "BID" IDENTITY DEFAULT '0',
 "BoxID" VARCHAR(12) NOT NULL ,
 "Customer" VARCHAR(6) NOT NULL ,
 "Part" VARCHAR(20) NOT NULL ,
 "Bin1" VARCHAR(6),
 "Heat1" VARCHAR(15),
 "Lot1" VARCHAR(15),
 "Quantity1" INTEGER NOT NULL ,
 "Bin2" VARCHAR(6),
 "Heat2" VARCHAR(15),
 "Lot2" VARCHAR(15),
 "Quantity2" INTEGER,
 "CreateDT" DATETIME NOT NULL ,
 "Order_No" VARCHAR(7),
 "UserID" VARCHAR(8),
 "BatchNo" INTEGER,
 PRIMARY KEY ("BID"),
 UNIQUE ("BID"));

/* ==========================================
 * TABLE: ATG_GFM_ID
 * ========================================== */
CREATE TABLE "ATG_GFM_ID"(
 "Customer" VARCHAR(6) NOT NULL ,
 "Prefix" VARCHAR(3),
 "BoxID" VARCHAR(12),
 "PalletID" VARCHAR(12),
 "ShipID" INTEGER,
 "BoxRptID" VARCHAR(6),
 "PalletRptID" VARCHAR(6),
 "DupLabels" BIT NOT NULL ,
 "BatchBoxRptID" VARCHAR(6),
 "Override" BIT NOT NULL ,
 PRIMARY KEY ("Customer"));

/* ==========================================
 * TABLE: ATG_GFM_PALLET_LABEL
 * ========================================== */
CREATE TABLE "ATG_GFM_PALLET_LABEL"(
 "PLID" IDENTITY DEFAULT '0',
 "PalletID" VARCHAR(12),
 "Customer" VARCHAR(6),
 "Part" VARCHAR(20),
 "OrderNo" VARCHAR(7),
 "Quantity" INTEGER NOT NULL ,
 PRIMARY KEY ("PLID"),
 UNIQUE ("PLID"));

/* ==========================================
 * TABLE: ATG_GFM_PALLETS
 * ========================================== */
CREATE TABLE "ATG_GFM_PALLETS"(
 "PID" IDENTITY DEFAULT '0',
 "PalletID" VARCHAR(12) NOT NULL ,
 "BoxID" VARCHAR(12) NOT NULL ,
 "Customer" VARCHAR(6) NOT NULL ,
 "CreateDT" DATETIME NOT NULL ,
 PRIMARY KEY ("PID"),
 UNIQUE ("PID"));

/* ==========================================
 * TABLE: ATG_GFM_SHIPMENTS
 * ========================================== */
CREATE TABLE "ATG_GFM_SHIPMENTS"(
 "SID" IDENTITY DEFAULT '0',
 "ShipID" INTEGER NOT NULL ,
 "BoxPalletID" VARCHAR(12) NOT NULL ,
 "BoxPalletType" INTEGER NOT NULL ,
 "Customer" VARCHAR(6) NOT NULL ,
 "CreateDT" DATETIME NOT NULL ,
 PRIMARY KEY ("SID"),
 UNIQUE ("SID"));