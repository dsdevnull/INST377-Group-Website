Log-in page: 

This was created with HTML, CSS, Javascript, PHP, and MySQL. The files include music.html & music.css for the design with Javascript in the HTML to validate the log-in form & login.php to post and process the log-in information and redirect users to the news feed home page.


Sign-up/Create Account page: 

This is an HTML/PHP form that posts the information to a PHP processor, checks to see if the user exists or not, and if they don’t exist already, adds them to the SQL User Database. It also uses Javascript validation to make sure what the user is inputting is valid. More validation will be needed in the future implementation(s) of the application. It also has CSS for design. The files include User_login.html & user_login.css & user_login_test.php


News feed page:

In the news feed folder, there are two files: newsfeed.html and newsfeed.css
Currently, the news feed is just a placeholder, but future implementations will require it to be a fully functional news feed perhaps using AngularJS or another framework or library. 


Profile page:

In the profile folder, there are two files: profile.html and profile.css
Currently, the profile is also just a placeholder, but future implementations will require it to be a fully functional profile by actually posting new songs to each user’s different profile and saving those posts. 


Add a song form:

The file add_song_form.html is an HTML/PHP form that posts to add_song.php and then to our album SQL database. This way once a user posts a song to their profile, it will be saved so once the search functionality is working, users won’t have to upload a song that has already been uploaded.



File structure:

The main folder is music_file which includes the log-in page code (including the php processors and the sign-up/create account forms). The profile, the adding a song form, and the news feed all have their own separate folders inside the music_file folder. We felt this was the best and most organized way to structure the files.


Software/libraries: 

We only used HTML, CSS, Javascript, PHP, and MySQL for the beginning implementation. Future work should include incorporating more frameworks and libraries to make the application more functional and robust.


Server information:    

We are hosting the website on an instance of AWS EC2 server with a linux base via the UMD’s iSchool’s VCL.

Database structure:

The Database is split into two main parts: a set of relational normalized tables for the songs in the application and a user_info table for user log-in information. The user log-in information is all of the variables that we had posted in the PHP processor. The relational tables include albums, song, band, and genre with each relating to each other in some way. Album relates to song through the foreign key album_id in the songs table. Album also relates to band with the foreign key band_id in the album table. Band relates to genre through the foreign key genre_id in the band table. These tables are normalized and are the variables that are posted from the add_song.php processor. 
