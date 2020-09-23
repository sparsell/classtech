#seed data to test program

charlotte = User.create(name: "Charlotte", email: "charlotte.parsell@icloud.com")

thomas = User.create(name: "Thomas", email: "thomas.parsell@icloud.com")

bobby = User.create(name: "Bobby", email: "bobby@icloud.com")


device = Device.create(device_type: "ipad", limit: true, can_text: true)
device1 = Device.create(device_type: "iphone", limit: true, can_text: true)
device2 = Device.create(device_type: "macbook", limit: true, can_text: true)