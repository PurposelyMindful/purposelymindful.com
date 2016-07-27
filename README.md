#PurposelyMindful.com

## Site Build Requirements
 1. jekyll 3.2.0.pre.beta1
 1. s3_website `gem install s3_website`
 1. Amazon AWS account with S3 and CloudFront distributions

## Build Commands

* ./gradlew clean # Clean up the target directlry
* ./gradlew build # Build the static site
* ./gradlew serve # Local development (http://localhost:4000)
* ./gradlew deployStaging # Deploy to your S3 bucket for staging.

## Environment variables

* awsAccessDeployKey - IAM User AccessKey
* awsSecretDeployKey - IAM User SecretKey
* awsProductionCFID  - CloudFront ID for Production
* awsStagingCFID     - CloudFront ID for Stating

* awsStagingBucket   - S3 bucket for Staging
* awsProductionBucket  - S3 bucket for Production
