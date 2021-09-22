help:
	@echo

dev:
	@terraform init -backend-config=backend/dev.tfvars
	@terraform apply -auto-approve -var-file=env/dev.tfvars