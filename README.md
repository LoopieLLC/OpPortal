# Loopie, LLC Washer/Driver Portal: README

The Loopie washer/driver portal is a platform for Loopie washers and drivers to track and perform operational tasks relating to the Loopie laundry order lifecycle.  The Loopie washer/driver portal is a culmination of 4 subsequent tools: the washer portal which provides functionality pertaining to washer responsibilities, the driver portal which provides functionality pertaining to driver responsibilities, load tracking of a Loopie laundry load, and a centralized governing administrative portal that oversees administrative operations pertaining to all of the mentioned fields.

### Washer Portal

The washer portal allows a Loopie washer to create a unique account in which they can provide personal information about themselves, their washing and drying machines, and their load capacity.  The washer portal also allows washer to provide their availability for the day, how many loads they are available to take, and which loads they currently have.  This information is shared with drivers and creates an automated line of communication between the washer and the driver.  This helps remove the need for a centralized governing body to control the communication between washers and drivers.  Using the washer portal, a Loopie washer can also set their availability to wash loads for the day.

### Driver Portal

The driver portal allows a Loopie driver to create a unique account in which they can provide personal information about themselves, their car and car insurance, and loads they currently posses.  In the driver portal, a driver can view the location of all active washers during a given time slot, and whether or not they are accepting loads.  The driver portal allows active drivers to view any loads that need to be picked up, either from a washer or from a client.  This way, a driver can simply log into the Loopie washer/driver portal and view any available loads from pickup or drop-off, without needing to directly communicate with the washer or Loopie HQ.  Using the driver portal, a Loopie driver can also set their availability to driver for the day.   

### Load Tracking

Load tracking is a major part of the Loopie washer/driver portal.  With load tracking, we can see who has and has had their hands on a load.  Loads have an associated washer, driver, and client.  This gives Loopie the ability to see a load at all times, safeguarding against load mixups or lost loads.  In future versions of the application we hope to provide the client with live load tracking.  

### Admin Portal    

The admin portal acts as a centralized governing tool between the above pieces that allows an administrative user to create, update, and destroy users and loads.  The administrative portal also allows an administrator to view application-wide statistics and trends.  Via the administrative portal, an admin can accept and decline pending users with access to the other portals and can view all past and current loads.  

## Getting Started

This application is built on a Debian based Linux distribution (Ubuntu 16.0.4) features the Ruby on Rails framework, MySQL for database management, Nginx as the web server, and Puma as the application server.

```
Ruby version 2.5.1
Rails version 5.2.1
Puma version 3.12.0
Nginx version  1.10.3
MySQL version 14.14, Distribution 5.7.23
```

For dependency management this application uses Bundler.

```
Bundler version 1.17.1
```

### Prerequisites

To run this application on your machine first you need to install the necessary Ruby and MySQL versions.  When installing Ruby, I like to use RVM (Ruby Version Manager).  It is a good tool to use when building multiple Ruby applications that use their own specific sets of tools and dependencies.  To install RVM, you can follow the guide below.

```
https://github.com/rvm/ubuntu_rvm
```    

You can then use RVM to install different versions of Ruby.  We are using Ruby -v 2.5.1.

```
rvm install ruby_version
```

To view you list all of your installed Ruby versions and set a default version with the following commands:

```
rvm list
rvm use ruby_version
```



### Installing

## Testing

## Deployment

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
=======
# WasherPortal
