# Marabit
form habits together.

## Issues
### Current
#### Git issues
- trying to manage git from one user, on two computers
- cloned repo onto second computer, but the rails-engine branch didn't show. Had trouble pulling it down, and pushing it. Now the pushed branch is a different name. (remotes/origin/rails-engine)

### Solved
#### Trouble with rails views:
Can't seem to get engine views to be found.
_Solution: modules required adding another directory as a namespace.
##### The normal way is;
    app/views/foo/index
##### The engine way is;
    app/views/engine_name/foo/index


## Notes
### Routes
Routes uses the boot_inquirere to auto load any apps. It also provides a cool way to work on specific apps.
There are 4 parts.
- lib/boot_inquirer
- appliction.rb
- gemfile
- routes

Built off of
[these steps](https://github.com/taskrabbit/rails_engines_example/commit/41d309b0cd1be85bbda692217493bf2af743cf31)
