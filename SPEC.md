# Specifications for the Sinatra Assessment

Specs:
- [x] Used Sinatra to build the app
        - used Corneal gem to set up scaffolding
- [x] Used ActiveRecord for storing information in a database
- [x] Include more than one model class (e.g. User, Post, Category)
        - Models: User, Child, Device and Grade
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        - User has_many Children, Child has_many Devices through ChildDevice, Device has_many Children through ChildDevice
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
        - Child belongs_to a User, Child belongs_to a Grade
- [x] Include user accounts with unique login attribute (username or email)
        - User has a unique username
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        - CRUD routes on Child Controller, Read route on Grade, Read, Create and Update routes on Device model
- [x] Ensure that users can't modify content created by other users
        - helper method to verify current_user
- [x] Include user input validations
        - validations included in the models (presence and uniqueness)
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
        - insatlled sinatra-flash gem and added conditional statement to layout.erb to check for and display message if true
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
        - done

Confirm
- [x] You have a large number of small Git commits
        - mostly true; I definitely got better throughout the project!
- [x] Your commit messages are meaningful
        - same as above
- [x] You made the changes in a commit that relate to the commit message
        - same as above
- [x] You don't include changes in a commit that aren't related to the commit message
        - same as above