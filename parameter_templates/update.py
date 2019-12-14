from jinja2 import Environment, FileSystemLoader
import json

file_loader = FileSystemLoader(".")
env = Environment(loader=file_loader)

template = env.get_template("original.json")

key_vals = {}

files = ["default.txt", "user_input.txt"]

for file in files:
    with open(file) as default_file:
        for line in default_file:
            key, val = line.strip().split(":")
            key_vals.update({key: val})
            
output = template.render(key_vals)

with open("../generated.parameters.json", 'w') as f:
    f.write(output)