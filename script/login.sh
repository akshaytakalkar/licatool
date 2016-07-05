#!/bin/bash

if [ $user_name == 'server' ];then
	
	if [ $password == 'redhat' ];then
	        
		xcowsay Login Successfully!!!!!!!!
		gtkdialog --glade-xml main.glade --program=main_win;
		
	else

	        kdialog --error "Oops something going wrong please check username or password"

	fi
elif [ $user_name == 'client' ]; then

	if [ $password == 'redhat' ];then
                
		xcowsay Login Successfully!!!!!!!!!
                gtkdialog --glade-xml client_portal.glade --program=window1;


        else

                kdialog --error "Oops something going wrong please check username or password"

        fi

else

	kdialog --error "Oops something going wrong please check username or password"

fi

