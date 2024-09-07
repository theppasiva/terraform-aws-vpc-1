resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnemes
  tags = merge (
    var.common_tags, 
    var.vpc_tags,
    {
        Name= local.name

    }
  )
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = merge (
    var.common_tags, 
    var.igw-tags,
    {
        Name= local.name

    }
  )

}