plot-%.png: build/%.dat build/plot.py
		cd build && ./plot.py -i $*.dat -o $@

build/paper.pdf: build/paper.tex plot-data.png
		cd build && pdflatex paper.tex

.PHONY: clean
clean:
		cd build && rm *.pdf *.aux *.log *.png
		#git ls-files -o | xargs rm -f
