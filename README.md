There are 2 scripts:

init.sh set up the enviroment and calls the alert.sh, also adds alert.sh to cron

Under root user run the script (change the permission for execution if needed) with input arguments in order: 

./init.sh "Subject" "From(email)" "To(email)" "Also To(email)"


After that all the parameters you enter will be exported to env. variables, so you can change them later.

Script generates logs.txt file and DO_RESPONSE.txt file, DO_RESPONSE file will be deleted.
