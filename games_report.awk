
# Begin section
BEGIN {
FS = ",";


titleArray[0] = "";
maxArray[0] = 0;
gameCount[4]= 0;
totalSold[4] = 0.0;

}


# Loop section
{


if($3 == "PS" && $11 != "Global_Sales"){
gameCount[0] = gameCount[0] + 1;
totalSold[0] = totalSold[0] + $11;

	if($11> maxArray[0] && $11 != "Global_Sales"){
		titleArray[0] = $2;
		maxArray[0] = $11;
	}
}

if($3 == "PS2" && $11 != "Global_Sales"){
gameCount[1] = gameCount[1] + 1;
totalSold[1] = totalSold[1] + $11;

	if($11> maxArray[1] && $11 != "Global_Sales"){
		titleArray[1] = $2;
		maxArray[1] = $11;
	}
}

if($3 == "PS3" && $11 != "Global_Sales"){
gameCount[2] = gameCount[2] + 1;
totalSold[2] = totalSold[2] + $11;

	if($11> maxArray[2] && $11 != "Global_Sales"){
		titleArray[2] = $2;
		maxArray[2] = $11;
	}
}

if($3 == "PS4" && $11 != "Global_Sales"){
gameCount[3] = gameCount[3] + 1;
totalSold[3] = totalSold[3] + $11;

	if($11> maxArray[3] && $11 != "Global_Sales"){
		titleArray[3] = $2;
		maxArray[3] = $11;
	}
}


}


# End section
END{

    for (i = 0; i <= 3; i++){
        printf "The best selling title for the PS%d was %s and sold %.2f million units  \nThis console had %d unique games and had sold a combined total of %.2f million units.\n\n\n\n\n\n", i+1, titleArray[i], maxArray[i], gameCount[i], totalSold[i];

	}


}