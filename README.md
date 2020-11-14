# Table of Contents

* [Overview](#Overview)
* [Accessing and using eclipse on Roar](#accessing-and-using-eclipse-on-roar)
* [Bootstrapping](#bootstrapping)
* [Custom Deployment](#custom-deployment)
* [License](#license)
* [Troubleshooting](#troubleshooting)

# Overview

![Singularity Version](https://img.shields.io/badge/singularity-3.5.2-informational)
![Ubuntu](https://img.shields.io/badge/image%20base-debian%209%20(Stretch)-important)
![eclipse](https://img.shields.io/badge/eclipse-2020.9R-blue)
![conda](https://img.shields.io/badge/conda-v4.9.0-blue)
![GitHub](https://img.shields.io/github/license/NucciTheBoss/eclipse_aci)


[Eclipse](https://www.eclipse.org/eclipseide/) provides IDEs and platforms for nearly every language and architecture. They are famous for their Java IDE, C/C++, JavaScript and PHP IDEs built on extensible platforms for creating desktop, Web and cloud IDEs. This [singularity](https://sylabs.io/) container is Roar's implementation of Eclipse's popular Java IDE.

# Accessing and using Eclipse on Roar
In order to access Eclipse on Roar, you only need to use the following commands:

```bash
$ module use /gpfs/group/dml129/default/sw/modules
$ module load eclipse
```

Now that you have loaded Eclipse into your current environment you only need to use the following command in order to launch Eclipse:

```bash
$ eclipse
```

If there is an executable inside the Eclipse container that you wish to use, simply use the following command:

```bash
$ eclipse-exec <command> <options> <arguments>
```

# Bootstrapping
In order to use this container as the base for other singularity images (a.k.a bootstrap), then please use the one of the base definition files stored in `/bootstrap`. You can download the bootstrap definition files by either cloning this repository:

```bash
$ git clone https://github.com/NucciTheBoss/eclipse_aci.git
```

and copying the files, or you can also download them using `wget`:

```bash
$ wget https://raw.githubusercontent.com/NucciTheBoss/eclipse_aci/master/bootstrap/eclipse_library_bootstrap.def
$ wget https://raw.githubusercontent.com/NucciTheBoss/eclipse_aci/master/bootstrap/eclipse_local_bootstrap.def
```

There are slight differences between the two bootstrap files. You should use `eclipse_library_bootstrap.def` if you want to download the Eclipse container from the Sylab Cloud before building your container. You should use `eclipse_local_bootstrap.def` if you already have a copy of the container on your machine.

**Note:** If you are using the Sylabs Remote Builder to build your own container then you should use `eclipse_library_bootstrap.def`.

# Custom Deployment
If you are looking for a custom deployment of Eclipse (e.g. specific software, specialized environment, etc.), then please contact the ICDS i-ASK center at iask@ics.psu.edu for assistance. We can help you build the custom Eclipse container you need.

# License
This repository is licensed under the GNU General Public License v3.0. 
For more information on what this license entails, please feel free to 
visit https://www.gnu.org/licenses/gpl-3.0.en.html

# Troubleshooting
If you encounter any issues while using this eclipse container then please open an issue, or contact Jason at the ICDS i-ASK center at either iask@ics.psu.edu or jcn23@psu.edu. Please contact the i-ASK center if you are looking for or need a custom deployment of this container.