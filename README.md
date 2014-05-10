# Marabit
form habits together.

<hr>
# Issues
Documenting trouble areas...

## Current Issues
### Git issues
- trying to manage git from one user, on two computers
- cloned repo onto second computer, but the rails-engine branch didn't show. Had trouble pulling it down, and pushing it. Now the pushed branch is a different name. (remotes/origin/rails-engine)

<hr>
## Solved Issues

### Problem: Running tests
Trying to run rspec from top of application, but it can't find the model.

#### Solution: Namespace models
Got tripped up with the namespacing issues again.
I originally had;

    rush = Rush.new

But what I needed to do was

    rush = Race::Rush.new


### Problem: Working with gems.
Having trouble loading slim, and neat.
Slim files, like `new.slim`, rails can't find the template.
With Neat, when I add `@import neat` to top of `application.scss` file, it can't find it.

#### Solution: Needed to require in one more spot.
Engines have a lib directory that had a file named after the engine.
For example the *race* engine has a `lib/race.rb`
I needed to require any gems I wanted to there.
It seems the more sophisticated way that Task rabbit is doing is to require each in the shared modules or something..
[manafests](https://github.com/taskrabbit/rails_engines_example/blob/434e687b795ec52705a3be1dd2c635f0054336d4/apps/shared/app/controllers/shared/controller/manifests.rb)


### Problem: Trouble with rails views:
Can't seem to get engine views to be found.
#### Solution: modules required adding another directory as a namespace.
##### The normal way is;
    app/views/foo/index
##### The engine way is;
    app/views/engine_name/foo/index

<hr>
## Notes
### Routes with a boot inquirer
Routes uses the boot_inquirere to auto load any apps. It also provides a cool way to work on specific apps.
There are 4 parts.
- lib/boot_inquirer
- appliction.rb
- gemfile
- routes

Built off of
[these steps](https://github.com/taskrabbit/rails_engines_example/commit/41d309b0cd1be85bbda692217493bf2af743cf31)

### Assets using manifest.rb

### Migrations with initializer?
