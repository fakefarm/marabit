module Race
  class Engine < ::Rails::Engine
    isolate_namespace Race

    initializer 'race.append_migrations' do |app|
       unless app.root.to_s == root.to_s
         config.paths["db/migrate"].expanded.each do |path|
           app.config.paths["db/migrate"].push(path)
         end
       end
     end

     initializer 'race.asset_precompile_paths' do |app|
       app.config.assets.precompile += ["race/manifests/*"]
     end
  end
end
