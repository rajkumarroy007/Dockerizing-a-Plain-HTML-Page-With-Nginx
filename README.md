# Dockerizing-a-Plain-HTML-Page-With-Nginx
The objective of this assignment is to familiarize yourself with Docker and containerization by Dockerizing a simple HTML page using Nginx as the web server.


<li>   Step 1: Create the HTML Page </li>
<li> Create a file named index.html with the following content:  </li>
<li> check index.html file for code details </li>
<li> Step 2: Nginx Configuration (file check nginx.conf for more details)   </li>
<li>  Step 3: Create the Dockerfile (file check Dockerfile for more details)  </li>
<li> Build the Docker Image  </li>
<li>   Step 4: Build the Docker Image </li>
<li>To build the Docker image, navigate to the directory containing your Dockerfile, index.html, and nginx.conf files and run the following command:  </li>
<li> docker build -t your-username/nginx-dockerized-html .  </li>
<li>  aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com </li>
<li>  Step 5: Push the Image to AWS ECR </li>
<li>Create a repository on ECR: Go to AWS ECR, create a new public repository for your Docker image.</li>
<li>Authenticate Docker with ECR: Use the following command to authenticate Docker to ECR (replace <region> with your AWS region):</li>
<li> aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com  </li>
<li> Tag your Docker image: Tag your local image to match the repository you created:  </li>
<li> docker tag your-username/nginx-dockerized-html:latest <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<your-repo-name>:latest  </li>
<li> Push the image to ECR:  </li>
<li>  docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<your-repo-name>:latest </li>
<li> docker run -d -p 80:80 your-username/nginx-dockerized-html  </li>
  <li> Push to AWS ECR  </li>
<li>  aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com</li>
<li> Push to AWS ECR  </li>
<li>Authenticate Docker with ECR:</li>
<li> aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com </li>
<li> Tag the Docker image: </li>
<li>docker tag your-username/nginx-dockerized-html:latest <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<your-repo-name>:latest  </li>
<li> Push the image to ECR: </li>
<li>docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<your-repo-name>:latest  </li>






![Amazon-ECR-Image-rajkumar-docker-nginx](https://github.com/user-attachments/assets/988bdae2-5a1a-434d-97f0-65bbc0a859eb)

![docker image](https://github.com/user-attachments/assets/a68ae473-f282-4e1b-ac6f-7fd94b366461)

![ECR image push](https://github.com/user-attachments/assets/67bb3f03-68dd-4c35-8809-872e4970c713)

![ECR login successful](https://github.com/user-attachments/assets/ee2f2cd0-10db-4acc-9469-5394b7f83ce4)

![ECR tage and push](https://github.com/user-attachments/assets/1220555d-8f37-4ea3-b65c-60de20615394)
