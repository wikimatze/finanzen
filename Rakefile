require 'rake'
require 'colorator'

desc 'Staging'
task :staging do
  system "sed -i 's/finanzen.wikimatze.de/stagingfinanzen.wikimatze.de/g' config.toml"
  system 'hugo'

  puts 'Deploying site with lovely rsync ..'.bold.green

  system "rsync -vru -e \"ssh\" --del public/* xa6195@xa6.serverdomain.org:/home/www/stagingfinanzen/"
  puts '# Please refer to https://stagingfinanzen.wikimatze.de to visit the staging system'.green
  system "sed -i 's/stagingfinanzen.wikimatze.de/finanzen.wikimatze.de/g' config.toml"
end

desc 'Deploy'
task :deploy do
  puts 'Building hugo ..'.bold.green
  system 'hugo'

  puts 'Deploying site with lovely rsync ..'.bold.green

  system "rsync -vru -e \"ssh\" --del public/* xa6195@xa6.serverdomain.org:/home/www/finanzen/"

  puts 'Done!'.green
end

desc 'Startup hugo'
task :s do
  puts 'hugo is finished with building..'.bold.green
  system 'hugo server'
end

task :default => :s
