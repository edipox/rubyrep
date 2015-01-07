# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubyrep}
  s.version = "1.2.1.2013010901"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Arndt Lehmann}]
  s.date = %q{2012-10-09}
  s.description = %q{A rails based replication engine}
  s.homepage = %q{http://http://www.rubyrep.org}
  s.email = [%q{mail@arndtlehman.com}]
  s.executables = [%q{rubyrep}]
  s.extra_rdoc_files = [%q{History.txt}, %q{License.txt}, %q{Manifest.txt}, %q{README.txt}]
  s.files = [%q{History.txt}, %q{License.txt}, %q{Manifest.txt}, %q{README.txt}, %q{Rakefile}, %q{bin/rubyrep}, %q{config/hoe.rb}, %q{config/mysql_config.rb}, %q{config/postgres_config.rb}, %q{config/proxied_test_config.rb}, %q{config/redmine_config.rb}, %q{config/rep_config.rb}, %q{config/requirements.rb}, %q{config/test_config.rb}, %q{lib/rubyrep.rb}, %q{lib/rubyrep/base_runner.rb}, %q{lib/rubyrep/command_runner.rb}, %q{lib/rubyrep/committers/buffered_committer.rb}, %q{lib/rubyrep/committers/committers.rb}, %q{lib/rubyrep/configuration.rb}, %q{lib/rubyrep/connection_extenders/connection_extenders.rb}, %q{lib/rubyrep/connection_extenders/jdbc_extender.rb}, %q{lib/rubyrep/connection_extenders/mysql_extender.rb}, %q{lib/rubyrep/connection_extenders/postgresql_extender.rb}, %q{lib/rubyrep/database_proxy.rb}, %q{lib/rubyrep/direct_table_scan.rb}, %q{lib/rubyrep/generate_runner.rb}, %q{lib/rubyrep/initializer.rb}, %q{lib/rubyrep/log_helper.rb}, %q{lib/rubyrep/logged_change.rb}, %q{lib/rubyrep/logged_change_loader.rb}, %q{lib/rubyrep/noisy_connection.rb}, %q{lib/rubyrep/proxied_table_scan.rb}, %q{lib/rubyrep/proxy_block_cursor.rb}, %q{lib/rubyrep/proxy_connection.rb}, %q{lib/rubyrep/proxy_cursor.rb}, %q{lib/rubyrep/proxy_row_cursor.rb}, %q{lib/rubyrep/proxy_runner.rb}, %q{lib/rubyrep/replication_difference.rb}, %q{lib/rubyrep/replication_extenders/mysql_replication.rb}, %q{lib/rubyrep/replication_extenders/postgresql_replication.rb}, %q{lib/rubyrep/replication_extenders/replication_extenders.rb}, %q{lib/rubyrep/replication_helper.rb}, %q{lib/rubyrep/replication_initializer.rb}, %q{lib/rubyrep/replication_run.rb}, %q{lib/rubyrep/replication_runner.rb}, %q{lib/rubyrep/replicators/replicators.rb}, %q{lib/rubyrep/replicators/two_way_replicator.rb}, %q{lib/rubyrep/scan_progress_printers/progress_bar.rb}, %q{lib/rubyrep/scan_progress_printers/scan_progress_printers.rb}, %q{lib/rubyrep/scan_report_printers/scan_detail_reporter.rb}, %q{lib/rubyrep/scan_report_printers/scan_report_printers.rb}, %q{lib/rubyrep/scan_report_printers/scan_summary_reporter.rb}, %q{lib/rubyrep/scan_runner.rb}, %q{lib/rubyrep/session.rb}, %q{lib/rubyrep/sync_helper.rb}, %q{lib/rubyrep/sync_runner.rb}, %q{lib/rubyrep/syncers/syncers.rb}, %q{lib/rubyrep/syncers/two_way_syncer.rb}, %q{lib/rubyrep/table_scan.rb}, %q{lib/rubyrep/table_scan_helper.rb}, %q{lib/rubyrep/table_sorter.rb}, %q{lib/rubyrep/table_spec_resolver.rb}, %q{lib/rubyrep/table_sync.rb}, %q{lib/rubyrep/task_sweeper.rb}, %q{lib/rubyrep/trigger_mode_switcher.rb}, %q{lib/rubyrep/type_casting_cursor.rb}, %q{lib/rubyrep/uninstall_runner.rb}, %q{lib/rubyrep/version.rb}, %q{rubyrep}, %q{rubyrep.bat}, %q{script/destroy}, %q{script/generate}, %q{script/txt2html}, %q{setup.rb}, %q{sims/performance/big_rep_spec.rb}, %q{sims/performance/big_scan_spec.rb}, %q{sims/performance/big_sync_spec.rb}, %q{sims/performance/performance.rake}, %q{sims/sim_helper.rb}, %q{spec/base_runner_spec.rb}, %q{spec/buffered_committer_spec.rb}, %q{spec/command_runner_spec.rb}, %q{spec/committers_spec.rb}, %q{spec/configuration_spec.rb}, %q{spec/connection_extender_interface_spec.rb}, %q{spec/connection_extenders_registration_spec.rb}, %q{spec/database_proxy_spec.rb}, %q{spec/database_rake_spec.rb}, %q{spec/db_specific_connection_extenders_spec.rb}, %q{spec/db_specific_replication_extenders_spec.rb}, %q{spec/direct_table_scan_spec.rb}, %q{spec/dolphins.jpg}, %q{spec/generate_runner_spec.rb}, %q{spec/initializer_spec.rb}, %q{spec/log_helper_spec.rb}, %q{spec/logged_change_loader_spec.rb}, %q{spec/logged_change_spec.rb}, %q{spec/noisy_connection_spec.rb}, %q{spec/postgresql_replication_spec.rb}, %q{spec/postgresql_schema_support_spec.rb}, %q{spec/postgresql_support_spec.rb}, %q{spec/progress_bar_spec.rb}, %q{spec/proxied_table_scan_spec.rb}, %q{spec/proxy_block_cursor_spec.rb}, %q{spec/proxy_connection_spec.rb}, %q{spec/proxy_cursor_spec.rb}, %q{spec/proxy_row_cursor_spec.rb}, %q{spec/proxy_runner_spec.rb}, %q{spec/replication_difference_spec.rb}, %q{spec/replication_extender_interface_spec.rb}, %q{spec/replication_extenders_spec.rb}, %q{spec/replication_helper_spec.rb}, %q{spec/replication_initializer_spec.rb}, %q{spec/replication_run_spec.rb}, %q{spec/replication_runner_spec.rb}, %q{spec/replicators_spec.rb}, %q{spec/rubyrep_spec.rb}, %q{spec/scan_detail_reporter_spec.rb}, %q{spec/scan_progress_printers_spec.rb}, %q{spec/scan_report_printers_spec.rb}, %q{spec/scan_runner_spec.rb}, %q{spec/scan_summary_reporter_spec.rb}, %q{spec/session_spec.rb}, %q{spec/spec.opts}, %q{spec/spec_helper.rb}, %q{spec/strange_name_support_spec.rb}, %q{spec/sync_helper_spec.rb}, %q{spec/sync_runner_spec.rb}, %q{spec/syncers_spec.rb}, %q{spec/table_scan_helper_spec.rb}, %q{spec/table_scan_spec.rb}, %q{spec/table_sorter_spec.rb}, %q{spec/table_spec_resolver_spec.rb}, %q{spec/table_sync_spec.rb}, %q{spec/task_sweeper_spec.rb}, %q{spec/trigger_mode_switcher_spec.rb}, %q{spec/two_way_replicator_spec.rb}, %q{spec/two_way_syncer_spec.rb}, %q{spec/type_casting_cursor_spec.rb}, %q{spec/uninstall_runner_spec.rb}, %q{tasks/database.rake}, %q{tasks/deployment.rake}, %q{tasks/environment.rake}, %q{tasks/java.rake}, %q{tasks/redmine_test.rake}, %q{tasks/rspec.rake}, %q{tasks/rubyrep.tailor}, %q{tasks/stats.rake}, %q{tasks/task_helper.rb}, %q{tasks/website.rake}]
  s.rdoc_options = [%q{--main}, %q{README.txt}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{rubyrep}
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{A solution for asynchronous, master-master replication of relational databases}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2.8"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.2.8"])
      s.add_development_dependency(%q<hoe>, ["~> 2.10"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_dependency(%q<hoe>, ["~> 2.10"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.2.8"])
    s.add_dependency(%q<activerecord>, ["~> 3.2.8"])
    s.add_dependency(%q<hoe>, ["~> 2.10"])
  end
end
