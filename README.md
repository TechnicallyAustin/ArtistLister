# README

This is a rails application that allows users to add songs by their favorite artists in a playlist form.

As artists are added users will be able to select and adds songs based on songs added by other users

They can see all exsisting playlists and their own personal playlists






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

Logic and Set Up

User
    Model
        can be created
        validates name for uniqueness
        validates name for email
        validates password
        has_many playlists
    
    Migration
        has a username
        has a password
        has an email 
        has first name
        has last name
        allows for external login
        uses bcrypt for password digest
        user_playlist join table

    Views
        user has a login page
        user can logout
        user can sign up
        user has a nested playlist route
            user/playlist/:id
        

