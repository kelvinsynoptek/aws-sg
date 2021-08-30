#Create SG for rule 446:Allow_inside_to_inside_and_log
resource "aws_security_group" "446:Allow_inside_to_inside_and_log" {
  provider = aws.region-dc

  name        = "446:Allow_inside_to_inside_and_log"
  description = "Allow any to any Inside Zone"
  vpc_id      = aws_vpc.vpc_uswest.id
  ingress {
    description = "Allow traffic from us-east-1"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
#Create SG for rule 75:IBAS_VPN_CHCS_TO_TeamTrack
resource "aws_security_group" "75:IBAS_VPN_CHCS_TO_TeamTrack" {
  provider = aws.region-dc

  name        = "75:IBAS_VPN_CHCS_TO_TeamTrack"
  description = "Allow CGN-ZONE to INSIDE-ZONE"
  vpc_id      = aws_vpc.vpc_uswest.id
  ingress {
    description = "Allow 443 from anywhere"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.94.4.0/23", 
"10.94.6.0/23", 
"10.94.8.0/23", 
"10.195.155.0/26",
"10.125.43.0/26",
"10.195.158.0/28",
"10.195.148.0/27",
"10.195.157.0/24",
"10.195.151.0/24",
"10.125.30.0/24",
"10.195.156.0/24",
"10.195.147.96/28",
"10.125.14.0/24",
"10.195.150.0/24",
"10.195.155.128/26",
"10.195.143.0/24",
"10.195.145.0/24",
"10.230.5.56/30",
"10.195.152.0/24",
"10.195.146.0/24",
"10.125.16.0/24",
"10.125.26.0/24",
"10.195.27.0/24",
"10.195.161.0/24",
"10.195.162.0/24",
"10.195.160.192/26",
"10.195.165.0/26",
"10.195.165.64/26",
"10.195.165.192/26",
"10.195.166.0/24",
"10.195.167.64/26",
"10.195.174.0/25",
"10.195.171.160/27",
"10.195.175.0/26",
"10.195.142.0/24",
"10.195.149.0/26",
"10.214.4.0/24"]
  }
  ingress {
    description = "Allow 80 from anywhere for redirection"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.94.4.0/23", 
"10.94.6.0/23", 
"10.94.8.0/23", 
"10.195.155.0/26",
"10.125.43.0/26",
"10.195.158.0/28",
"10.195.148.0/27",
"10.195.157.0/24",
"10.195.151.0/24",
"10.125.30.0/24",
"10.195.156.0/24",
"10.195.147.96/28",
"10.125.14.0/24",
"10.195.150.0/24",
"10.195.155.128/26",
"10.195.143.0/24",
"10.195.145.0/24",
"10.230.5.56/30",
"10.195.152.0/24",
"10.195.146.0/24",
"10.125.16.0/24",
"10.125.26.0/24",
"10.195.27.0/24",
"10.195.161.0/24",
"10.195.162.0/24",
"10.195.160.192/26",
"10.195.165.0/26",
"10.195.165.64/26",
"10.195.165.192/26",
"10.195.166.0/24",
"10.195.167.64/26",
"10.195.174.0/25",
"10.195.171.160/27",
"10.195.175.0/26",
"10.195.142.0/24",
"10.195.149.0/26",
"10.214.4.0/24"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
