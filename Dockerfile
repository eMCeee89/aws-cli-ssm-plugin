FROM amazon/aws-cli

ARG ssm_url=https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm
ARG ssm_rpm=session-manager-plugin.rpm

RUN curl "${ssm_url}" -o "${ssm_rpm}" && rpm -i "${ssm_rpm}"; rm -f "${ssm_rpm}"
