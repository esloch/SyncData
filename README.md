## Syncdata was developed to automatically replicate the database by capturing the dumps and making it available as a container.

### Requirements:

#### Update and install essentials  
`` $ sudo apt update && sudo apt -y upgrade build-essential git make wget vim
``
##### Get Docker:
  *https: //docs.docker.com/engine/install/ubuntu/*
### Install Docker Compose:
  *https: //docs.docker.com/compose/install/*

### Make commands
<i> <b>build services to images docker</b></i></br>
`` $ make build ``  
<i> <b> Download the demo database </b></i></br>
`` $ make deploy``  
<i> <b> Download the demo database </b></i></br>
`` $ make exec ``  
<i> <b> Download the demo database </b></i></br>
`` $ make recreate_container ``  
<i> <b> Download the demo database </b></i></br>
`` $ make remove_image_dengue_db ``  
<i> <b> Download the demo database </b></i></br>
`` $ make make clean ``  
### Others Make commands
<i> <b> Download the demo database </b></i></br>
`` $ make download_demodb ``
