Database:
x destroy all and reseed

Signup:
- ensure unique user_name
- message to user the the username is already taken

Login: 
- show a message/error "you must enter a user name and a password to be able to login" when user only enters one of the required
@message = @children.empty? ? "There aren't any children in this grade.": false

Child new.erb
- Restrict duplication creating a new device 

Child show.erb
- iteration not working to show child's devices 
- delete action
- do not allow edit/delete if not the owner of the child

Grade show.erb
- add each child's devices

Navigation:
- View your profile (in Layout) v. 'Return to your profile page' on child show page
- After editing a child, returning to your profile takes you back to the first user's profile
