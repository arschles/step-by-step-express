#!/bin/bash

SUB_ID="5ea9ae04-3601-468a-ba84-cb7e82ae1e48"

az ad sp create-for-rbac \
    --name "gh-actions-sp" --sdk-auth --role contributor \
    --scopes /subscriptions/${SUB_ID}/resourceGroups/athens
