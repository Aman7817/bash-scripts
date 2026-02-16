#!/bin/bash

check_node() {
	if command -v node &> /dev/null;
	then
		echo " Node.js: $(node --version)"
	else
		echo " Node.js not found"
	fi
}

check_git() {
	if command -v git &> /dev/null;
	then
		echo " Git: $(git --version)"
	else
		echo " Git is not found"
	fi
}

check_docker() {
	if command -v docker &> /dev/null;
	then
		echo " Docker: $(docker --version)"
	else
		echo " Docker not found"
	fi
}

check_python() {
	if command -v python &> /dev/null;
	then
		echo " Python: $(python3 --version)"
	else
		echo " Python Not found "
	fi
}

check_npm() {
	if command -v npm  &> /dev/null;
	then 	
		echo " NPM: $(npm --version) "
	else 	
		echo " NPM not found "
	fi
}


check_node
check_git
check_docker
check_python
check_npm

