namespace :berkshelf do

  desc "Upload cookbook to chef server"
  task :upload do
    sh "cd VS-FourthCoffee"
    sh "bundle exec berks upload -c berkshelf.json"
  end

end