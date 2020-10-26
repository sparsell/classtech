
Models:
[x] Add ChildDevice class

Associations:
[x] Change associations in Device and Child
[x] Add associations in ChildDevice
- Check how validaitons will change ??

Migrations / Database:
[x] Create join table ChildrenDevices with each others' foreign keys
[x] Remove 'child_id' from Devices

Did it work?
[x] Test relationships in 'tux'

Controllers:
[x] children/new
[x] children/edit
[x] grade/show
[x] device/index
- device/show (still not able to get child name for specific device view)

Views:
[x] Child new.erb
[x] Child edit.erb
[x] Child show.erb
[x] Grade show.erb
- Device show.erb (see above)