# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gender.where(description: 'women').first_or_create!
Gender.where(description: 'men').first_or_create!
Gender.where(description: 'family').first_or_create!

Shelter.where(name: %q[ALIVE (Alternatives to Living in a Violent Environment)]).first_or_create!.update!(
  href: %q[http://www.alivestl.org/],
  description: %q[Temporary emergency sanctuary and transportation to victims of domestic violence, 24 hours a day, 365 days a year. Night of Safety plus counseling, interventions, legal advocacy.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[PO Box 11201 63105],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.993.7080').first_or_create!
    )},
    Location.where(
      description: %q[24-hour Crisis Hotline],
      address: Address.where(
        line1: %q[PO Box 11201 63105],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.993.2777').first_or_create!
    )}
  ],
)


