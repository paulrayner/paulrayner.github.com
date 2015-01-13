require 'pry'
require 'pry-byebug'
require 'yaml'
require 'stringex'

task :default => [:publish]

desc "Publish a draft"
task :publish do |t, args|
  source_dir = '.'
  posts_dir = '_posts'
  new_post_ext = 'adoc'

  file = next_draft_to_publish
  if file.nil? 
    puts "No draft marked to publish"
    Process.exit 
  end
  puts "Publishing : " + File.basename(file)

  now = Time.now
  short_date = now.strftime("%Y-%m-%d")
  long_date = now.strftime("%Y-%m-%d %H:%M")

  # separate the YAML headers
  contents = File.read(file).split(/^---\s*$/)
  if contents.count < 1 # Expects the draft to be properly formatted
    puts "Invalid header format on post #{File.basename(file)}"
    Process.exit
  end
  # parse the YAML. So much better than regex search and replaces
  headers = YAML::load("---\n"+contents[1])
  content = contents[2].strip

  should = { :generate => false, :deploy => false, :schedule => false, :limit => 0 }

  should[:generate] = true
  should[:deploy] = true

  # fall back to current date and title-based slug
  headers['date'] ||= long_date
  headers['slug'] ||= headers['title'].to_url.downcase

  # write out the modified YAML and post contents back to the original file
  File.open(file,'w+') {|file| file.puts YAML::dump(headers) + "---\n" + content + "\n"}

  # move the file to the posts folder with a standardized filename
  target = "#{source_dir}/#{posts_dir}/#{short_date}-#{headers['slug']}.#{new_post_ext}"
  mv file, target
  puts %Q{Published "#{headers['title']}" to #{target}}

  system "git add " + target
  puts "git commit -am \"Published #{headers['title']}\""
  puts "git push origin jekyll"
end

# posts prefixed with "publish_" - find the earliest one based on modification date
def next_draft_to_publish
  Dir.glob("_drafts/publish_*").min_by {|f| File.mtime(f)}
end