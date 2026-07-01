#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd "$(dirname "$0")/.." && pwd)
fail=0
for n in $(seq 3 50); do
  dir="$ROOT/generated_powerisa_qemu/chunk$n"
  elf="$dir/ppc_chunk_$n.elf"
  powerpc-linux-gnu-gcc -O0 -static -fno-pic -no-pie -o "$elf" "$dir/driver_$n.c" "$dir/case_$n.S"
  if qemu-ppc "$elf"; then
    :
  else
    fail=1
  fi
done
exit $fail
