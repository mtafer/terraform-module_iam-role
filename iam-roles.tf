resource "aws_iam_role" "this" {
  name               = "${var.iam_role_name}"
  description        = "${var.iam_role_description}"
  assume_role_policy = templatefile("${var.assume_role_policy_file}", {})
  path               = "${var.iam_role_path}"
  tags               = "${var.tags}"
}

resource "aws_iam_policy" "this" {
  name        = "${var.iam_policy_name}"
  policy      = templatefile("${var.role_policy_file}", {})
  description = "${var.iam_policy_description}"
}

resource "aws_iam_role_policy_attachment" "this" {
  policy_arn = "${aws_iam_policy.this.arn}"
  role       = "${aws_iam_role.this.name}"
}