# -*- dockerfile -*-
FROM mbodenhamer/debian-python
MAINTAINER {{maintainer_name}} <{{maintainer_email}}>

COPY setup/ /setup
RUN depman -f /setup/requirements.yml satisfy all
RUN yatr -f /setup/yatrfile.yml install

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
