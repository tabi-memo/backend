#!/usr/bin/env bash

SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
cd ${SOURCE_DIR}

export $(cat ${SOURCE_DIR}/.env | grep -v ^\#)

pnpm supabase db reset --debug
pnpm ts-node supabase/seed/index.ts
