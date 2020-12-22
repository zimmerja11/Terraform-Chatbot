variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaa6utitzhckvaqsynkg4gwyt2ioeru5ltca5e37wm3d6tcqj3ud52a"
}

variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaaek2xibzme6zbm6gs7e2i2ucdyry5d5cylg4pnbrhjlxa6otqgema"
}

variable "fingerprint" {
  default = "b6:61:a0:17:e8:aa:bc:37:6a:86:52:3f:58:6d:39:9b"
}

variable "private_key_path" {
  default = "./oci_api_key.pem"
}

variable "region" {
  default = "us-phoenix-1"
}

variable "private_key_passphrase" {
  default = "oci1"
}
