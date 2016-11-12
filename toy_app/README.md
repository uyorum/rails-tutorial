# toy_app
## Models
### Users

column|type
:--|:--
id|integer
name|string
email|string

### Microposts

column|type
:--|:--
id|integer
content|text
use_id|integer

## 2.3.3. Association between Users and Microposts

``` ruby
$ rails console
Loading development environment (Rails 4.2.2)
Cannot read termcap database;
using dumb terminal settings.
irb(main):001:0> User.all
  User Load (2.5ms)  SELECT "users".* FROM "users"
=> #<ActiveRecord::Relation [#<User id: 1, name: "uyorum", email: "uyorum.pub@gmail.com", created_at: "2016-11-12 08:03:35", updated_at: "2016-11-12 08:03:35">]>
irb(main):002:0> Micropost.all
  Micropost Load (0.2ms)  SELECT "microposts".* FROM "microposts"
=> #<ActiveRecord::Relation [#<Micropost id: 1, content: "First micropost!", user_id: 1, created_at: "2016-11-12 08:19:34", updated_at: "2016-11-12 08:19:34">, #<Micropost id: 2, content: "Second micropost!", user_id: 2, created_at: "2016-11-12 08:19:53", updated_at: "2016-11-12 08:19:53">]>
irb(main):003:0> User.first.microposts
  User Load (0.3ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1
  Micropost Load (0.2ms)  SELECT "microposts".* FROM "microposts" WHERE "microposts"."user_id" = ?  [["user_id", 1]]
=> #<ActiveRecord::Associations::CollectionProxy [#<Micropost id: 1, content: "First micropost!", user_id: 1, created_at: "2016-11-12 08:19:34", updated_at: "2016-11-12 08:19:34">]>
irb(main):004:0> User.first.microposts.first.user
  User Load (0.3ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1
  Micropost Load (0.3ms)  SELECT  "microposts".* FROM "microposts" WHERE "microposts"."user_id" = ?  ORDER BY "microposts"."id" ASC LIMIT 1  [["user_id", 1]]
=> #<User id: 1, name: "uyorum", email: "uyorum.pub@gmail.com", created_at: "2016-11-12 08:03:35", updated_at: "2016-11-12 08:03:35">
irb(main):005:0> Micropost.second.user
  Micropost Load (0.3ms)  SELECT  "microposts".* FROM "microposts"  ORDER BY "microposts"."id" ASC LIMIT 1 OFFSET 1
  User Load (0.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
=> nil
```

It seems that no limitations in DB or data models are set automatically (The user whose user_id=2 is not exist).
Where should I write the limitations.
