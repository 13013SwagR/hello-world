#!/bin/env python3
import re
import sys

if len(sys.argv) > 1:
    artifact_name = sys.argv[1]
else:
    artifact_name = "test_build"

readme = open("README.md", "rt").read()
interface = readme.split("```")[1].split("\n",1)[1]

gist_filename = f"{artifact_name}.yaml"
gist_file = open(gist_filename, "w")
gist_file.write(interface)

print(gist_filename)