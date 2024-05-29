# tf-prompt

# Senior Cloud DevOps Engineer (flex-hybrid) Terraform Prompt

## Objective

You are a terraform developer building a new module to help with naming resources deployed within the cloud environment. You will have two inputs to this module identifying a "base_name" and "resource_type" with which you will have to evaluate and generate a "resource_name" as an output. The "resource_name" that you generate should follow these rules:

1. You should setup the "resource_type" to only allow the values of "virtual_machine", "key_vault", and "storage_account"
2. If the resource_type is "virtual_machine" you should take the "base_name" and append "vm-" to the front of it and "-00" to the back. If the base name and and values you're appending are greater than 15 characters you should truncate the "base_name" only in order to be 15 characters when combined with your additional characters. Note that the base_name can be greater than 15 characters.
3. If the resource_type is "key_vault" you should append "kv-" to the front of "base_name" and then set all characters to lower case.
4. If the resource_type is "storage_account" you should append "sa" to the front of "base_name and then remove all "-" from the name and then set all characters to lower case.
5. You should also build a secondary module that calls your naming module. This parent module should intake a map which has the "base_name" as the key and the "resource_type" as the value. It should present each key/value pair in this map to your naming module.
6. The Parent Module should reflect all the outputs of the child module and allow for additional outputs if the child module outputs are expanded in the future without further modification to the parent.
7. Please write these modules as you would for a production environment following best practices and structure that makes it easy to share with other team members and allows them to use it quickly after receiving it.
8. You can reference the naming module either through a local path or a github URL as long as the entire package can be run from a computer with public internet access.

All projects must be turned in via a [GitHub.com](http://GitHub.com) link to the repository. No AI or any other generative code is allowed. All submissions must contain your code and can not originate from any other source; i.e. StackOverflow, Reddit, Discord, etc.