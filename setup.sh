
mc alias set arralyze  http://localhost:9001/api/v1/service-account-credentials arralyze arralyze_ml --api "s3v4" --path "auto"

 /usr/bin/mc config host add s3 http://s3:9000 minio_user minio_pwd --api S3v4;
      [[ ! -z "`/usr/bin/mc ls s3 | grep challenge`" ]] || /usr/bin/mc mb s3/mlflow;
      /usr/bin/mc policy download s3/mlflow;