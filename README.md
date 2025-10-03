## created dockerfile and run the below command for build docker images

**basic syntax:** `docker build -t image-name:version .`

**eg:** `docker build -t my-jenkins:v1.`

And run the container using `docker run`:

        ```
            docker run -d \
        >   --name jenkins \
        >   -p 8080:8080 \
        >   -p 50000:50000 \
        >   -v jenkins_data:/var/jenkins_home \
        >   my-jenkins
        ```

Use `docker run` in your ***terminal*** after building the image.

Define volumes and exposed ports in the Dockerfile for clarity, not for execution.


## 🔧 Step-by-Step: Change Jenkins URL

### 1️⃣ Update Jenkins Configuration Once Jenkins is running:

- Go to **Manage Jenkins → Configure System**

- Scroll to **Jenkins Location**

- Change the *Jenkins URL* from `http://localhost:8080` to your desired URL, e.g.: ``http://yourdomain.com:8080``

    This affects links Jenkins generates (e.g., in emails or webhooks)

### 2️⃣ Use a Custom Domain or IP

***Option A: Use Your Machine’s IP***
- Find your IP: `ip addr show`/`ip addr show eth0`

- Access Jenkins via: `http://<your-ip>:8080`

***Option B: Use a Custom Domain***
- Register a domain (e.g., `jenkins.example.com`)

- Point it to your server’s IP using DNS settings

- Optional: Add an entry to your local `/etc/hosts` file for testing:
  `eg: 127.0.0.1 jenkins.local`
