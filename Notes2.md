
Models:
[x] Add ChildDevice class

Associations:
- Change associations in Device and Child
[x] Add associations in ChildDevice
- Check how validaitons will change ??

Database:
- Create join table ChildrenDevices with each others' foreign keys

Did it work?
- Test relationships in 'tux'
  -- want to do something like this: @child.device_types << device_type

Controllers:
- children/new
- children/edit
- grade/show

Views:
- Child new.erb
- Child edit.erb
- Child show.erb
- Grade show.erb