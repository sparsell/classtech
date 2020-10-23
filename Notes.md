TODO / Debugging:

Database:
[x] destroy all and reseed

Signup:
[x] ensure unique user_name
[x] message to user the the username is already taken

Login: 
[x] show a message/error "you must enter a user name and a password to be able to login" when user only enters one of the required

Navigation:
[x] profile links in nav (layout) and on child show page are not working
[x] at initial login, layout nav (logged_in?) doesn't know @user so breaks when sees #id in profile nav link (line 29) should have: <a href="/users/<%=current_user.id%>/profile">View your profile</a>

Child new.erb
[x] Restrict duplication when creating a new device
- Restrict a user from creating a child with the same name as one they already have
- Restrict blanks when creating a new device
- Persisting issues with devices (think it's from dodgy validation code...)

Child show.erb
[x] iteration not working to show child's devices 
[x] do not allow edit/delete if not the child's parent (user)
[x] style links so CTAs do not expand when page is too big or small (use styling from '/' page - this works well)
[x] move delete button to before edit
[x] change 'view by grade' link to 'return to grade/#{@child.grade_id} view' or just 'back to grade view'

Child edit.erb
[x] name change persists
[x] Device additions do not persist
- Device changes (deletions) do not persist

Child delete action
- not working (route is children/children/:id) in browser?? Why? 

Grade show.erb
[x] add each child's devices
[x] style child links so user can see to click on them (same as grade index.erb styles)
- currently not working - changing messaging to flash / or go back to this is erb file:
     <% if @message %>%
    <%= @message%>
    <% end %> 

Styling
- general layout; may need wrapper for all elements in flexbox
