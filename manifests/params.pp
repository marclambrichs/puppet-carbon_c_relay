#
class carbon_c_relay::params {
  $allowed_chars               = undef
  $carbon_cache_statistics     = false
  $config_clusters             = {}
  $config_file                 = '/etc/carbon-c-relay.conf'
  $config_matches              = {}
  $config_rewrites             = {}
  $group                       = 'carbon-c-relay'
  $init_file                   = '/etc/init.d/carbon-c-relay'
  $init_file_ensure            = 'file'
  $init_template               = "carbon_c_relay${init_file}.erb"
  $interface                   = undef
  $io_timeout                  = 600
  $limit_fsize                 = undef
  $limit_cpu                   = undef
  $limit_as                    = undef
  $limit_no_file               = 64000
  $limit_nproc                 = 64000
  $listen                      = 2003
  $listen_backlog              = 32
  $log_dir                     = '/var/log/carbon-c-relay'
  $log_file                    = 'carbon-c-relay.log'
  $max_stalls                  = 4
  $output_file                 = undef
  $package_ensure              = latest
  $package_manage              = true
  $package_name                = 'carbon-c-relay'
  $pid_dir                     = '/var/run/carbon-c-relay'
  $pid_file                    = 'carbon-c-relay.pid'
  $replication_factor          = 1
  $server_batch_size           = 2500
  $server_queue_size           = 25000
  $service_enable              = true
  $service_ensure              = running
  $service_file                = '/usr/lib/systemd/system/carbon-c-relay.service'
  $service_manage              = true
  $service_name                = $package_name
  $service_template            = "carbon_c_relay${service_file}.erb"
  $sorted_matches              = true
  $sorted_rewrites             = false
  $statistics_hostname         = undef
  $statistics_sending_interval = undef
  $sysconfig_file              = '/etc/sysconfig/carbon-c-relay'
  $sysconfig_template          = "carbon_c_relay${sysconfig_file}.erb"
  $user                        = 'carbon-c-relay'
  $worker_threads              = 4
}
