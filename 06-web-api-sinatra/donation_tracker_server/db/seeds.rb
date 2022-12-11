feeding_america = Organization.create(name: 'Feeding America')
salvation_army = Organization.create(name: 'Salvation Army')
red_cross = Organization.create(name: 'American National Red Cross')

sally = Donor.create(name: "Sally")
jack = Donor.create(name: "Jack Skellington")
mayor = Donor.create(name: "Mayor")
oogie = Donor.create(name: "Oogie Boogie")

Donation.create(amount: 200.00, date: 102121, completed: false, organization_id: feeding_america.id, donor_id: sally.id)
Donation.create(amount: 1000.00, date: 100221, completed: false, organization_id: salvation_army.id, donor_id: jack.id)
Donation.create(amount: 500.00, date: 83021, completed: false, organization_id: feeding_america.id, donor_id: mayor.id)
Donation.create(amount: 30.00, date: 90221, completed: false, organization_id: red_cross.id, donor_id: sally.id)
Donation.create(amount: 10.00, date: 103121, completed: false, organization_id: feeding_america.id, donor_id: oogie.id)
Donation.create(amount: 20.00, date: 90221, completed: false, organization_id: red_cross.id, donor_id: jack.id)
Donation.create(amount: 800.00, date: 103121, completed: false, organization_id: salvation_army.id, donor_id: mayor.id)

