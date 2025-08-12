# Netflix_dbt_Project

This project is basically to explore the dbt tool. The dataset used is the movielens dataset, where it has 20M movie ratings. It has different csv files such as movies, ratigs, tags,links, genome_scores.csv and genome_tags.csv.

All these files are loaded into the AWS S3 bucket manually by uploading the files. Once these files are loaded into the S3 bucket, the raw files are loaded directly into the snowflake in 3 steps: 
1. Create the stage and provide the credentials which has AWS_KEY_ID and AWS_SECRET_KEY. These credentials are created in AWS account by going to IAM--> USERS--> Create_user 
2. Create the table in snowflake.
3. Copy or load the data into the tables by using the "Copy Into" command in snowflake.
Also, a new role called "Transform" is created and assigned to the accountadmin role to avoid the data being exposed.

In the second stage, the raw data is taken and some basic transformations are applied and put into the "dev" schema in Snowflake. The raw files are stored in the "staging" schema. The transformations are done with the hlep of dbt tool.
