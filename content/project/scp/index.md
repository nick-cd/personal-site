---
title: SCP
subtitle: Old report from my data communications class explaining the SCP protocol
date: 2021-03-24T18:39:08.793Z
summary: ""
draft: false
featured: false
authors:
  - Nicholas
  - Eugene Li
  - Mohammad moein Hazari
tags:
  - theory
categories: []
external_link: https://nicholas-defranco.netlify.app/
links: []
image:
  filename: scp-logo.jpg
  focal_point: Smart
  preview_only: false
  alt_text: Image of SCP foundation
  caption: "Credit "
---
SCP stands for Secure Copy Protocol. this is a command that uses to transfer files back and forth from a local host to a remote server via SSH command(srikanta, 2016). It runs on session layer and operates on TCP port 22(Techopedia, 2019) and has a RFC number of 4251. SCP works on SSH which offers features such as user verification and many other features which ensures security (Pai, n.d.). The file being transferred and all inputted keystrokes(to input the user's password)are all encrypted (Indiana, 2019). The file transfer process itself is based on the Remote Copy Protocol (RCP) created by the Berkeley Software Distribution (BSD)(Technopedia, 2019). This application is pre-installed on most unix-based operating systems (Pere, 2017).

SCP works on "a single transport connection"(Spero, n.d.) making the protocol very efficient. It is efficient as the

* remote server does not check for a successful connection meaning the copying process occurs as soon as the connection is successful. 
* there is a small amount of wasted storage during the process(Spero, n.d.).

All information about the file after the copying process has been completed is maintained on the destination machine (the machine that was copied to)(Spero, n.d.).

## Advantages compared to SFTP

* Simple to use
* useful to transfer especially big sizes in comparing with FTP and Samba Shares
* It’s faster than SFTP AND FTP as all information about the transfer of the files is passed as command-line arguments(Spero n.d.)
* the SCP command is able to transfer files from a local host to a remote server and vice versa unlike SFTP, which can only pull files from a remote server

## Disadvantages compared to SFTP

* Unlike SFTP, SCP not able to remove or list file of directories, it just only read them.
* there is no interaction will the application, unlike SFTP where the user is able to interact between the local host and remote server. Since this is the case it can sometimes be difficult to use the SCP command as you must know the directory tree before hand(techraf, 2016).
* Lacks many features that are offered by SFTP(it can do more than copy)
* Lacks portability, as it is normally built to only work on unix-based machines(Pere, 2017)

## Command Line Interfaces of SCP

* RCP: Copies files from remote service
* SLOGIN: Secure logs into the remote system

## Example use of SCP

The local host runs the SCP command

one argument must be the remote server and the other must be the local host. Once a connection is established, SCP will prompt the user to authenticate on the remote server. The authentication process is identical to connected to the server with a secure shell connection(SSH).

### Syntax local to remote

```bash
scp file user@host:directory
```

### Syntax remote to local

```bash
scp user@host:directory file
```

## Extra Information

The remote host can be specified by providing the host name or the ip address of the host after the @ symbol(Srikanta, 2016). You are able to copy any amount of files, if the programmer wishes to copy more than one file, the file names must be surrounded by escaped curly brackets(curly braces)(Srikanta, 2016). You are also able to use any metacharacters that allow for any bash expansions to be able to select multiple files.

### Copying multiple files

```bash
scp remoteuser@remotehost:\{samplefile1.txt,samplefile2.txt\} .
```

(Srikanta, 2016)

The programmer is free to change the port number to use before performing the secure copy(Srikanta, 2016)

### Changing port number

```bash
scp -P 2345 samplefile.txt remoteuser@remotehost:~
```

Examples taken from: https://qnaplus.com/secure-copy-scp/ and https://www.hypexr.org/linux_scp_help.php

Protocol stages

* Creates a session with an specific code(more specifically an identifier) with a number greater than or equal to 1024. This can be set by the programmer(-P option on the scp command)
* creating a session, a SYN packet is sent to the reciever to initiate the session.
* Once the communication is complete,a FIN packet is sent to the reciever. Both ends will end their communication.
* A PUSH bit is at the end of the message to indicate the end of the message

## Works cited

(n.d.). What's the difference between SCP and SFTP? Retrieved from https://superuser.com/questions/134901/whats-the-difference-between-scp-and-sftp
What is Secure Copy? - Definition from Techopedia. (n.d.). Retrieved from https://www.techopedia.com/definition/26142/secure-copy
Carroll, B. (n.d.). How to use Secure Copy for file transfer. Retrieved from https://www.techrepublic.com/article/how-to-use-secure-copy-for-file-transfer/
How to transfer files using SCP (Secure Copy). (n.d.). Retrieved from https://www.a2hosting.com/kb/getting-started-guide/accessing-your-account/transferring-files-using-scp-secure-copy
(n.d.). Retrieved from https://www.w3.org/Protocols/HTTP-NG/http-ng-scp.html
Home. (n.d.). Retrieved from https://www.ssh.com/ssh/scp/
Data Migration and File Server Migration Software. (n.d.). Retrieved from https://www.quest.com/products/secure-copy/
Pai, A. (n.d.). Using secure shell (SSH) for login and secure copy (SCP) for data transfer on Linux. Retrieved from https://www.howtoforge.com/tutorial/ssh-and-scp-with-public-key-authentication/
(n.d.). Retrieved from https://www.hypexr.org/linux_scp_help.php
Srikanta, A. (2016, July 02). What is Secure Copy (SCP)? Retrieved from https://qnaplus.com/secure-copy-scp/
Indiana University Indiana University Indiana University. (n.d.). Retrieved from https://kb.iu.edu/d/agye
