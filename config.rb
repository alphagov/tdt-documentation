require 'govuk_tech_docs'

# Check for broken links
require 'html-proofer'

GovukTechDocs.configure(self, livereload: { js_host: "localhost" })

after_build do |builder|
  begin
    HTMLProofer.check_directory(config[:build_dir],
      { :assume_extension => true,
        :disable_external => true,
        :allow_hash_href => true,
        :url_swap => { config[:tech_docs][:host] => "" } }).run
  rescue RuntimeError => e
    abort e.to_s
  end
end


DOCS_LOCATION_IN_GEM = Bundler.rubygems.find_name('govuk_tech_docs').first.full_gem_path + "/docs"

files.watch :source, path: DOCS_LOCATION_IN_GEM

helpers do
  def gem_docs(filename)
    raw_markdown = File.read(DOCS_LOCATION_IN_GEM + "/#{filename}")

    # Strip the h1 header from the original markdown file
    markdown = raw_markdown.lines[1..-1].join

    markdown
  end
end
