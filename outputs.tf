output "this_route53_zone_name" {
  value = "${aws_route53_zone.this.name}"
}

output "this_acm_certificate_arn" {
  value = "${module.acm.this_acm_certificate_arn}"
}
