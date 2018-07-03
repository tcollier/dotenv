#!/usr/bin/env python3
import os

def is_linkable(file):
    if os.path.realpath(__file__) == file:
        # Don't attempt to link this setup file
        return False
    if os.path.basename(file)[0] == ".":
        # Don't attempt to link files that start with . in this repo (e.g. .git)
        return False

    return True

cwd = os.path.dirname(os.path.realpath(__file__))
home_dir = os.path.expanduser("~")

for rel_file in os.listdir(cwd):
    abs_file = os.path.join(cwd, rel_file)
    dot_file = os.path.join(home_dir, f".{rel_file}")

    if is_linkable(abs_file):
        # If the file is already linked, don't touch it
        if os.path.realpath(dot_file) != abs_file:
            print(f"Linking {rel_file}")
            os.rename(dot_file, f"{dot_file}.bak")
            os.symlink(abs_file, dot_file)
