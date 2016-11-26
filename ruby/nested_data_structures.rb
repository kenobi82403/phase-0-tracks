# highway construct
#   car => has people => name, age, clothes, occupation

highway = {
  "car 1" => {
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
    }
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
    }
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
}

# What is mom's occupation?
highway['car 1'][:mom][:occupation][0] # => CEO