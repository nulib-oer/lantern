# Troubleshooting

## Make Textbook Errors

Running the `make` commands (such as `make textbook` or `make pdf`) might produce an error in the terminal that looks like this:

```
Makefile:90: *** multiple target patterns.  Stop.
```

This might be caused by a file extension containing a colon (`:`) character. Windows Subsystem for Linux (WSL) will sometimes create a copy of a file with `:Zone.Identifier` appended to the file extension if that file was downloaded from the internet. It's intended to be a security measure, but it breaks the builds for our textbook. You can fix this problem by removing these unwanted files from your project folder by running this command in the terminal:

```
find . -name '*:Zone.Identifier' -delete
```