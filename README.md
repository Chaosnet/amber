# Chaosnet - the Amber document

The original sources and texinfo document corresponding to "Chaosnet", [MIT AI memo 628](http://hdl.handle.net/1721.1/6353), by David A Moon.
This is sometimes referred to as the "Amber" document (from ["9 Princes in Amber"](https://en.wikipedia.org/wiki/Nine_Princes_in_Amber), where the name Chaos comes from [[ref](https://groups.google.com/g/comp.protocols.tcp-ip/c/AeJA1K7uA-o?pli=1)]).

**Abstract**
> Chaosnet is a *local network*, that is, a system for communication
> among a group of computers located within about 1000 meters of each
> other.  Originally developed by the Artificial Intelligence Laboratory
> as the internal communications medium of the Lisp Machine system, it
> has since come to be used to link a variety of machines around MIT
> and elsewhere.
> 
> This memo describes both the hardware and the software protocols.  It
> is intended to be the definitive documentation for Chaosnet.


The source document (in Bolio, included for reference) was translated to [Texinfo](https://www.gnu.org/software/texinfo/) by @ams, with later improvements and touch-ups by @bictorv.

To create a html version, we suggest you use

    texi2any --html --no-split --set-customization-variable 'USE_TITLEPAGE_FOR_TITLE 1' --css-ref "janix-texinfo.css" --css-include=amber.css amber.texi

The `janix-texinfo.css` file is [janix-texinfo.css](https://github.com/jasontmassey/janix-texinfo.css) by Jason Massey.

You can read the HTML output e.g. at https://chaosnet.net/amber.html. 
For more info about Chaosnet, see https://chaosnet.net.
