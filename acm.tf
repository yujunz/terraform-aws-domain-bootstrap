module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "1.0.0"

  domain_name               = "${aws_route53_zone.this.name}"
  subject_alternative_names = ["*.${aws_route53_zone.this.name}"]
  zone_id                   = "${aws_route53_zone.this.zone_id}"
}
