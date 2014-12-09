namespace :berkshelf do

  desc "Upload cookbook to chef server"
  task :upload do
    sh "bundle exec berks upload -c deploy/berkshelf.json"
  end

end