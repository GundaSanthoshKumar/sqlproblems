Spam Posts

Meta Medium ID 10134

Calculate the percentage of spam posts in all viewed posts by day. A post is considered a spam if a string "spam" is inside keywords of the post. Note that the facebook_posts table stores all posts posted by users. The facebook_post_views table is an action table denoting if a user has viewed a post.

Tables: facebook_posts, facebook_post_views

facebook_posts
--------------

post_id: int

poster: int

post_text: varchar

post_keywords: varchar

post_date: datetime

facebook_post_views
-------------------

post_id: int

viewer_id: int