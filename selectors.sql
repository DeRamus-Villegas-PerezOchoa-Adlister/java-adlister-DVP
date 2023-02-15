USE adlister_db;

# SELECT title FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name='dog'));

# SELECT * FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name = 'dogs'));

# SELECT * FROM ads WHERE username = 'hashisthepass';

# SELECT id
# from ads
# WHERE user_id IN (SELECT id
#                    from users
#                    WHERE username = 'hashisthepass');

SELECT * from ads WHERE user_id IN (SELECT id from users WHERE username = 'hashisthepass');