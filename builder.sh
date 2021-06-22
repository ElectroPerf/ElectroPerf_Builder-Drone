export DV=X00TD-P

if [ $DV = "X01BD-P" ]
then
	bash X01BD-P.sh

elif [ $DV = "X01BD-R" ]
then
	bash X01BD-R.sh

elif [ $DV = "X00TD-P" ]
then
	bash X00TD-P.sh

elif [ $DV = "X00TD-R" ]
then
	bash X00TD-R.sh
fi
