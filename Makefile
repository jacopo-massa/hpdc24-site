INSTALL_PATH = "/home/hrishirt/git/iscls/iscls.github.io/docs/"

setup:
	bundle install

serve:
	bundle exec jekyll serve --livereload

build:
	export JEKYLL_ENV="production" && bundle exec jekyll build

publish: build
	rclone sync -v _site/ HPDC2024:/htdocs/hpdc/2024 --exclude "hpdc_privacy_policy.pdf"
