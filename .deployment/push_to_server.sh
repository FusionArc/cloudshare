# LOCAL
ssh dave@cloudshare.space

# REMOTELY
mkdir ~/main
mkdir ~/main/src
mkdir ~/main/repo
mkdir ~/main/repo/cloudshare.git
mkdir ~/main/src/cloudshare

cd ~/main/repo/cloudshare.git/

git clone git@github.com:FusionArc/cloudshare.git . --bare

echo "git --work-tree=/main/src/cloudshare/ --git-dir=~/main/repo/cloudshare.git/ checkout -f" > ~/main/repo/cloudshare.git/hooks/post-receive
chmod +x ~/main/repo/cloudshare.git/hooks/post-receive

# LOCAL
git remote add server ssh://dave@cloudshare.space
