Nagios and Hadoop
**********************************************

This file would provide instructions to install 
copy the below artifacts of the custom implementation.

**********************************************
Pre-requisites

1) Centos 7 minimal version installed in virtual machine with package like wget 
and dos2unix installed.

2) Hadoop installed in same virtual machine which should to be up and running.

**********************************************

Steps for Installation

Nagios and NRPE:
**********************************************

See section 5 for installation commands in the shared documentation

Configuration and Hadoop custom monitoring Scripts Installation.
**********************************************

Step 1 - open https://transfer.sh

Step 2 - Upload the scripts provided in Artifacts folder to this website and it will provide url

Step 3 - go to centos virtual machine, cd /usr/local/nagios/libexec
 and use wget <url> to downlaod script.

Step 4 - use dos2unix <script_name>

Do for all the scripts or zip the file and upload to website, do follow same steps as above
after unzip of the file.

Step 5 - go to cd /usr/local/nagios/etc/objects
*** Use these commands to append the custom configuration ***
mv localhost.cfg localhost.cfg_bkp

*** Upload and download localhost.cfg file with above steps ***
mv localhost.cfg localhost_custom.cfg

*** Restore default configuration ***
cp localhost.cfg_bkp localhost.cfg 

*** Append custom configuration to deafult cfg ****

cat localhost.cfg >> localhost_custom.cfg

Step 6 - go to cd /usr/local/nagios/etc/objects
*** Use these commands to append the custom configuration ***
mv commands.cfg commands.cfg_bkp

*** Upload and download commands.cfg file with above steps ***
mv commands.cfg commands_custom.cfg

*** Restore default configuration ***
cp commands.cfg_bkp commands.cfg 

*** Append custom configuration to deafult cfg ****

cat commands.cfg >> commands_custom.cfg


Step 7 - go to cd /usr/local/nagios/etc/
*** Use these nrpe to append the custom configuration ***
mv nrpe.cfg nrpe.cfg_bkp

*** Upload and download nrpe.cfg file with above steps ***
mv nrpe.cfg nrpe_custom.cfg

*** Restore default configuration ***
cp nrpe.cfg_bkp nrpe.cfg 

*** Append custom configuration to deafult cfg ****

cat nrpe.cfg >> nrpe_custom.cfg

Step 8 - Restart all services

systemctl restart nagios
systemctl restart httpd
systemctl restart nrpe

Please note - Current configuration use Nagios core, if nrpe required
comment nagios core commands and uncomments nrpe commands.


****************************************************
Read Section 5,6,7 for details of above installation.


 


