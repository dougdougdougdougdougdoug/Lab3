report : games_report.awk
# Awk command to execute code from file and read data from .csv
	@awk -f games_report.awk games_data.csv > simple_report.txt




# > test123.txt
