What I do when clean Raspbian installation on Raspberry Pi.
===========================================================

Basic config
++++++++++++

With :code:`sudo raspi-config`, change belows.

1. Expand Filesystem (expand filesystem size for ex. 3GB -> 30GB)
2. User Password (change password to login rapi and to be root)
3. Hostname (change hostname to find raspi ip in local network)
4. International Settings

   - Change Locale
   - Change Timezone

and install avahi-daemon for static hostname. ( for 3. )

.. code-block :: bash

  $ sudo apt-get install avahi-daemon


Airplay config
++++++++++++++

* http://www.raywenderlich.com/44918/raspberry-pi-airplay-tutorial

