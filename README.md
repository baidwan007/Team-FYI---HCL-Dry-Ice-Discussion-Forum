# Team-FYI HCL-Dry-Ice-Discussion-Forum
Link to the YouTube video- https://www.youtube.com/watch?v=Flt8YV8pc1E&t=204s

Link to the Live Website- https://team-fyi.herokuapp.com/

It is a discussion forum with a nodejs backend and mysql databases. Users can start new topics, answer the already started topics and provide feedback for the answers.

## Things you need to install to run this code on your server
1. Nodejs version 6.9.4
2. npm version 3.10.10
3. mysql
4. heroku cli(if you wish to deploy on your heroku server)
5. Install package dependencies using npm install 

## How to deploy this code on your system
To deploy the code on your system you need to have a database with the schema present in hcl.sql
You can download this file on your system and then after moving to the directory run the command 
```bash
 mysql -u mysql_user -p DATABASE < hcl.sql
 ```
 DATABASE and mysql_user are just placeholders for the actual names
 Once you have the database on your system all you need to do is connect it with the server you run. For that you would have to change
 the db.js file.
 in the dbconf you need to add 
 ```javascript
 dbconf{
 host:'localhost',
 user:'your_mysql_user',//in my case it was root
 password: 'your_password_for_mysql',
 database:'hcl'
 }
 ```
 and you are all set
 run the command node server.js on your terminal from the server.js directory
 
 ## How we deployed it
 We used heroku to deploy our nodejs code and we used cpanel to have our database
 1. We installed heroku cli and then pushed a branch to heroku using git through terminal.
 2. The steps for the same are mentioned on the herokus site
 3. Some additions were in package.json where we had to add scripts keyword and engines parameter to let heroku know our node version
 4. Making the Procfile is important and it needs to be without any extensions
 5. In server.js you need to set the environment variable PORT while listening in app.listen just like in our server.js example
 6. For further assistance follow this link https://www.youtube.com/watch?v=AZNFox2CvBk&t=332s 
 7. Heroku provides database support for postgresql and its support for mysql isnt that great hence we used cpanel to have our
    database. We used cpanels remote sql feature to establish a connection with our nodejs app
    
 You can follow similar steps to host this app on your heroku account.
 
 
