# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wine.create(name:'La Crema', year:2013, winery:'Temecula', country:'France', varietal:'Barbera')
Wine.create(name:'Beringer', year:2014, winery:'Wyandotte', country:'Italy', varietal:'Dolocetto')
Wine.create(name:'Zinfandel', year:2012, winery:'Alpha Omega', country:'Spain', varietal:'Merlot')
Wine.create(name:'Caymus', year:2011,  winery:'Napa Valley', country:'United State', varietal:'Cabernet')
