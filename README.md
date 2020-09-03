# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Likes
1. rails g migration create_likes
2. Add this code to your db/migrate
```
      t.references : account
      t.references :post
      t.timestamps
```
3. Run rails db:migrate
4. In model/post --> add 'has_many :likes' + d
ef total_likes
 0 
 end
 5. Create in model a file called Likes
 