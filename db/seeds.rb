#seed data to test program
sonja = User.create(name: "Sonja", user_name: "redsonja", password: "pw")
mas = User.create(name: "Mas", user_name: "mrsj", password: "pw")
lauren = User.create(name: "Lauren", user_name: "bumby", password: "pw")
mk = User.create(name: "Mary Kate", user_name: "mk2002", password: "pw")
aya = User.create(name: "Betty", user_name: "dmj", password: "pw")

charlotte = Child.create(name: "Charlotte", user_id: sonja.id)
thomas = Child.create(name: "Thomas", user_id: sonja.id)
zeeyah = Child.create(name: "Zeeyah", user_id: mas.id)
amaara = Child.create(name: "Amaara", user_id: mas.id)
grace = Child.create(name: "Grace", user_id: lauren.id)
audrey = Child.create(name: "Audrey", user_id: mk.id)
leila = Child.create(name: "Leila", user_id: aya.id)

    Device.create(name: "iPad")
    Device.create(name: "iPhone")
    Device.create(name: "Android phone")
    Device.create(name: "Chromebook")
    Device.create(name: "iPod")
    Device.create(name: "Tablet")
    Device.create(name: "MacBook")
    Device.create(name: "PC")
    Device.create(name: "Desktop")
    
    t.boolean  "limit"
    t.boolean  "can_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "device_type"
    t.integer  "child_id"
    t.boolean  "soc_media"
    t.boolean  "play_games"
    t.boolean  "can_chat"
    t.boolean  "watch_yt"

    
    Grade.create(grade: 3)
    Grade.create(grade: 4)
    Grade.create(grade: 5)
    Grade.create(grade: 6)
    Grade.create(grade: 7)
    Grade.create(grade: 8)

