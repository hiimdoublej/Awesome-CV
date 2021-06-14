.PHONY: files

CC = xelatex
FILES_DIR = files
# RESUME_DIR = examples/resume
# RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_DIR = examples/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, coverletter cv resume, $x.pdf)

# resume.pdf: $(FILES_DIR)/resume.tex $(RESUME_SRCS)
# 	$(CC) -output-directory=$(FILES_DIR) $<

cv: $(FILES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(FILES_DIR) $<

# coverletter.pdf: $(FILES_DIR)/coverletter.tex
# 	$(CC) -output-directory=$(FILES_DIR) $<

clean:
	rm -rf $(FILES_DIR)/*.pdf
