
# Ensure AWS_BUCKET environment variable is set
if [ -z "$AWS_BUCKET" ]; then
  echo "AWS_BUCKET environment variable is not set."
  exit 1
fi

# Now you can use the AWS_BUCKET environment variable in your commands
echo "Deploying to AWS Bucket: $AWS_BUCKET"

aws s3 cp --recursive --acl public-read ./www s3://$AWS_BUCKET/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://$AWS_BUCKET/