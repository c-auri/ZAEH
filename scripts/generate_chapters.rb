path_to_file = '_data/chapters.yml'
File.delete(path_to_file) if File.exist?(path_to_file)
chapters = File.open(path_to_file, 'a')

part_breaks = [ 
    0,
    28, 49, 68,
    84, 105, 131, 144, 166,
    189, 228, 262,
    278, 297, 316, 336,
    352, 364
]

book_breaks = [ 0, 68, 166, 262, 336, 364 ]

part_number = 1
book_number = 1
part_number_in_book = 1

for number in 1..364
    if number > part_breaks[part_number]
        part_number += 1
        part_number_in_book += 1
    end

    if number > book_breaks[book_number]
        book_number += 1
        part_number_in_book = 1
    end

    number_in_part = number - part_breaks[part_number - 1]

    case book_number
    when 1
        book_name = "Buch I"
    when 2
        book_name = "Buch II"
    when 3
        book_name = "Buch III"
    when 4
        book_name = "Buch IV"
    when 5
        book_name = "Epilog"
    else
        raise Error.new("Unknown book")
    end

    case part_number_in_book
    when 1
        part_name_in_book = "Erster Teil"
    when 2
        part_name_in_book = "Zweiter Teil"
    when 3
        part_name_in_book = "Dritter Teil"
    when 4
        part_name_in_book = "Vierter Teil"
    when 5
        part_name_in_book = "Fünfter Teil"
    else
        rause Error.new("Unknown part")
    end

    chapters.puts("- number: #{number}")
    chapters.puts("  part_number: #{part_number}")
    chapters.puts("  book_number: #{book_number}")
    chapters.puts("  book_name: #{book_name}")
    chapters.puts("  part_number_in_book: #{part_number_in_book}")
    chapters.puts("  part_name_in_book: #{part_name_in_book}")
    chapters.puts("  number_in_part: #{number_in_part}")
    chapters.puts()
end

chapters.close