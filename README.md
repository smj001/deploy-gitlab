# What is this?
In This Project we try to deploy production ready GitLab with docker.

# How it works?
## step1:
Make sure that you already have `docker` and `docker-compose` on your system.
## step2:
Define a Domain for your server and config DNS Records for this server.
## step3:
Clone Project and run `./deploy.sh` then enter that configured domain and your email for certbot and some Password for your GitLab `root` user.

### note:
if you want to add any other gitlab.rb arguments to your GitLab you should add in `docker-compose.yaml` file before you run `./deploy.sh`. This is a link of all gitlab.rb argument that you can find [gitlab.rb list](https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/files/gitlab-config-template/gitlab.rb.template#modal-confirm-fork-webide)

## step4:
Now you can use your GitLab Platform in `https://YOURDOMAIN` and login with root user and your password.

Special Tanks for [Forge](https://www.howtoforge.com/how-to-install-gitlab-with-docker-on-ubuntu-2004/) 

ENJOY the world without HAMMALI!
