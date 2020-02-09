User.create!(
  name: 'abcde',
  email: 'aaabbbccc@abc.com',
  password: 'foobar',
  admin: true
  )

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end