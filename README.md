

Follow the following steps as appropriate.



# 0. Clone this repo 
Clone this Repository into your home directory to get all the files needed:

```bash
cd
git clone git@github.molgen.mpg.de:ArndtLab/setup-remote-working.git
cat setup-remote-working/README.md
```



# 1. Install a new `bashrc`

```bash
cd 
mkdir -p ~/.saved_versions
mv ~/.bashrc ~/.saved_versions
cp setup-remote-working/files/bashrc ~/.bashrc
```

This provides:
- aliases
- options


# 2. Install a new `vimrc`

```
cd 
mkdir -p ~/.saved_versions
mv ~/.vimrc ~/.saved_versions
cp setup-remote-working/files/vimrc ~/.vimrc
```


# 3. Install a `htoprc`

```
mkdir -p ~/.config/htop
cp -f setup-remote-working/files/htoprc ~/.config/htop/
```

# 4. `julia`

To install julia runn the folling code 
on the command line:

```bash
JULIA_VERSION="1.6.0"
dir=${HOME}/bin/

# Install Julia
echo "Installing Julia $JULIA_VERSION to $dir"

JULIA_VER=`cut -d '.' -f -2 <<< "$JULIA_VERSION"`
BASE_URL="https://julialang-s3.julialang.org/bin/linux/x64"
URL="$BASE_URL/$JULIA_VER/julia-$JULIA_VERSION-linux-x86_64.tar.gz"
wget $URL -O /tmp/julia.tar.gz

mkdir -p $dir
cd $dir
tar -x -f /tmp/julia.tar.gz
rm -f /tmp/julia.tar.gz

ln -f -s julia-${JULIA_VERSION}/bin/julia julia
```



# 5. `jupyter-lab`

## 5.1 Installing

```bash
version=3.0.13

dir=${HOME}/bin/jupyterlab-${version}

python3 -m venv $dir
source ${dir}/bin/activate
pip install -U pip
pip install jupyterlab

ln -f -s ${dir} ${HOME}/bin/jupyterlab
```

## 5.2 Running


You may use this version of jupyter-lab typing 
```bash
source ~/bin/jupyterlab/bin/activate; jupyter lab --no-browser --ip=\*
```
There is also an alias `juplab` in the `.bashrc` for this command. 

After startup one has to copy and paste one of severla URLs into a browser. The URL looking like:
`http://hal105.molgen.mpg.de:8888/lab?token=e2f86f43fe89d2d6da2710359f0bbbeb4aaa1a54` is the one which should work 
in the institute network or using VPN from outside the institute.

## 5.3 Installing Kernels

Jupyter comes with a `python` kernel already installed.

To install a julia kernel in jupyter lab run the script from the command line:
```bash
setup-remote-working/files/install_julia_kernels.jl
```

For an R kernel run this code in a `R` session:
```R
install.packages("devtools")
devtools::install_github("IRkernel/IRkernel")
IRkernel::installspec()
```


# 10. Remove cloned files

You are done copying all the stuff provided in this repo. You may now remove the cloned version:

```bash
cd
rm -rf ~/setup-remote-working/
```

You may further customize all the copied files according to your needs and likes. Have fun!
