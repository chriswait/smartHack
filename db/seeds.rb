# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ward.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!(Ward.table_name)
wards = Ward.create([
  { id: 1, name: 'CraigentinyDunningston' },
  { id: 2, name: 'fountainbridgeCraiglockhart' },
  { id: 3, name: 'meadowsMorning' },
  { id: 4, name: 'Inverleith' },
  { id: 5, name: 'collintonFarmillehead' },
  { id: 6, name: 'EdinburghCentral' },
  { id: 7, name: 'Forth' },
  { id: 8, name: 'leith' },
  { id: 9, name: 'DrumbraeGyle' },
  { id: 10, name: 'Southwest' },
  { id: 11, name: 'CraigmillPortobello' },
  { id: 12, name: 'leithWalk' },
  { id: 13, name: 'westEdGorgie' },
  { id: 14, name: 'almond' },
  { id: 15, name: 'CorstorphineMurryField' },
  { id: 16, name: 'southeastEdinburgh' },
  { id: 17, name: 'southsideNewington' }
])
