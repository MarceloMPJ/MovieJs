movie_list = [
  [ "Star Wars", "action", 1977, "George Lucas", "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader."],
  [ "Star Wars: Episode V - The Empire Strikes Back", "action", 1980, "Irvin Kershner", "After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader."],
  [ "Star Wars: Episode VI - Return of the Jedi", "action", 1983, "Richard Marquand", "After a daring mission to rescue Han Solo from Jabba the Hutt, the rebels dispatch to Endor to destroy a more powerful Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor's trap."],
  [ "Star Wars: Episode I - The Phantom Menace", "action", 1999, "George Lucas", "Two Jedi Knights escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long dormant Sith resurface to claim their old glory."],
  [ "Star Wars: Episode II - Attack of the Clones", "action", 2002, "George Lucas", "Ten years after initially meeting, Anakin Skywalker shares a forbidden romance with Padmé Amidala, while Obi-wan Kenobi investigates an assassination attempt on the Senator and discovers a secret clone army crafted for the Jedi."],
  [ "Star Wars: Episode III - Revenge of the Sith", "action", 2005, "George Lucas", "Three years into the Clone Wars, the Jedi rescue Palpatine from Count Dooku. As Obi-wan pursues a new threat, Anakin acts as a double agent between the Jedi Council and Palpatine and is lured into a sinister plan to rule the galaxy."],
  [ "Harry Potter and the Sorcerer's Stone", "fantasy", 2001, "Chris Columbus", "An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world."],
  [ "The Lord of the Rings: The Fellowship of the Ring", "fantasy", 2001, "Peter Jackson", "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."],
  [ "The Godfather", "drama", 1972, "Francis Ford Coppola", "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."],
  [ "Pulp Fiction", "drama", 1994, "Quentin Tarantino", "The lives of two mob hitmen, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption."],
  [ "The Matrix", "scifi", 1999, "The Wachowski Brothers", "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers."],
  [ "Midnight in Paris", "comedy", 2011, "Woody Allen", "While on a trip to Paris with his fiancée's family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s everyday at midnight."],
  [ "About Time", "comedy", 2013, "Richard Curtis", "At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think."],
  [ "Mr. Nobody", "fantasy", 2009, "Jaco Van Dormael", "A boy stands on a station platform as a train is about to leave. Should he go with his mother or stay with his father? Infinite possibilities arise from this decision. As long as he doesn't choose, anything is possible."],
  [ "The Butterfly Effect", "scifi", 2004, "J. Mackye Gruber", "Evan Treborn suffers blackouts during significant events of his life. As he grows up, he finds a way to remember these lost memories and a supernatural way to alter his life by reading his journal."]
]

movie_list.each do |title, main_genre, release_year, director, description|
  Movie.create(title: title, main_genre: main_genre, release_year: release_year, director: director, description: description)
end
