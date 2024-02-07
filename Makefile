#Makefile
default:
	cat: Makefile
	makefile_setup_job:
		nano synthetic_data.csv
		wget -O synthetic_data.csv https://gist.github.com/Niarfe/25100a860cbb660150a3fec87378d8ac
	plot_job_squre_wave:
		gnuplot -e "set datafile separator ','; set term png; set output 'square_wave.png'; plot 'synthetic_data.csv' using 1:2 with lines"
	plot_job_fibonachi:
		gnuplot -e "set datafile separator ','; set term png; set output 'fibonachi.png'; plot 'synthetic_data.csv' using 1:3 with lines"
	clean:
		rm -f synthetic_data.csv square_wave.png fibonachi.png
	.PHONY: all_images
	all_images: square_wave.png fibonachi.png

