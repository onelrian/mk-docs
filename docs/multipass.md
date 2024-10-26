>>>><h1>MULTIPASS DOCUMENTATION
Multipass is a flexible and powerful tool that can be used for many purposes.
In its simplest form, you can use it to quickly create and destroy Ubuntu VMs (instances) on any host machine.
 But you can also use Multipass to build a local mini-cloud on your laptop, to test and develop multi-instance
 or container-based cloud applications.Here we're going to be seeing some basic commnads and how they would
 help you manipulate your Virtual machine.

 >><h2>installing multipass  
 You could start by installing the multipass using the commands;
 __``snap install multipass``__
 Subsequently if you no longer find interest in this tool you could simply ninstall it using the command ;
 __``snap remove multipass``__

 >><h2>What is an instance  
 An instance in the context of virtual machines (VMs) refers to an individual, isolated virtual machine that is
 created and run within a virtualization platform or cloud environment. It is essentially a "copy" or "deployment"
  of a virtual machine template or image, running its own operating system and functioning as a separate, independent
  computing environment.This instances could be created using the following commands
  __``multipass launch``__
  But to create an instance with a specific image use the command``multipass launch jammy`` that is after running **``multipass find``**to check which images are available
  An existing instance that is in Stopped or Suspended status can be started with the multipass start command;
  - [x] __TO start__ use **``multipass start loving-duck``** given that loving-duck is the existing instance
  - [x] __TO stop__  use **``multipass stop loving-duck``** given that loving-duck is the existing instance
  - [x] __TO suspend__ use **``multipass suspend loving-duck``** given that loving-duck is the existing instance
  >><h2>Deleting instances
  To mark an instance as deleted, run:
**``multipass delete keen-yak``**
You can also use the --purge option to permanently delete an instance in a single command; for example:
**``multipass delete --purge keen-yak``**  

>><h2>How to use the Docker blueprint  
The Docker blueprint gives Multipass users an easy way to create Ubuntu instances with Docker installed. It is based on the latest LTS release of Ubuntu, and includes docker engine and Portainer  
To use the Docker blueprint, run **``multipass launch docker --name docker-vm``**, which will launch the docker-vm instance with default parameters.  

>><h2>Using the Alias   
The alias command in Unix-like operating systems (such as Linux and macOS) is used to create shortcuts for frequently used commands. It allows you to define a custom alias or shorthand for a longer or more complex command, making it quicker and easier to execute. You'll need to add this to your shell configuration (.bashrc, .zshrc or so) for aliases to work without working with extra long commands



