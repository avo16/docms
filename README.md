This is a document management system.

Requirements:

·  document object
·  contains only text (data)
·  has one owner
·  can be viewed by everyone
·  can be edited only by the owner
·  the text  in a document can have the characteristics:
·  italic
·  bold
·  link to url
·  underlined
·  an authenticated user can access 2 pages:
·  dashboard
·  contains two columns:
·  documents created/owned by me
·  documents created/owned by others
·  one button to create a new document
·  one button to logout
·  create/edit document page
·  on the backend you need to save all the words in all the documents such that:
·  a word is defined to be only the sequence of alphabetic characters  (a-zA-Z)
·  when looking for the occurrences of a word you can find all documents containing it.
·  when looking for a document to be able to retrieve the set of the words used in that document.
you can retrieve the occurrence count of a word in all documents.


About the application:

It was realized in:

- Rails 4.2.1
- Ruby 2.2.1

Server: WEBrick
Database engine: Sqlite3


It can be found on GitHub, here: https://github.com/avo16/docms

It is deployed to Heroku. It can be found here: https://lit-bastion-3298.herokuapp.com/

Goals achieved:
	- Created models:
  		- users: id: integer, name: string, email: string, password_digest: string, remember_token: string, created_at: datetime, updated_at: datetime, admin: boolean
  		- microposts: id: integer, content: string, user_id: integer, created_at: datetime, updated_at: datetime

  	- Created  Sign Up, Sign In forms
  	- Created Static Pages: Home, About, Help
  	- Displayed Users
  	- Created Update Form for updating a user (change name and email)
  	- Realized tests with RSpec (run all tests with the following command: "bundle exec rspec spec/" in the application's folder)

 To do's:
 	- create page with posts for each user
 	- create edit and search actions
