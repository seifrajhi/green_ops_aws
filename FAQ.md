# Troubleshooting

## Missing data in Athena table
Sometimes data is not available for CCF. In order to remediate this you need to check if some month are missing in Athena DB :
- Click on AWS Glue console https://console.aws.amazon.com/glue/
- Go on Tables, choose the table used by CCF.
- Click on Partitions, if specific months are missing follow the next steps.

To update your latest partitions/months :
- Open the Athena console at https://console.aws.amazon.com/athena/.
- Choose Query Editor
- In settings validate that the Query result location is set to s3://storm-reply-fr-cur/
- Choose the ... next to table cost_and_usage_report_with_details
- Choose Load Partitions.

After that, you need to remove the current data cache on CCF :
- Connect to instance
- cd /cloud-carbon-footprint/packages/api/
- rename or delete the file estimates.cache.day.json

## Service not working

- Connect over SSM to machine
- verify that nginx is running : ```systemctl status nginx``` , if not, start it with ```systemctl start nginx```
- verify that nodejs is started : ```ps | grep node```, if not go to ccft directory and start yarn ```cd /cloud-carbon-footprint && yarn start &```
