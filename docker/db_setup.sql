CREATE SCHEMA `skeletondjango` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE SCHEMA `test_skeletondjango` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'nicolas'@'%' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON skeletondjango.* TO 'nicolas'@'%';
GRANT ALL PRIVILEGES ON test_skeletondjango.* TO 'nicolas'@'%';
