# This recipe is intended for use with test-kitchen, but it will always fail.
# I guess thats just how it goes when one is testing exception handlers.
#
# See included .kitchen.local.yml.example for an example of how to
# pass your Sentry DSN to chef and run this recipe.

include_recipe "chef-sentry-handler::default"

execute "cause an exception" do
  command "this command is expected to fail"
end
