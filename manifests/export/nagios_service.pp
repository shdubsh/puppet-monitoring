# proxy to an exported nagios_service definition
# Used as a workaround of https://tickets.puppetlabs.com/browse/PUP-6698
define monitoring::export::nagios_service (
    $ensure,
    $host_name,
    $servicegroups,
    $service_description,
    $check_command,
    $max_check_attempts,
    $check_interval,
    $retry_interval,
    $check_period,
    $notification_interval,
    $notification_period,
    $notification_options,
    $notifications_enabled,
    $contact_groups,
    $passive_checks_enabled,
    $active_checks_enabled,
    $is_volatile,
    $check_freshness,
    $freshness_threshold,
    $event_handler,
    $notes_url,
    $mode = '0444'
) {
    @@nagios_service { $title:
        ensure                 => $ensure,
        host_name              => $host_name,
        servicegroups          => $servicegroups,
        service_description    => $service_description,
        check_command          => $check_command,
        max_check_attempts     => $max_check_attempts,
        check_interval         => $check_interval,
        retry_interval         => $retry_interval,
        check_period           => $check_period,
        notification_interval  => $notification_interval,
        notification_period    => $notification_period,
        notification_options   => $notification_options,
        notifications_enabled  => $notifications_enabled,
        contact_groups         => $contact_groups,
        passive_checks_enabled => $passive_checks_enabled,
        active_checks_enabled  => $active_checks_enabled,
        is_volatile            => $is_volatile,
        check_freshness        => $check_freshness,
        freshness_threshold    => $freshness_threshold,
        event_handler          => $event_handler,
        notes_url              => $notes_url,
        mode                   => $mode,
    }
}
