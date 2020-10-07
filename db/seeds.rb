#seed data to test program
sonja = User.create(name: "Sonja")
    charlotte = Child.create(name: "Charlotte", user: sonja, grade: 5)
    Device.create(name: "iPad", child: charlotte)
    Device.create(name: "Chromebook", child: charlotte)

dan = User.create(name: "Dan")
    thomas = Child.create(name: "Thomas", user: dan, grade: 3)
    
        