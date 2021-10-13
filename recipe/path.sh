if [ -d /opt/kaldi ]; then
    export KALDI_ROOT=/opt/kaldi
else
    export KALDI_ROOT="$(realpath ${PWD}/../../..)"
fi

[ -f $KALDI_ROOT/tools/env.sh ] && . $KALDI_ROOT/tools/env.sh
export PATH=$PWD/utils/:$KALDI_ROOT/tools/openfst/bin:$PWD:$PATH:$KALDI_ROOT/tools/sph2pipe_v2.5
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh

# Add for mkgraph_lookahead.sh
export LD_LIBRARY_PATH="${KALDI_ROOT}/tools/openfst/lib/fst:${LD_LIBRARY_PATH}"

export LC_ALL=C
