#seed data to test program

charlotte = User.create(name: "Charlotte", email: "charlotte.parsell@icloud.com")

thomas = User.create(name: "Thomas", email: "thomas.parsell@icloud.com")

bobby = User.create(name: "Bobby", email: "bobby@icloud.com")


device = Device.create(type: "ipad", limit: "yes", can_text: "yes")