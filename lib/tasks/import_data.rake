namespace :import do
  desc "Import all"
  task :import_all => :environment do
    Movielen.insert_all
  end

  desc "Training"
  task :recommender_train => :environment do
    Recommender.new.train_recommend
  end


  desc "Recommend"
  task :recommend => :environment do
    Recommender.new.recommend
  end

  desc "calculate mean squared error"
  task :calculate_mean_squared_error => :environment do
    Recommender.new.calculate_mean_squared_error
  end
end
