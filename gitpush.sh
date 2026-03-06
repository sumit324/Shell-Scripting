#!/bin/bash

echo "Enter commit message:"
read msg

git add #filename.txt
git commit -m "$msg"
git push origin main

echo "Code pushed successfully!"
