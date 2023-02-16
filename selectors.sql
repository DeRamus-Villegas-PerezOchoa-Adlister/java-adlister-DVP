USE adlister_db;

# SELECT title FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name='dog'));

# SELECT * FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name = 'dogs'));

# SELECT * FROM ads WHERE username = 'hashisthepass';

# SELECT id
# from ads
# WHERE user_id IN (SELECT id
#                    from users
#                    WHERE username = 'hashisthepass');

# SELECT * from ads WHERE user_id IN (SELECT id from users WHERE username = 'hashisthepass');

# DELETE FROM users WHERE id = 3;
#
# DELIMITER $$
# CREATE TRIGGER before_users_delete
#     BEFORE DELETE ON users WHERE id = 3 BEGIN
#     delete from ads where user_id=3;
# END$$
# DELIMITER ;

SELECT * FROM ads WHERE title LIKE '%last%' OR description LIKE '%last%';
