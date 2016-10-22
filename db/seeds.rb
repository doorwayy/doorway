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
Shelter.where(name: %q[BRIDGEWAY]).first_or_create!.update!(
  href: %q[http://www.bridgewaycounseling.com/],
  description: %q[Bridgeway operates the only two emergency safe shelters and outreach centers in St. Charles and Lincoln Counties for women and children who are victims of domestic violence.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[24-Hour Toll-Free Crisis Line],
      address: Address.where(
        line1: %q[St. Charles County - The Women’s Center in St. Charles],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.877.946.6854').first_or_create!
    )},
    Location.where(
      description: %q[24-Hour Toll-Free Crisis Line],
      address: Address.where(
        line1: %q[Lincoln County - The Terry L. Robertson Center in Troy],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.877.462.1758').first_or_create!
    )}
  ],
)
Shelter.where(name: %q[COVENANT HOUSE]).first_or_create!.update!(
  href: %q[http://www.covenanthouse.org/],
  description: %q[Various locations for teens in crisis. The Covenant House NINELINE (800-999-9999) is a free, confidential crisis hotline that operates 24 hours a day, 365 days a year. The Covenant House NINELINE is also available on the Internet at www.NINELINE.org where young people can submit questions via e-mail or participate in forums.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[2727 N. Kingshighway],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[63113],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.533.2451').first_or_create!
    )},
  ],
)
Shelter.where(name: %q[GATEWAY 180: HOMELESSNESS REVERSED]).first_or_create!.update!(
  href: %q[http://www.gateway180.org/],
  description: %q[The shelter provides emergency shelter services designed to get families into transitional or permanent homes in under 30 days. The shelter provides comprehensive support services targeted to meeting its clients’ specific needs. The organization works with Affinia/Grace Hill and Washington University to provide health services.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[1000 North 19th St.],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[63106],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.231.1515').first_or_create!
    )},
  ],
)
Shelter.where(name: %q[GRACE AND PEACE WINTER SHELTER FOR WOMEN]).first_or_create!.update!(
  href: %q[],
  description: %q[Operating this year until March 12.  Provides shelter 6:30 pm-6:00 am November-March for 16 homeless women in the church's basement.  Mental health professional sees the women once a week, and the women are given help looking for jobs and housing.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[5574 Delmar],
        line2: %q[(near Union)],
        city: %q[],
        state: %q[],
        postal_code: %q[],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.367.8959').first_or_create!
    )},
  ],
)
Shelter.where(name: %q[HAVEN OF GRACE]).first_or_create!.update!(
  href: %q[http://www.havenofgracestl.org/],
  description: %q[Residential facility that assists homeless, pregnant women with shelter, goal-setting, education, employment, parenting, household management, and permanent residence.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[1225 Warren],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[63106],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.621.6507').first_or_create!
    )},
  ],
)
Shelter.where(name: %q[KAREN HOUSE]).first_or_create!.update!(
  href: %q[http://www.karenhousecw.org/],
  description: %q[Karen House is a Catholic Worker house of hospitality for homeless women and children.  They only consider new clients for housing on Mondays after 9 AM. CALL FIRST to see if there are any openings.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[1840 Hogan St.],
        line2: %q[],
        city: %q[],
        state: %q[],
        postal_code: %q[63106],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.621.4052').first_or_create!
    )},
  ],
)
Shelter.where(name: %q[KATHY WEINMAN CENTER]).first_or_create!.update!(
  href: %q[http://www.keepingkidsfirst.org/],
  description: %q[Temporary, emergency shelter, court advocacy, professional therapy for women and children, support groups. Follow-up supportive services available. St. Louis County operates this shelter.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: nil,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.423.1117').first_or_create!
    )},
  ],
)
Shelter.where(name: %q[LOAVES AND FISHES]).first_or_create!.update!(
  href: %q[http://loavesandfishes-stl.org/food-pantry/],
  description: %q[30-day emergency shelter for women and children. Many services offered. Housing Resource Center referral is required.],
  genders: [Gender.women],
  locations: [
    Location.where(
      description: %q[],
      address: Address.where(
        line1: %q[2750 McKelvey Rd.],
        line2: %q[],
        city: %q[Maryland Heights],
        state: %q[MO],
        postal_code: %q[63043],
        country: %q[USA],
      ).first_or_create!,
    ).first_or_create!.tap{|l| l.update!(
      phone_number: PhoneNumber.where(number: '+1.314.291.3857').first_or_create!
    )},
  ],
)
