class ntp::service(
  String $service_name  	= $ntp::service_name,
  String $service_ensure	= $ntp::service_ensure,
  Boolean $service_enable	= $ntp::service_enable,
  Boolean $servive_hasstatus    = $ntp::service_hasstatus,
  Boolean $service_hasrestart   = $ntp::service_hasrestart,
) {
  service { 'ntp':
	ensure 	=> $service_ensure,
	enable	=> $service_enable,
	name	=> $service_name,
	hasstatus => $service_hasstatus,
	hasrestart => $service_hasrestart,
  }
}
