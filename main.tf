# Terraformのバージョン
terraform {
  required_version = ">= 1.0.0"

  # `terraform.tfstate`をS3に保存する場合
  #
  # 基本的には必須でこの設定は行う。でないと、更新結果がだれかのオフラインにだけ存在するというAWS環境との乖離が生まれてしまう。
  # だけど、今回はサンプルなのでコメントアウトしておく。
  #
  # backend "s3" {
  #   region = "ap-northeast-1"
  #   bucket = "hogehoge"                     # 保存先のS3バケット名
  #   key    = "path/to/my/terraform.tfstate" # バケットのKey
  # }

}

# プロバイダーの設定
provider "aws" {
  region = "ap-northeast-1"
}

# S3バケットの作成
resource "aws_s3_bucket" "my_bucket" {
  bucket = "hogehoge-2024-08-27"
}
