# family construct

family = {
  mom: {
    name: "Mary Pooh",
    age: 40,
    hobbies: [
      'knit',
      'music',
      'football'
    ],
    occupation: [
      'CEO',
      'Mary Sue Corporation'
    ]
  },
  dad: {
    name: "John Pooh",
    age: 41,
    hobbies: [
      'video games',
      'music',
      'woodwork'
    ],
    occupation: [
      'Creative Director',
      'Mary Sue Corporation'
    ]
  },
  son: {
    name: "Sam Pooh",
    age: 18,
    hobbies: [
      'video games',
      'music',
      'football'
    ],
    occupation: [
      'student',
      'Dev Bootcamp'
    ]
  }
}

# What is mom's occupation?
p family[:mom][:occupation][0] # => CEO

# access each members name
family.each { |key, value| 
  p "#{key}: #{value[:name]}"
}

# capitalize son's occupation
p family[:son][:occupation][0].capitalize! # student => Student

# print all of dad's hobbies
family[:dad][:hobbies].each {|hobbies| p hobbies}