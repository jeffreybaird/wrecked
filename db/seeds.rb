# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{fullname: 'Clare Lennon', email: 'clarelennonbaird@gmail.com', website: 'clarelennon.com'},
             {fullname: 'Jeffrey Baird', email: 'jeff@jeffreyleebaird.com', website: 'http://www.jeffreyleebaird.com'}])

Shipwreck.create([{user_id: 1, shipname: 'Aura II',
              latitude: 60.383333, longitude: 19.166667,
              summary: "Finnish escort ship, sunk in a battle with a soviet submarine.
                        A depth charge exploded in it's tower while trying to sink a soviet submarine",
              link: 'https://en.wikipedia.org/wiki/Finnish_escort_Aura_II'}])
