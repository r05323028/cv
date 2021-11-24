.PHONY: build

CC = xelatex
BUILD_DIR = build
RESUME_DIR = build/resume
CV_DIR = build/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv.pdf: $(BUILD_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)/*.pdf
