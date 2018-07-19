Topic.delete_all
Skill.delete_all
User.delete_all
Blog.delete_all
Porfolio.delete_all

#Topics 
topic = Topic.create(
  title: "Rails Development")
  
topic = Topic.create(
  title: "Dev Soft Skill")

topic = Topic.create(
  title: "Jient's Journey")
  
topic = Topic.create(
  title: "IoTs")
puts "4 topic created"

#Skills
skill = Skill.create(
  title: "Ruby on Rails",
  percent_utilized: 60)
skill = Skill.create(
  title: "Front End Development",
  percent_utilized: 40)
skill = Skill.create(
  title: "JavaScript",
  percent_utilized: 20)
skill = Skill.create(
  title: "SQL Database Management",
  percent_utilized: 30)
puts "4 skills created"

#Users
User.create!(
  email: "test@test.com",
  password: "Test12345678",
  password_confirmation: "Test12345678",
  fullname: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "testuser",
  password_confirmation: "testuser",
  fullname: "Regular User",
)

puts "1 regular user created"
  
#Blogs
Blog.create!(
    title: "Top Resources for Learning Ruby on Rails",
    post_review: "Comming soon...!",
    body: "Comming soon...",
    topic_id: Topic.first.id
  )
Blog.create!(
    title: "Top Resources for Learning Ruby on Rails",
    post_review: "Comming soon...!",
    body: "Comming soon",
    topic_id: Topic.last.id
  )

puts "2 blog posts created"


#Portfolios
3.times do |porfolio_item|
  Porfolio.create!(
    title: "Porfolio title: #{porfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

3.times do |porfolio_item|
  Porfolio.create!(
    title: "Porfolio title: #{porfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
puts "6 porfolio items created"

