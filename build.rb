# Builds the site into _site/ without needing the (broken) jekyll binstub.
# Usage: ruby build.rb
require "rubygems"
$LOAD_PATH.unshift(*Dir.glob("#{Gem.user_dir}/gems/*/lib"))
require "jekyll"

Jekyll::Commands::Build.process(
  "source" => __dir__,
  "destination" => File.join(__dir__, "_site")
)
