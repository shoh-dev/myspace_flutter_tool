watch:
	dart run build_runner watch --delete-conflicting-outputs

# Write a command that takes 1 argument, the name of the file to format (ex: pub_remove --package=flutter)
pub_remove:
	flutter pub remove ${package}
