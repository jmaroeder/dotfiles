# Defined in - @ line 1
function uuidgen --description 'alias uuidgen=uuidgen | tr "[:upper:]" "[:lower:]"'
	command uuidgen | tr "[:upper:]" "[:lower:]" $argv;
end
