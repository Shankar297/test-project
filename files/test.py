print("This is test file")

import os
from dotenv import load_dotenv

load_dotenv()


branch_name = os.environ.get('BRANCH')
ecr = os.environ.get('ECR_REPO')
eks = os.environ.get('ECR_REGISTRY')
cluster = os.environ.get('CLUSTER')

print(branch_name)
print(ecr)
print(eks)
print(cluster)