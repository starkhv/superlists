SITE_NAME = ''

sed "s/SITENAME/$SITE_NAME/g" source/deploy_tools/nginx.template.conf | sudo tee /etc/nginx/sites-available/$SITE_NAME

sudo ln -s /etc/nginx/sites-available/$SITE_NAME /etc/nginx/sites-enabled/$SITE_NAME

sed "s/SITENAME/$SITE_NAME/g" source/deploy_tools/gunicorn-systemd.template.service | sudo tee /etc/systemd/system/gunicorn-$SITE_NAME.service

sudo systemctl daemon-reload
sudo systemctl reload nginx
sudo systemctl enable gunicorn-$SITE_NAME
sudo systemctl start gunicorn-$SITE_NAME
