provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
  version    = "~> 2.5"
}

module "file-storage" {
  source      = "file-storage"
  bucket_name = "0987656789765trghgfdrg-app-file-storage"
}

module "data-storage" {
  source        = "data-storage"
  database_name = "df3245vwwd324appdatastorage"
}
