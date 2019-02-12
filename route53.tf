data "aws_route53_zone" "parent" {
  name         = "${var.parent_domain_name}"
  private_zone = false
}

resource "aws_route53_zone" "this" {
  name = "${var.name}.${data.aws_route53_zone.parent.name}"
}

resource "aws_route53_record" "this_ns" {
  zone_id = "${data.aws_route53_zone.parent.zone_id}"
  name    = "${aws_route53_zone.this.name}"
  type    = "NS"
  ttl     = "30"

  records = [
    "${aws_route53_zone.this.name_servers.0}",
    "${aws_route53_zone.this.name_servers.1}",
    "${aws_route53_zone.this.name_servers.2}",
    "${aws_route53_zone.this.name_servers.3}",
  ]
}
