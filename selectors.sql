USE adlister_db;

# SELECT title FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name='dog'));

SELECT * FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name = 'dogs'));