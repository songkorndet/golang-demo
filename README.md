# golang-demo

Task:
1. Create a Dockerfile for a given application

- Expected Output: Dockerfile

- Output: Please see "Dockerfile" in "01-02-app-no-ops" folder

2. Build the image using the Dockerfile and push to Docker Hub

- Expected Output: Build and push command and Docker Hub url

- Output: Please see "build-push-cmd.sh" file in "01-02-app-no-ops" folder

3. Create a Helm Chart to deploy the image from the previous step. The chart should have flexibility to allow Developer to adjust Values without having to rebuild the chart frequently

- Expected Output: Helm Chart with values file to deploy the application

- Output: Please see "03-helmchart" folder


4. Setup EKS cluster with the related resources to run EKS like VPC, Subnets, etc. by following EKS Best Practices using any IaC tools (Bonus point: use Terraform/Terragrunt)

- Expected Output: IaC code

- Output: Please see "04-terraform-setup-eks" folder

5. When the sample application deploys to EKS, they need to have access to
● S3 with permission GetObject, PutObject (S3 ARN:arn:aws:s3:::my-web-assets)
● SQS with permission; send, receive, delete message (SQS ARN:
arn:aws:sqs:ap-southeast-1:123456789123:lms-import-data)
● Condition: Avoid injecting the generated aws secret/access keys to the
application directly.

- Expected Output: Helm Chart, IaC code or anything to complete this task.

- Output: Please see "05-terraform-create-eks-secret" folder

6. Use ArgoCD to deploy this application. To follow GitOps practices, we prefer to have an ArgoCD application defined declaratively in a YAML file if possible.

- Expected output: Yaml files and instruction how to deploy the application or command line

- Output: Please see "06-argocd" folder and "deploy-cmd.sh" for deploy command


7. (Bonus point) Create CICD workflow using Github Actions to build and deploy application

- Expected output: Github Actions workflow (yml file) or diagram

- Output: Please see ".github/workflows" folder 
