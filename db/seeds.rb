#seed data to test program

charlotte = User.create(name: "Charlotte", email: "charlotte@charlotte.com")

thomas = User.create(name: "Thomas", email: "thomas@thomas.com")

dan = User.create(name: "Dan", email: "dan@dan.com")
sue = User.create(name: "Sue", email: "sue@sue.com")

device = Device.create(device_type: "ipad", limit: true, can_text: true)
device1 = Device.create(device_type: "iphone", limit: true, can_text: true)
device2 = Device.create(device_type: "macbook", limit: true, can_text: true)