<?php 
 exec("sudo systemctl restart hbmon");
 exec("sudo systemctl restart hblink");
header("Location:http://94.177.250.183:7183");	
