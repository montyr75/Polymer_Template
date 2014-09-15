Polymer Dart Template
======
*Tested with Polymer version:* 0.14.0+1
### To Use
1. Create a new folder for your app in your Dart projects folder using Windows Explorer or Mac Finder.
2. Copy the contents of the Polymer_Template folder into your new app folder.
3. Using the Dart Editor, select File->Open Existing Folder... (or use Ctrl+O).
4. Select your new app folder to import the project into the Editor.
5. The Dart Editor should do this automatically, but if not, in the Dart Editor's Files panel, right-click the new project's pubspec.yaml file and select Pub Get to install all needed dependencies.
6. If your project shows errors at this point, select the root of your project in the Dart Editor's Files panel and select Tools->Reanalyze Sources (or use Ctrl+Alt+Shift+B).

*REMINDER:* Take a moment now to edit your pubspec.yaml metadata and README.md files.

#### Using LESS for CSS
This template uses [LESS](http://lesscss.org), the CSS pre-processor. Continuing to use it for your project is optional, but recommended.

1. Make sure you've installed [Node.js](http://nodejs.org).
2. Install LESS with NPM (Node Package Manager) from a command line: `npm install -g less`
3. To compile app.css from app.less, you have a few options.
    * From the command line: `lessc app.less > app.css` (add `-x` to minify)
    * With [WebStorm](http://www.jetbrains.com/webstorm) or a compatible IDE from [Jetbrains](http://www.jetbrains.com): Set up a [File Watcher](https://www.jetbrains.com/webstorm/webhelp/using-file-watchers.html).
    * Or [use Grunt](http://ericnishio.com/blog/compile-less-files-with-grunt) to compile them. *Note:* Windows users don't need `sudo` in their installation commands.
