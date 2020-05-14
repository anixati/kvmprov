terraTHISDIR := $(notdir $(CURDIR))
PROJECT := daddario
a:  terraform apply -auto-approve
i:  terraform init
p:  terraform plan
## recreate terraform resources
r:  destroy apply
d:  terraform destroy -auto-approve
## create public/private keypair for ssh
kp:  @echo "THIDIR=$(THISDIR)"
  ssh-keygen -t a -b 4096 -f id_rsa -C $(PROJECT) -N "" -q
md:  terraform refresh && terraform output ips