# Define the names/tags of the container
#!BuildTag: tumbleweed-osc:latest

FROM opensuse/tumbleweed:latest

# Define labels according to https://en.opensuse.org/Building_derived_containers
# labelprefix=org.opensuse.example
PREFIXEDLABEL org.opensuse.base.title="Tools + osc + Tumbleweed Container"
PREFIXEDLABEL org.opensuse.base.description="Tumbleweed container base with tools to manage OBS/IBS releases"
PREFIXEDLABEL org.opensuse.base.disturl="%DISTURL%"
PREFIXEDLABEL org.opensuse.base.created="%BUILDTIME%"

RUN zypper --non-interactive in --force-resolution -fy \
    bat \
    bind-utils \
    build \
    curl \
    dos2unix \
    fd \
    fzf \
    fzf-bash-completion \
    gdb \
    git \
    git-delta \
    gnu_parallel \
    iputils \
    jq \
    lnav \
    mktemp \
    ncdu \
    obs-service-source_validator \
    osc \
    python3-solv \
    python311-black \
    python311-pylint \
    python311-rpmfile \
    ripgrep \
    rpm-build \
    rsync \
    sshfs \
    tealdeer \
    tig \
    tmux \
    vgrep \
    vim \
    vim-data \
    wget \
    yq \
    && zypper clean -a
