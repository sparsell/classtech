TODO / Debugging:

Database:
[x] destroy all and reseed

Signup:
- ensure unique user_name
- message to user the the username is already taken

Login: 
[x] show a message/error "you must enter a user name and a password to be able to login" when user only enters one of the required

Navigation:
[x] profile links in nav (layout) and on child show page are not working
- at initial login, layout nav (logged_in?) doesn't know @user so breaks when sees #id in profile nav link (line 29) should have: <a href="/users/<%=current_user.id%>/profile">View your profile</a>

Child new.erb
- Restrict duplication when creating a new device 
- Restrict a user from having two children with the same name
- persisting issues withe devices (think it's from dodgy validation code...)

Child show.erb
[x] iteration not working to show child's devices 
- delete action
[x] do not allow edit/delete if not the child's parent (user)
- style links so do not blow up when page is too big or small (use styling from '/' page - this works well)

Child edit.erb
[x] name change persists
- Device changes or additions do not persist

Child delete action
- not working 

Grade show.erb
[x] add each child's devices
- style child links so user can see to click on them (same as grade index.erb styles)

Styling
- general layout; may need wrapper for all elements in flexbox
