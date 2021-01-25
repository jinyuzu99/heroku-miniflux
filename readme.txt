must deploy in main branch

deploy with button
	https://heroku.com/deploy

deploy with cli
	./heroku-cli.sh

enable auto update
	1. deploy app with button or cli
	2. fork this repo on github
	3. enable github action
	4. go to heroku dashboard, then choose your app
	5. set 'deployment method' to github
	6. select your repo, 'main' branch
	7. click 'enable automatic deploy'
