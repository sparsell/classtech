#seed data to test program
sonja = User.create(name: "Sonja", user_name: "sonja", password: "pw")
mas = User.create(name: "Mas", user_name: "mrsj", password: "pw")
lauren = User.create(name: "Lauren", user_name: "lauren", password: "pw")
mk = User.create(name: "Mary Kate", user_name: "mk", password: "pw")
aya = User.create(name: "Aya", user_name: "aya", password: "pw")

three = Grade.create(grade: 3)
four = Grade.create(grade: 4)
five = Grade.create(grade: 5)
six = Grade.create(grade: 6)
seven = Grade.create(grade: 7)
eight = Grade.create(grade: 8)

charlotte = Child.create(name: "Charlotte", user_id: sonja.id, grade_id: five.iPad)
thomas = Child.create(name: "Thomas", user_id: sonja.id, grade_id: three.iPad)
zeeyah = Child.create(name: "Zeeyah", user_id: mas.id, grade_id: six.iPad)
amaara = Child.create(name: "Amaara", user_id: mas.id, grade_id: three.iPad)
grace = Child.create(name: "Grace", user_id: lauren.id, grade_id: five.iPad)
audrey = Child.create(name: "Audrey", user_id: mk.id, grade_id: five.iPad)
leila = Child.create(name: "Leila", user_id: aya.id, grade_id: five.iPad)

    Device.create(device_type: "iPad")
    Device.create(device_type: "iPhone")
    Device.create(device_type: "Android phone")
    Device.create(device_type: "Chromebook")
    Device.create(device_type: "iPod")
    Device.create(device_type: "Tablet")
    Device.create(device_type: "MacBook")
    Device.create(device_type: "PC")
    Device.create(device_type: "Desktop")
    


