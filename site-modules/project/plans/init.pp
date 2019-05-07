# This is an example of how a plan would be defined in your module.
# Example execution: bolt plan run project
plan project() {
  # Run a command on localhost and return the result
  return run_command('echo hello', 'localhost')
}