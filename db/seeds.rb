#seed data to test program
sonja = User.create(name: "Sonja")
    charlotte = Child.create(name: "Charlotte", owner: sonja, grade: 5)
    Device.create(name: "iPad", owner: charlotte)
    Device.create(name: "Chromebook", owner: charlotte)