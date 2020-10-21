TODO / Debugging:

Database:
[x] destroy all and reseed

Signup:
- ensure unique user_name
- message to user the the username is already taken

Login: 
[x] show a message/error "you must enter a user name and a password to be able to login" when user only enters one of the required

Navigation:
- profile links in nav (layout) and on child show page are not working

Child new.erb
- Restrict duplication when creating a new device 
- Restrict a user from having two children with the same name
- persisting issues withe devices (think it's from dodgy validation code...)

Child show.erb
[x] iteration not working to show child's devices 
- delete action
[x] do not allow edit/delete if not the child's parent (user)

Grade show.erb
[x] add each child's devices

Styling
- general layout; may need wrapper for all elements in flexbox
