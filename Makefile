.PHONY: update-resume

update-resume:
	cd static/uploads/resume && make && cp resume.pdf ..
