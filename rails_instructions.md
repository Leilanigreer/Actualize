1. Open your terminal to the folder you want...
2. Run this command
   ```
   rails new my-app-name
   ```
   This command will create a new folder with all the files and folders...
3. Navigate to the app
   ```
   cd my-app-name
   ```

...

5. Add a route in the `config/routes.rb` file
   ```ruby
   get "/products", controller: "products", action: "show_one"
   ```
