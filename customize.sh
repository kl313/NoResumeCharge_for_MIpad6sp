##########################################################################################
#
# Magisk Module Installer Script
#
##########################################################################################

# skip all default installation steps
SKIPUNZIP=0

# Set what you want to display when installing your module

print_modname() {
  ui_print " "
  ui_print "*******************************"
  ui_print " sheng "
  ui_print "*******************************"
  ui_print " "
}

# Copy/extract your module files into $MODDIR in on_install.


# You can add more functions to assist your custom script code
print_modname
on_install
