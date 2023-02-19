-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `account_id` INTEGER NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `remenber_token` VARCHAR(191) NULL,
    `birthday` DATETIME(3) NOT NULL,
    `introduction` VARCHAR(191) NULL,
    `profile_image` VARCHAR(191) NULL,
    `cover_image` VARCHAR(191) NULL,
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `User_account_id_key`(`account_id`),
    UNIQUE INDEX `User_email_key`(`email`),
    INDEX `User_email_account_id_idx`(`email`, `account_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Tweets` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `body` VARCHAR(191) NULL,
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Tweets_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Tweet_images` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tweet_id` INTEGER NOT NULL,
    `path` VARCHAR(191) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Tweet_images_tweet_id_key`(`tweet_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Tweets` ADD CONSTRAINT `Tweets_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Tweet_images` ADD CONSTRAINT `Tweet_images_tweet_id_fkey` FOREIGN KEY (`tweet_id`) REFERENCES `Tweets`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
