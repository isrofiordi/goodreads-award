nokogiri = Nokogiri.HTML(content)

# Cari link semua buku di halaman
books = nokogiri.css('div.category.clearFix')
books.each do |book|
    url = "https://www.goodreads.com" + book.at_css('a')["href"]
    pages << {
          url: url,
          page_type: 'books',
          vars: {url: url},
          fetch_type: "browser"
    }
end