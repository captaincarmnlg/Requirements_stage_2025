build:
	(for file in ./doc/*.md; do cat "$$file"; echo -e "\n"; done) | pandoc -f markdown+rebase_relative_paths --pdf-engine=xelatex -o "./requirements.pdf" --filter pandoc-plantuml
