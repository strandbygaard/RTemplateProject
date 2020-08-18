# Template R Project Structure

## Do's and Dont's

**Be stylish!** Keep a consistent style to the code. Follow the tidyverse R style guide [https://style.tidyverse.org/](https://style.tidyverse.org/).

**Initialize the project with a GIT repository** Always initiate your project with at GIT repository, and use version control throughout.

**And write sensible GIT commit messages to your future self** Read this [https://chris.beams.io/posts/git-commit/](https://chris.beams.io/posts/git-commit/) :-)

**Keep a tidy folder structure** Use the following folder structure as a starting point

```R``` Contains R source files. Why is it called ```R```? Because devtools and R packages require this, so it's the most compatible naming convention.

```config``` Contains all configuration data

```data``` Contains all data used in the project

```data/raw ``` Contains raw input files as received

```data/temp ``` Contains temporary data that needs to be stored on disk

```data/processed ``` Contains processed raw data

```tests ``` Contains unit test cases for all functions

```output ``` Contains output from code


**Use a build script** Always use a build script to drive your code

**Put functions in separate files** Functions don't have to live in the same file as the calculations. Put them in a separate file, and include them using ```source()```

**But is it stylish?** Use lintr to check your code for convention and obvious problems. Run it prior to every commit, e.g. ``` lintr::lint("R/sample.R") ```. To show output from lintr in the Markers pane, select ```Code > Show Diagnostics``` from the menu. Add it as a dependent step in your build script.


## Running tests

Use the following structure as a starting point:

1. Functions are defined in files under ```src```
1. Create a test file in ```test``` for each file with functions that should be tested in 

E.g.

1. Functions are defined in ```src/sample.R```
1. A test file is created ```test/test-sample.R```
1. Load ```testthat``` package with the command ```library(testthat)``` in the R console
1. Run the tests from the project root with the command ```test_file("./tests/testthat/test-sample.R")``` in the R console







