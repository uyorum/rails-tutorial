# sample_app
## `rails destroy controller StaticPages`

``` shell
$ rails destroy controller StaticPages
      remove  app/controllers/static_pages_controller.rb
      invoke  erb
      remove    app/views/static_pages
      invoke  test_unit
      remove    test/controllers/static_pages_controller_test.rb
      invoke  helper
      remove    app/helpers/static_pages_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      remove      app/assets/javascripts/static_pages.coffee
      invoke    scss
      remove      app/assets/stylesheets/static_pages.scss
$ git status
On branch static-pages
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        deleted:    app/assets/javascripts/static_pages.coffee
        deleted:    app/assets/stylesheets/static_pages.scss
        deleted:    app/controllers/static_pages_controller.rb
        deleted:    app/helpers/static_pages_helper.rb
        deleted:    app/views/static_pages/help.html.erb
        deleted:    app/views/static_pages/home.html.erb
        deleted:    test/controllers/static_pages_controller_test.rb
$ git diff HEAD^
diff --git a/sample_app/config/routes.rb b/sample_app/config/routes.rb
index 3f66539..56e5c32 100644
--- a/sample_app/config/routes.rb
+++ b/sample_app/config/routes.rb
@@ -1,4 +1,8 @@
 Rails.application.routes.draw do
+  get 'static_pages/home'
+
+  get 'static_pages/help'
+
   # The priority is based upon order of creation: first created -> highest priority.
   # See how all your routes lay out with "rake routes".
```

**Some changes are still remain**
