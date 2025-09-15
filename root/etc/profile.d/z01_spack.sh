export SPACK_ROOT=/opt/spack
export SPACK_PYTHON=/usr/bin/python3
if [ -z "${ORIG_MODULEPATH+x}" ]; then
    export ORIG_MODULEPATH="$MODULEPATH"
fi
source ${SPACK_ROOT}/share/spack/setup-env.sh
export MODULEPATH="$ORIG_MODULEPATH"
