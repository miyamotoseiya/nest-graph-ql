/*
  Warnings:

  - Added the required column `created_at` to the `Tweet_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `Tweet_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `Tweets` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `Tweets` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Tweet_images` ADD COLUMN `created_at` DATETIME(3) NOT NULL,
    ADD COLUMN `deleted_at` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `Tweets` ADD COLUMN `created_at` DATETIME(3) NOT NULL,
    ADD COLUMN `deleted_at` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `User` ADD COLUMN `created_at` DATETIME(3) NOT NULL,
    ADD COLUMN `deleted_at` DATETIME(3) NOT NULL;
