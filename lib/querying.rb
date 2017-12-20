def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books where books.series_id = 1 order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto from characters order by characters.motto limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, count(characters.species) as count from characters group by characters.species order by count desc limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from ((authors inner join series on authors.id = series.author_id)series inner join subgenres on series.subgenre_id = subgenres.id)"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON series.id = characters.series_id where characters.species = 'human' group by series.title order by  count(characters.species) desc limit 1"
end


def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.character_id) as series_count from characters inner join character_books on characters.id = character_books.character_id group by characters.id order by series_count desc, characters.name"
end
