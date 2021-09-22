help:
	@echo

dev:
	@terraform init -backend-config=backend/dev.tfvars -no-color
	@terraform apply -auto-approve -var-file=env/dev.tfvars -no-color

prod:
	@terraform init -backend-config=backend/prod.tfvars -no-color
	@terraform apply -auto-approve -var-file=env/prod.tfvars -no-color

clean:
	rm -rf .terraform

dev-destroy:
	@terraform init -backend-config=backend/dev.tfvars -no-color
	@terraform destroy -auto-approve -var-file=env/dev.tfvars -no-color
