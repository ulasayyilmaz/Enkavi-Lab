# Scrape google scholar articles belonging to name Enkavi and author_id (Zeynep Enkavi's google scholar author_id)

require 'google_search_results'
require 'json'

# parameters needed for google search api (api key is unique to Ulas Ayyilmaz), 
# change author_id with the google scholar id of target individual and q with any descriptor text
params = {
  api_key: "092363a8911416ebd92e9d6d1e5453a1e50b3cd0f0acbe6208cfd592b1c8b298",
  engine: "google_scholar_author",
  author_id: "RbsrblkAAAAJ",
  q: "Enkavi",
  hl: "en"
}

# gather results for google search with given parameters
# results is a dictionary of keys and values representing information on the searched google scholar webpage
search = GoogleSearch.new(params)
results = search.get_hash

# get the values for the key "articles" from the results dictionary, assign it to variable "publicatioins"
publications = results[:articles] || results["articles"]

# Generate HTML content for the page
html_content = <<-HTML
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Publications - Enkavi Lab</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <header>
        <h1>Publications</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="team.html">Team</a></li>
                <li><a href="publications.html">Publications</a></li>
                <li><a href="projects.html">Projects</a></li>
                <li><a href="teaching.html">Teaching</a></li>
            </ul>
        </nav>
    </header>

    <section id="publications">
        <h2>Publications</h2>
HTML

# cut the HTML content to add scraped content to the body

# sort publications by year
publications.sort_by { |article| -article[:year].to_i }.each do |article|
    title = article[:title]
    link = article[:link]
    authors = article[:authors] || "Unknown Authors"
    year = article[:year] || "N/A"
    publication = article[:publication] || "Unknown Publication"
  
    # add html content the relevant information in desired format (authors, publication etc)
    html_content += "<div class='publication'>"
    html_content += "<a href='#{link}' target='_blank' class='publication-title'>#{title}</a><br>"
    html_content += "<span>#{authors}</span><br>"
    html_content += "<b>#{publication} #{year}</b>"
    html_content += "</div>"
end

# finish the html page formatting
html_content += <<-HTML
    
</section>

</body>
</html>
HTML

# Save to publications.HTML file
File.open("publications.html", "w") { |file| file.write(html_content) }

puts "Publications page updated successfully!"