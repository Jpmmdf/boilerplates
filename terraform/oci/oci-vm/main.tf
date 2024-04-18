provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute RDMA GPU Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Auto-Configuration"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Authentication"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "fkWb:SA-SAOPAULO-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaar4l4vbpjam4rc6no2bgqbqckv6ksyvmppgatayda75rya6mtq3ha"
	create_vnic_details {
		assign_ipv6ip = "false"
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.sa-saopaulo-1.aaaaaaaaotl2xf42xfo5nfs2yvvm23ip5jmptvfjobteuo3keq4qgyba2d4a"
	}
	display_name = "instance-20240317-1904"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDYcitjzY9snKERsLWFdKOtTXcxigKrEsPVV79RzY+nL64il9sbHXtNLtOejzkywhob8xwnjE52Z3Dla8bIQMltFCa9zPThIWk685FG7/xcZWqqpBWG+ZP7tBhRmabvsqpVg44tS5i9dNnttfEQv6aDgoun1G42830xxdnCCWC4YPw0+cOYjw1uHqD8w4KD5a7xA2zAPa+dFSlK1OxxT8NDtCPUbfbtuIkZAVf33STXWDx8EPy3bLoIYuQwTlYC+LkMbNuWdhwbcfDKN8g5NG1vvd8cO/Js+YJB0SehpBt6g/tsVmVa/FuCoWdXCC7RA8G/EHQRnSZTNYmI0QCk77wL ssh-key-2024-03-17"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		source_id = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaxl7vfxg4tcbk6wiceqcbzvhny4ztvtpsbspg6xbpdk2wjvwnaj3a"
		source_type = "image"
	}
}
