Intro
=====
This is a cookbook for use [with Pivotal's Workstation Chef](http://github.com/pivotalexperimental/wschef).  Workstation Chef calls the linked_workstation_recipe which calls recipes both within this cookbook and within the base wschef cookbook.

Once you have checked out the cookbook, you are welcome to (and should!) modify the linked_workstation_recipe to suit your needs, such as removing the uninstallation recipe.  You can also set the hostname in the attributes folder in the cookbook, which will let your ccrb installation link to itself properly.  You can also consider creating a project cookbook within your project for additional installs that are necessary to run your project both on your CI box and on your workstations.

How To Use
==========
This has only been tested on a fresh installation of Snow Leopard with Git and XCode installed.  Please note in an unmodified state this will intentionally be destructive - it uninstalls things we don't need on CI boxes, such as Garage Band.

git clone git://github.com/pivotalexperimental/wschef.git
git clone git://github.com/pivotalexperimental/ci_cookbook.git
ln -s ~/ci_cookbook/ ~/wschef/cookbook_links/workstation_cookbook
cd wschef
./install_chef.rb
./run

Etc
===
These recipes assume the box is being added to our "mini farm" of ci boxes.  We would appreciate pull requests that generalize and move pivotal specific configuration options into configurable attributes.