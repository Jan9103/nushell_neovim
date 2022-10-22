export alias vim = nvim

# TODO:
# - "+" commands
# - "--" (only filenames after this)
# - "-o[N]" / "-O[N]" / "-p[N]"
# - "-r" and "-r: path" exist
# - "-V[N][file]"
# - "--remote[-subcommand]"
export extern nvim [
	--cmd: string  # Execute <cmd> before any config
	-c: string  # Execute <cmd> after config and first file
	-b  # Binary mode
	-d  # Diff mode
	-e  # Ex mode
	-E  # Ex mode
	#-es # silent (batch) mode
	#-Es # silent (batch) mode
	--help(-h)
	-i: path # use this shada file
	-m  # modifications (writing files) not allowed
	-M  # modifications in text not allowed
	-n  # no swap file, use memory only
	-L  # list swap files
	# -r  # list swap files
	-r: path # recover edit state for this file
	-R  # read only mode
	-S: string # Source <session> after loading the first file
	-s: string # Read Normal mode commands from <scriptin>
	-u: path   # Use this config file
	--version(-v)
	--api-info # Write msgpack-encoded API metadata to stdout
	--embed    # Use stdin/stdout as a msgpack-rpc channel
	--headless # Don't start a user interface
	--listen: string # Serve RPC API from this address
	--noplugin       # Don't load plugins
	--server: string # Specify RPC server to send commands to
	--startuptime: path # Write startup timing messages to <file>
	...path: path
]
