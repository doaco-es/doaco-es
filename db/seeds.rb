# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Institution.create(name: "Casa Purval Daiva", item: "Brinquedos, Alimentos, Dinheiro")

Institution.create(name: "Hospital Galfredo Wurgel", item: "Brinquedos, Alimentos, Roupas")

Institution.create(name: "CAAG", item: "Brinquedos, Alimentos, Roupas")

Institution.create(name: "Hospital Moão Jachado", item: "Alimentos, Roupas")

Institution.create(name: "Casa do Zé", item: "Alimentos, Roupas")

Institution.create(name: "Lar dos Novos Velhinhos", item: "Alimentos, Roupas")

Donation.create(item: "Brinquedos", date: DateTime.now, value: 0.00, quantity: 10, institution_id: 1)

Donation.create(item: "Alimentos", date: DateTime.now, value: 100.00, quantity: 100, institution_id: 1)

Donation.create(item: "Dinheiro", date: DateTime.now, value: 550.00, quantity: 0, institution_id: 1)
