MINICONDA_URL="http://repo.continuum.io/miniconda"
export CHOME=$HOME/miniconda
wget "${MINICONDA_URL}/${MINICONDA_FILE}"                           # download Miniconda install script
bash $MINICONDA_FILE -b -p $CHOME                                   # install Miniconda in $CHOME

export PATH=$HOME/miniconda/bin:$PATH                               # add conda to PATH

conda update --yes conda                                            # update conda
conda install --yes --channel shaktidb/label/dev shakti             # install shakti

source $CHOME/etc/profile.d/conda.sh                                # setup env for conda use
conda activate base                                                 # start base env (so QHOME is defined)
