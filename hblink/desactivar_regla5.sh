#!/bin/bash

                        sudo sed -i "522c ENABLED: False" /opt/HBlink3/hblink.cfg # OJO CAMBIAR POR SU NUMERO ********

                        line70=$(awk "NR==70" /opt/HBlink3/rules.py)
                        sudo sed -i "70c #$line70" /opt/HBlink3/rules.py

                        line71=$(awk "NR==71" /opt/HBlink3/rules.py)
                        sudo sed -i "71c #$line71" /opt/HBlink3/rules.py

                        line72=$(awk "NR==72" /opt/HBlink3/rules.py)
                        sudo sed -i "72c #$line72" /opt/HBlink3/rules.py

                        line73=$(awk "NR==73" /opt/HBlink3/rules.py)
                        sudo sed -i "73c #$line73" /opt/HBlink3/rules.py

                        sudo sed -i "5c REGLA5=OFF" /var/www/html/hblink/status_reglas.cfg

                        sudo systemctl restart hbmon
                        sudo systemctl restart hblink

                      