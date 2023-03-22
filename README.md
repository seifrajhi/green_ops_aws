# GreenOps on AWS

## Introduction
Purpose of this project is to help cloud practioners and FinOps teams to continuously measure and improve their carbon footprint for workloads deployed on AWS.
With Cloud Carbon Footprint on AWS, you get:
- templates to deploy the Cloud Carbon Footprint software on AWS infrastructure
- workbooks to configure the flow of information from AWS accounts managed in Control Tower

## AWS EC2 setup
To install CCF on EC2 with CUR S3 bucket please follow this [workbook](./Manual_Installation.md).
In order to synchronize data from CUR bucket and CCF bucket a [cloudformation](https://docs.aws.amazon.com/cur/latest/userguide/use-athena-cf.html) is required.

## Reference
- [Cloud Carbon Footprint](https://www.cloudcarbonfootprint.org/) is an open-source application that estimates the energy (kilowatt hours) and carbon emissions (metric tons CO2e) of public cloud provider utilization.
