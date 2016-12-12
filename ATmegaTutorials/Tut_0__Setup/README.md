
# Setting Up Your Programming Environment

### Install Linux (Any distro)
Although you can program in Windows, I don’t know how nor do I care for learning how to do so in order to teach others. Other than the initial set up, everything else should be identical in Windows. You can go look at older year’s REVO google docs and there is some documentation on how to get things setup on Windows

### Install and Learn Git
For version control on REVO we use git and github. Learn how to use git and learn how it interfaces with github. You will find your code more readily accepted into the main repo if you have good git practice. This is also useful for ModSim and other such... fun projects.
Check out [https://git-scm.com/book/en/v2/Getting-Started-Git-Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics). Make sure to also reference /GeneralTutorials for a style guide and general tips on Git.

If you are using 
```
sudo apt-get git 
```
in Linux to install Git, you may need to run
```
sudo apt-get updates
```
to get any updates that are required to download git. REMEMBER TO UPDATE REGULARLY because sometimes if you are trying to use sudo apt-get you will be unable to and you will be very cofused until you run it and see that it works.


### Get on the Olin REVO Github page (aka this)
[https://github.com/olin-electric-motorsports](https://github.com/olin-electric-motorsports)

### Clone and Run the Setup script with all of the tools necessary
(Debian Only)
Run the following command in order to clone the config repo

*NOTE: This code can also be found in the AVR-Config folder*

```
$ git clone https://github.com/olin-electric-motorsports/AVR-Config.git
```

In the cloned repository run the install script

```
$ bash install.sh
```

Look through and take note of what this script does. It installs some dependencies and then moves around some configuration files. The setup script will allow you to work with the AVR programmers as well as compile the C files into useable Atmega code.

### Get comfortable in terminal
In order to work with the Atmegas you will have to be comfortable working in terminal. You might also want to consider learning Vim, an incredibly powerful text editor that has a steep learning curve. Learning these tools well will not only make you a faster and more productive team member, but will help you in life as well.

###Learn some C
You can work with ATmegas without learning C, but if you want to write any code for them at all, you're going to need it. Use the K&R C Programming book; have your computer nearby and prepare to spend a while with it. It's a really good book that you should at least complete the first few chapters of.
