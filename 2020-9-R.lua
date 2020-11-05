help([[Eclipse provides IDEs and platforms for nearly every language 
and architecture. They are famous for their Java IDE, C/C++, JavaScript 
and PHP IDEs built on extensible platforms for creating desktop, Web and cloud IDEs. 
These platforms deliver the most extensive collection of add-on tools 
available for software developers. This module is Roar's implementation
of Eclipse's popular Java IDE

In order to launch eclipse, use the following command:
$ eclipse

In order to execute a command from inside the eclipse
container, use the following command:
$ eclipse-exec

If you run into any issues while using this container
then please contact Jason at the i-ASK center by emailing
iask@ics.psu.edu]])

whatis("Description: Eclipse is a popular IDE for developing Java applications")
whatis("Version: 2020-9-R")
whatis("OpenJDK Version: 11")

local eclipseLaunch = "$(command -v singularity) -s run /gpfs/group/dml129/default/sw/eclipse/eclipse_latest.sif $@ &> /dev/null"
local eclipseExec = "$(command -v singularity) -s exec /gpfs/group/dml129/default/sw/eclipse/eclipse_latest.sif $@"

set_shell_function("eclipse", eclipseLaunch)
set_shell_function("eclipse-exec", eclipseExec)
