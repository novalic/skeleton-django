CREATE SCHEMA IF NOT EXISTS `skeletondjango` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE SCHEMA IF NOT EXISTS `test_skeletondjango` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nicolas'@'%' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON skeletondjango.* TO 'nicolas'@'%';
GRANT ALL PRIVILEGES ON test_skeletondjango.* TO 'nicolas'@'%';
