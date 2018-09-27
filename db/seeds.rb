
User.new
employers = Employer.create([
  { name: 'Gilead', email: 'test@test1.com', password: '1234567890'},
  { name: 'Google', email: 'test@test2.com', password: '1234567890'},
  { name: 'Hack Reactor', email: 'test@test3.com', password: '1234567890'},
  { name: 'Netflix', email: 'test@test4.com', password: '1234567890'},
  { name: "Bob's Burgers", email: 'test@test5.com', password: '1234567890'}
])


Applicant.create([
  { name: 'Chase Blokker', email: 'test@test6.com', password: '1234567890'},
  { name: 'Applicant Shmapplicant', email: 'test@test7.com', password: '1234567890'},
  { name: 'Bob Bobby', email: 'test@test8.com', password: '1234567890'},
  { name: 'John Doe', email: 'test@test9.com', password: '1234567890'},
  { name: 'Sarah Sue', email: 'test@test10.com', password: '1234567890'}
])

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur bibendum tempus. Praesent lacus quam, hendrerit id dui eget, lacinia cursus tortor. Suspendisse cursus, magna id egestas pretium, est orci auctor magna, sed cursus ex metus in est. Duis fringilla non enim tincidunt dictum. Integer dictum commodo lacus, nec interdum purus mollis sed. Fusce sit amet tellus quis enim varius placerat dapibus a massa. Curabitur dapibus elementum consectetur. Duis vitae leo nisi. Nullam tincidunt quis ante in dapibus. Phasellus ac fringilla justo. Nunc tellus augue, eleifend a nibh sit amet, tincidunt commodo diam. Vivamus ullamcorper tellus felis, ac varius dui aliquet ac. Curabitur sit amet est ullamcorper, lobortis odio eu, scelerisque tortor. Duis orci sapien, iaculis sed urna non, sollicitudin porta lacus."

Job.create([
  { title: 'Lead Engineer', description: lorem, employer: employers[0]},
  { title: 'Full Stack Engineer', description: lorem, employer: employers[0]},
  { title: 'Logistics Associate', description: lorem, employer: employers[0]},
  { title: 'Window Washer', description: lorem, employer: employers[0]},
  { title: 'Front End Engineer', description: lorem, employer: employers[1]},
  { title: 'Back End Enginner', description: lorem, employer: employers[1]},
  { title: 'Burger Eater', description: lorem, employer: employers[4]},
  { title: 'Burger Cooker', description: lorem, employer: employers[4]},
])