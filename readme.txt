ECHOCHAMBER Documentation:

Ruby version - ruby 2.5.1p57

Rails version - Rails 5.2.4

DB version - SQLite 3.22.0

Manually added gems: devise, bootstrap-sass, acts_as_votable, simple_form, record_tag_helper, tzinfo-data;

This webapp is basically a discussion board concept. I called it the Echochamber as a metaphorical description of a situation in which beliefs are amplified or reinforced by communication and repetition inside a closed system.
The so-called "echos" are text posts, submitted by the users. Any user may submit may echos, but an echo only has one original poster.
Each echo may have comments - users may submit many comments, but each comment belong to one user and one echo.
The echos can be up/down-voted by users. Each user may cast one vote per echo. The vote can be changed at any time.

To use: 
    run 'rails db:migrate'
    run 'rails s'
    go to the specified localhost URL
    The homescreen will prompt you to sign up or sign in. Sign up with a valid email and password.
    Create a new post by clicking the "Emit a New Echo" button on the navigation bar.
    Fill in the required fields.
    Done! You can now comment, vote, edit, delete, make a new account, etc.

github repository for this project can be found on: https://github.com/akseltahir/webdev-coursework