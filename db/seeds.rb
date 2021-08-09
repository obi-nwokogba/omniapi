# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.create(
  quoteid: 1,
  quotetext: 'The way to get started is to quit talking and begin doing.',
  quoteby: 'Walt Disney'
)

Quote.create(
  quoteid: 2,
  quotetext: 'If life were predictable it would cease to be life, and be without flavor.',
  quoteby: 'Eleanor Roosevelt'
)

Quote.create(
  quoteid: 3,
  quotetext: 'Spread love everywhere you go. Let no one ever come to you without leaving happier.',
  quoteby: 'Mother Theresa'
)

Quote.create(
  quoteid: 4,
  quotetext: "Don't judge each day by the harvest you reap but by the seeds that you plant.",
  quoteby: 'Robert Louis Stevenson'
)

Quote.create(
    quoteid: 5,
    quotetext: "Don't judge each day by the harvest you reap but by the seeds that you plant.",
    quoteby: 'Robert Louis Stevenson'
  )

  Quote.create(
    quoteid: 6,
    quotetext: "Tell me and I forget. Teach me and I remember. Involve me and I learn.",
    quoteby: 'Benjamin Franklin'
  )

  Quote.create(
    quoteid: 7,
    quotetext: "Learning never exhausts the mind",
    quoteby: 'Leonardo da Vinci'
  )

  Quote.create(
    quoteid: 8,
    quotetext: "There is no charm equal to tenderness of heart.",
    quoteby: 'Jane Austen'
  )

  Quote.create(
    quoteid: 9,
    quotetext: "Lord, make me an instrument of thy peace. Where there is hatred, let me sow love.",
    quoteby: 'Francis of Assisi'
  )

  Quote.create(
    quoteid: 10,
    quotetext: "Life without love is like a tree without blossoms or fruit.",
    quoteby: 'Khalil Gibran'
  )

  Quote.create(
    quoteid: 11,
    quotetext: "Love cures people - both the ones who give it and the ones who receive it.",
    quoteby: 'Karl A. Menninger'
  )


#   quotes = Quote.create([
#     {quoteid: 1, quotetext:'123'},
#     {quoteid: 'Guled', password:'1234'},
#     {quoteid: 'Obi', password:'12345'},
#     {quoteid: 'Blake', password:'123456'},
# ])

puts 'Seeded Database with Quotes Successfully!'


  
