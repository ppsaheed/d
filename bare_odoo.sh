apt update
apt upgrade
apt install -y --no-install-recommends ca-certificates curl dirmngr fonts-noto-cjk:arm64 gnupg libssl-dev node-less npm python3-num2words python3-pdfminer python3-pip python3-phonenumbers python3-pyldap python3-qrcode python3-renderpm python3-setuptools python3-slugify python3-vobject python3-watchdog python3-xlrd python3-xlwt xz-utils && sudo curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.bullseye_arm64.deb && sudo apt install -y --no-install-recommends ./wkhtmltox.deb
echo 'deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client
npm install -g rtlcss
curl -o odoo0.deb -sSL http://nightly.odoo.com/16.0/nightly/deb/odoo_16.0.20230109_all.deb    && apt-get update     && apt-get -y install --no-install-recommends ./odoo0.deb
curl -o odoo.deb -sSL http://nightly.odoo.com/16.0/nightly/deb/odoo_16.0.20230109_all.deb && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb
