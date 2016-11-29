*What are some of the key design philosophies of the Linux operating system?*

Linus allows the users to do whatever they want with the OS. It hands access to these controls over to the user because
it assumes the user knows what they are doing (or knows that they don't know what they're doing). The CLI is more accessible
to the UNIX/Linux user so that they can manipulate whatever part of the OS they want. Windows, on the other hand, keeps 
the terminal away from the user and also limits what can be run in it. 

*In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?*

A VPS is a service that creates almost a sandbox environment that mimics an actual physical server. One advantage is that it is
easier to set up because it's virtual rather than physical, is much easier to set up since it won't be a ground-up build and is hosted
on a machine that someone else is maintaining. 

*Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?*

Because the root user has absolute control over every aspect of the operating system, they can cause massive damage with faulty
commands. Running commands/programs from a lower-level user allows certain safegaurds to stop damange from being done.