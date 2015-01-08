$LOAD_PATH.unshift File.dirname(__FILE__)
$LOAD_PATH.unshift File.dirname(__FILE__) + "/rubyrep"

require 'rubygems'
require 'yaml'
require 'logger'

gem 'activerecord', '>= 3.0.5'
require 'active_record'

require 'version'
require 'configuration'
require 'initializer'
require 'session'
require 'connection_extenders/connection_extenders'
require 'table_scan_helper'
require 'table_scan'
require 'type_casting_cursor'
require 'proxy_cursor'
require 'proxy_block_cursor'
require 'proxy_row_cursor'
require 'direct_table_scan'
require 'proxied_table_scan'
require 'database_proxy'
require 'command_runner'
require 'proxy_runner'
require 'proxy_connection'
require 'table_spec_resolver'
require 'scan_report_printers/scan_report_printers'
require 'scan_report_printers/scan_summary_reporter'
require 'scan_report_printers/scan_detail_reporter'
require 'scan_progress_printers/scan_progress_printers'
require 'scan_progress_printers/progress_bar'
require 'base_runner'
require 'scan_runner'
require 'committers/committers'
require 'committers/buffered_committer'
require 'log_helper'
require 'sync_helper'
require 'table_sorter'
require 'table_sync'
require 'syncers/syncers'
require 'syncers/two_way_syncer'
require 'sync_runner'
require 'trigger_mode_switcher'
require 'logged_change_loader'
require 'logged_change'
require 'replication_difference'
require 'replication_helper'
require 'replicators/replicators'
require 'replicators/two_way_replicator'
require 'task_sweeper'
require 'replication_run'
require 'replication_runner'
require 'uninstall_runner'
require 'generate_runner'
require 'noisy_connection'

module RR
  # Returns the logger used by RubyRep. It logs to replication.output by default if
  # nothing else is specified via the RR_LOGFILE env variable. The log level
  # defaults to INFO, but it can also be set via the RR_LOGLEVEL env variable.
  def self.logger
    @logger ||= begin
      file  = (ENV['RR_LOGFILE'] && File.expand_path(ENV['RR_LOGFILE'])) || File.expand_path("replication.output")
      level = Logger::INFO
      
      if ENV['RR_LOGLEVEL']
        # Try to get the correct constant from the logger class
        env_level = ENV['RR_LOGLEVEL'].upcase
        level = Logger.const_get(env_level) if Logger.constants.include?(env_level.to_sym)
      end

      # Create new logger and return it
      Logger.new(file).tap do |l|
        l.level    = level
        l.progname = 'RubyRep'
      end
    end
  end
end

Dir["#{File.dirname(__FILE__)}/rubyrep/connection_extenders/*.rb"].each do |extender|
  # jdbc_extender.rb is only loaded if we are running on jruby
  require extender unless extender =~ /jdbc/ and not RUBY_PLATFORM =~ /java/
end

require 'replication_initializer'
require 'replication_extenders/replication_extenders'

Dir["#{File.dirname(__FILE__)}/rubyrep/replication_extenders/*.rb"].each do |extender|
  require extender
end

module RR
  
end