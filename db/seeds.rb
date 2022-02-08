Comment.destroy_all
Event.destroy_all

10.times do
  Event.create!(
    name: Faker::Food.dish,
    email: Faker::Internet.email,
    date: Faker::Date.between(from: Date.today, to: 2.months.after),
    description: Faker::Food.description
  )
end

Event.find_each do |event|
  event.comments.create!(
    author: Faker::Name.name,
    content: Faker::Lorem.characters(number: 130)
  )
end
