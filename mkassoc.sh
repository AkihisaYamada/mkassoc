#!/bin/sh
echo '(VAR x y z)'
echo '(RULES'

n=$1

for a in `seq 1 $n`; do
for b in `seq 1 $n`; do
for c in `seq 1 $n`; do
for d in `seq 1 $n`; do
echo "m_${a}_${c}_${d}(m_${a}_${b}_${c}(x,y),z) = m_${a}_${b}_${d}(x,m_${b}_${c}_${d}(y,z))"
done
done
done
done
echo ')'
