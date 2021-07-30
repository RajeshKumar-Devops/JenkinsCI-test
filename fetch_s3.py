import boto3
s3 = boto3.resource("s3")
srcFileName="abc.txt"
destFileName="s3_abc.txt"
bucketName="mybucket001"
k = Key(bucket,srcFileName)
k.get_contents_to_filename(destFileName)
