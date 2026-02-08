/*
  Warnings:

  - You are about to alter the column `amount` on the `ExpenseByCategory` table. The data in that column could be lost. The data in that column will be cast from `Decimal(12,2)` to `BigInt`.
  - You are about to alter the column `totalExpenses` on the `ExpenseSummary` table. The data in that column could be lost. The data in that column will be cast from `Decimal(14,2)` to `DoublePrecision`.
  - You are about to alter the column `amount` on the `Expenses` table. The data in that column could be lost. The data in that column will be cast from `Decimal(12,2)` to `DoublePrecision`.
  - You are about to alter the column `price` on the `Products` table. The data in that column could be lost. The data in that column will be cast from `Decimal(10,2)` to `DoublePrecision`.
  - You are about to alter the column `totalPurchased` on the `PurchaseSummary` table. The data in that column could be lost. The data in that column will be cast from `Decimal(14,2)` to `DoublePrecision`.
  - You are about to alter the column `unitCost` on the `Purchases` table. The data in that column could be lost. The data in that column will be cast from `Decimal(10,2)` to `DoublePrecision`.
  - You are about to alter the column `totalCost` on the `Purchases` table. The data in that column could be lost. The data in that column will be cast from `Decimal(12,2)` to `DoublePrecision`.
  - You are about to alter the column `unitPrice` on the `Sales` table. The data in that column could be lost. The data in that column will be cast from `Decimal(10,2)` to `DoublePrecision`.
  - You are about to alter the column `totalAmount` on the `Sales` table. The data in that column could be lost. The data in that column will be cast from `Decimal(12,2)` to `DoublePrecision`.
  - You are about to alter the column `totalValue` on the `SalesSummary` table. The data in that column could be lost. The data in that column will be cast from `Decimal(14,2)` to `DoublePrecision`.

*/
-- DropIndex
DROP INDEX "Products_name_key";

-- DropIndex
DROP INDEX "Users_email_key";

-- AlterTable
ALTER TABLE "ExpenseByCategory" ALTER COLUMN "amount" SET DATA TYPE BIGINT,
ALTER COLUMN "date" DROP DEFAULT;

-- AlterTable
ALTER TABLE "ExpenseSummary" ALTER COLUMN "totalExpenses" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "date" DROP DEFAULT;

-- AlterTable
ALTER TABLE "Expenses" ALTER COLUMN "amount" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "timestamp" DROP DEFAULT;

-- AlterTable
ALTER TABLE "Products" ALTER COLUMN "price" SET DATA TYPE DOUBLE PRECISION;

-- AlterTable
ALTER TABLE "PurchaseSummary" ALTER COLUMN "totalPurchased" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "date" DROP DEFAULT;

-- AlterTable
ALTER TABLE "Purchases" ALTER COLUMN "timestamp" DROP DEFAULT,
ALTER COLUMN "unitCost" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "totalCost" SET DATA TYPE DOUBLE PRECISION;

-- AlterTable
ALTER TABLE "Sales" ALTER COLUMN "timestamp" DROP DEFAULT,
ALTER COLUMN "unitPrice" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "totalAmount" SET DATA TYPE DOUBLE PRECISION;

-- AlterTable
ALTER TABLE "SalesSummary" ALTER COLUMN "totalValue" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "date" DROP DEFAULT;
