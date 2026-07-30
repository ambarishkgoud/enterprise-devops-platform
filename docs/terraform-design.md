1. Why do we create reusable Terraform modules?

We don't have to write the same code everytime we need to use it. Instead we can use the modules to 
call that particular script/code

2. Why shouldn't all Terraform code live in one main.tf?

It will be very complex keeping all the code in one file. If we want to make any changes to a 1 singe 
line of code we need to go through the entire file

3. Why do we separate dev, qa, stage, and prod?

For easier process and to avoid confusion. One cannot simply deploy his/her code directly into prod, 
it can break things. Firstly we need to work on dev env test our code. if that works we need to 
perform the load testing on qa/stage env. If everything goes well then we need to deploy our code 
into prod

4. Why is Terraform state important?

This is the file which keeps track of our deployed configs/Infra. If we doesn't maintain the state 
file we might see drift.

5. If two engineers run Terraform simultaneously, what could happen?

As per my knowledge the terraform state file gets locked to one user and the other user cannot run 
terraform apply command until the state file is unlocked to use

6. How should secrets such as database passwords be managed?

We can use Hashicorp vault to store our secrets or similar tools

7. If you joined a new company, how would you organize Terraform repositories?

Would create separate repos for each module just to avoid confusion.

Imagine the company owns three AWS accounts:
Development
Testing
Production
Would you:

I would choose One repository for all three accounts and maintain separate folder structures for each 
env
