# !/bin/bash
# Set variables
GITHUB_MAIN_SOURCE=git@github.com:gccunha015-dio
BACK_APP=./back/app
FRONT_APP=./front/app

# Download backend application
if [ -d "$BACK_APP" ]; then
  rm -fr $BACK_APP
fi
git clone $GITHUB_MAIN_SOURCE/to_do-api.git $BACK_APP
rm -fr $BACK_APP/.git

# Download frontend application
if [ -d "$FRONT_APP" ]; then
  rm -fr $FRONT_APP
fi
git clone $GITHUB_MAIN_SOURCE/to_do-front.git $FRONT_APP
rm -fr $FRONT_APP/.git

# Run Docker Compose
docker-compose up -d

# Remove app folders
rm -fr $FRONT_APP $BACK_APP