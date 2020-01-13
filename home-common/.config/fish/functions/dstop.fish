function dstop --description 'alias dstop=docker stop (docker ps --format "{{.ID}}")'
	docker stop (docker ps --format "{{.ID}}") $argv;
end
