Release 0.9.0
=============

Welcome Zotonic 0.9.0, released on December 17, 2012. These notes list
the most important changes for this new feature release.


New core features
------------------

The ability was added to aid and promote "mobile first" development
using automatic user agent classification. Amongst others, the
template selection mechanism is now based on the detected user agent
class.

All base HTML has moved to use the Twitter Bootstrap CSS framework
instead of Atatonic. This includes the admin interface (which got a
new design) and the base templates for the skeleton sites. All
Atatonic CSS files have been removed from Zotonic. Cufon is also no
longer included.

While editing resources it is now possible for editors to add
different "blocks" of content to the page. Blocks can be custom
defined and have their own templates.

Modules can now implement their own URL dispatch mechanisms through
``#dispatch{}`` notifications. They are triggered when the regular
dispatch rules do not match.

A new major mode for Emacs has been developed, called ``zotonic-tpl-mode``.
See documentation at zotonic.com for details on how to install it.

Zotonic's core routines which serve a greater purpose, like date and
string manipulation and HTML sanitization, has been moved out of the
main repository into a new subproject called z_stdlib.


New documentation
-----------------

The documentation of everything Zotonic has been completely
revamped. We now use Sphinx (http://sphinx-doc.org/) to generate HTML
documentation. Other output forms (PDF, epub) are in the planning as
well.

Source code for the documentation is in the main repository under
doc/, so that it can be kept better in sync with new features in the
code base.

The new documentation is up at http://zotonic.com/docs/


New tags/changed tags
---------------------

{% javascript %}...{% endjavascript %}
Adds javascript that will be run after jQuery has been initialized.
In dynamic content it will run after the DOM has been updated with the
template where the Javascript was defined.

{% image %} new attribute: mediaclass. Image classes can be defined
using property files in the template directory. Which image class
definition is chosen depends on the user agent classification.


New and updated modules
-----------------------

mod_geomap
  New module: Provides mapping and geocoding.

mod_comment
  Added the possibility to have comments be moderated before
  submitting.

mod_survey
  mod_survey has been largely rewritten. Now uses the new 'blocks'
  structure for adding questions to the survey. Many new question
  types have been added, like file uploads and category
  selection. Also supports mailing the survey results and custom
  handlers.

mod_ssl
  New module: adds SSL support to sites.  Previously only a single
  certificate could be used per Zotonic server. With this module each
  site can have its own HTTPS listeners and certificates. When you
  don't supply a certificate then a self-signed certificate and
  private key will be generated using the openssl utility.

mod_backup
  Adds basic revision control for editing resources in the admin
  interface. Every time a resource is saved, a backup version is
  made. Using a GUI you can inspect differences between versions and
  perform a rollback.

mod_rest
  A new module to interact with Zotonic's data model using a
  RESTful interface.

  
New filters
----------- 

menu_subtree:
  Finds the menu below a particular resource id.
  Usage:  m.rsc.main_menu.menu|menu_subtree:id

escape_link:
  Escapes a text, inserts <br/> tags, and makes anchor elements of all
  links in the text. The anchor elements have the 'nofollow' attribute.

sort:
  Sorts a list of resource ids based on their properties.


New custom tags
---------------

geomap_static
  Makes the HTML for a static map of a location. Uses the
  OpenStreetMaps tileset. Example usage:

  {% geomap_static id=id n=3 %}

  Show the location of the resource 'id' in a grid of 3x3 tiles.


Translations
------------

Translations were added and updated for Dutch, German, Polish, Turkish.


Contributors
------------

The following people were involved in this release:

Ahmed Al-Saadi, Alain O'Dea, Andreas Stenius, Arjan Scherpenisse,
Artur Wilniewczyc, Barco You, François Cardinaux, Grzegorz Junka,
Hans-Christian Espérer, Ivette Mrova, Joost Faber, Kunthar Daman,
Maas-Maarten Zeeman, Marc Worrell, Motiejus Jakštys, Piotr Meyer and
Tom Bradley.
