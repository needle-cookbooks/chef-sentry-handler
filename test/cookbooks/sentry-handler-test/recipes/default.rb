#
# Cookbook Name:: sentry-handler-test
# Recipe:: default
#
# This recipe is intended for use with test-kitchen, it will always fail to converge.
#
# Pass your Sentry DSN into test-kitchen by exporting the SENTRY_HANDLER_DSN env var

unless node['sentry']['dsn']
  Chef::Application.fatal!("Please pass your Sentry DSN into test-kitchen by exporting it as the value of the SENTRY_HANDLER_DSN environment variable")
else
  include_recipe "chef-sentry-handler::default"

  execute "cause an exception" do
    command "this command is expected to fail -- please manually check sentry for an error"
  end
end
