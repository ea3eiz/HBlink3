<?php 
 exec("sudo systemctl restart hbmon");
 exec("sudo systemctl restart hblink");
header("Location:http://93.186.251.36:7136");	
