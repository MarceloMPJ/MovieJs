# `curl https://datasets.imdbws.com/title.basics.tsv.gz --output tmp/movies_imdb.tsv.gz`
# `gunzip tmp/movies_imdb.tsv.gz`
# movies = File.read('tmp/movies_imdb.tsv')
# movies.each_line do |movie|
#   fields = movie.split("\t")
#   Movie.create(
#     tconst: fields[0],
#     titleType: fields[1],
#     primaryTitle: fields[2],
#     originalTitle: fields[3],
#     isAdult: fields[4] == "1" ? true : false,
#     startYear: fields[5].gsub('\\N', ''),
#     endYear: fields[6].gsub('\\N', ''),
#     runtimeMinutes: fields[7],
#     genres: fields[8].gsub("\n", "").gsub('\N', ""),
#   )
# end
