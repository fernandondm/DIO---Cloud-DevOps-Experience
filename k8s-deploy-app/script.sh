docker build -t hueland/projeto-backend:0.1 backend/.
docker build -t huland/projeto-database:0.1 databse/.

docker push hueland/projeto-backend:0.1
docker push hueland/projeto-database:0.1

kubctl apply -f ./services.yml

kubctl apply -f ./deployment.yml
