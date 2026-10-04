# Terraform VPC

This folder is intended to be the GitHub repository root. GitHub discovers
the pipeline at `.github/workflows/terraform.yml` relative to the repository
root. If this folder is committed as a `terraform/` subfolder of a larger
repository, move the workflow to that repository's `.github/workflows/`, set
`defaults.run.working-directory` to `terraform`, and prefix the workflow's
Terraform path filters with `terraform/`.

## GitHub Actions Setup

1. In the repository, open Settings > Secrets and variables > Actions.
2. Add repository secrets named `AWS_ACCESS_KEY_ID` and
   `AWS_SECRET_ACCESS_KEY` using the AWS credentials for this environment.
3. Commit the Terraform files, `.terraform.lock.hcl`, and the workflow.

The AWS credentials must have access to the existing S3 backend bucket
`terraform-backend-ms`, state key `backup/terraform.tfstate`, and the VPC
and subnet resources in `us-east-1`. The backend bucket must already exist.
Applying also requires permission to update the state object in S3.

## Running the Pipeline

Pushes to `main` and manual workflow runs check out the code, run
`terraform plan`, and then run `terraform apply` with the saved plan.

The workflow uses Terraform 1.14.6 and the provider version recorded in
`.terraform.lock.hcl`.
