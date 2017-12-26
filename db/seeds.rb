# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)


zone=Spree::Zone.create(
  name: 'AUS_GST',
  description: 'Australian GST',
  default_tax: true,
  zone_members_count: 1,
  kind: 'country'
  )

zone.Spree::ZoneMembers.create(
  zoneable_type: 'Spree::Country',
  zoneable_id: 13
  )

taxcat=Spree::TaxCategorie.create(
  name: 'Australian_GST',
  description: 'Goods and Services Tax Non-food Items',
  is_default: true,
  tax_code: 'AUS-GST')

zone.Spree::TaxRates.create(
  amount: 0.1,
  tax_category_id: taxcat.id,
  included_in_price: true,
  show_rate_in_label: true
  )


#Create Aust Tax
Spree::TaxRate.new


