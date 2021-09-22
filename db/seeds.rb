10.times do |blog|
  Blog.create!(
    title: "Etiam dignissim #{blog}",
    body: "At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Gravida quis blandit turpis cursus in hac habitasse. Cursus euismod quis viverra nibh cras pulvinar mattis nunc sed. Etiam erat velit scelerisque in. Tellus pellentesque eu tincidunt tortor. Nunc sed velit dignissim sodales ut eu."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Erat nam at lectus #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

5.times do |portafolio_items|
  Portafolio.create!(
    title: "Tempor nec feugiat nisl pretiums #{portafolio_items}",
    subtitle: "Aliquam ut porttitor" ,
    string: "Ac odio tempor orci dapibus ultrices in iaculis nunc sed.",
    body: "Nulla malesuada pellentesque elit eget. Donec ultrices tincidunt arcu non sodales neque sodales. Ut tortor pretium viverra suspendisse potenti nullam ac. ",
    main_image: "https://placeholder.it/600x400",
    thumb_image: "https://placeholder.it/350x200"
  )
end

puts "9 portafolio itens created"