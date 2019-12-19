from jinja2 import Environment, FileSystemLoader
import json

dir = "parameter_templates"
file_loader = FileSystemLoader(dir)
env = Environment(loader=file_loader)

template = env.get_template("original.json")

key_vals = {}

files = [f"{dir}/default.txt", f"{dir}/user_input.txt"]

for file in files:
    with open(file) as f:
        for line in f:
            key, val = line.strip().split(":")
            key_vals.update({key: val})
            
output = template.render(key_vals)

with open("generated.parameters.json", 'w') as f:
    f.write(output)