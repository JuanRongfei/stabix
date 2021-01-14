﻿.. MWN2_matlab documentation master file, created by
   sphinx-quickstart on Fri Apr 04 20:28:37 2014.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. include:: includes.rst

Slip Transmission |matlab| toolbox
====================================

.. only:: html

    .. figure:: ./_pictures/gui/STABiX_ebsdmap.gif
        :scale: 60 %
        :align: right
        
        *Slip transmission analysis for an EBSD map of near alpha phase Ti alloy.*
   
.. only:: latex

    .. figure:: ./_pictures/gui/STABiX_ebsdmap.png
        :scale: 100 %
        :align: right
        
        *Slip transmission analysis for an EBSD map of near alpha phase Ti alloy.*
   
The |matlab| toolbox |stabix| provides a unique and simple way to analyse slip transmission in a bicrystal.
Graphical User Interfaces (GUIs) are implemented in order to import EBSD results, and to represent and quantify grain boundary slip resistance.
Key parameters, such as the number of phases, crystal structure (fcc, bcc, or hcp), and slip families for calculations, are set by the user.
With this information, grain boundaries are plotted and color coded according to the :math:`m'` factor [#LusterMorris_1995]_ that quantifies the geometrical
compatibility of the slip planes normals and Burgers vectors of incoming and outgoing slip systems.
Other potential functions that could assess the potential to develop damage are implemented (e.g. residual Burgers vector
[#Marcinkowski_1970]_ and [#Bollmann_1970]_, :math:`N` factor [#LivingstonChalmers_1957]_, resolved shear stress [#Bieler_2009]_, misorientation...).

Furthermore, the toolbox provides the possibility to plot and analyze the case of a bicrystal, and to model sphero-conical indentation performed
in a single crystal or close to grain boundaries (i.e. quasi bicrystal deformation).
All of the data linked to the bicrystal indentation (indenter properties, indentation settings, grain boundary inclination, etc.) are collected through the GUI.
A Python\ :sup:`TM` \ file can be then exported in order to carry out a fully automatic 3D crystal plasticity finite element simulations of the indentation process
using one of the constitutive models available in DAMASK [#Roters_2010]_ and [#DAMASK]_.
The plasticity of single crystals is quantified by a combination of crystal lattice orientation mapping,
instrumented sphero-conical indentation, and measurement of the resulting surface topography [#Zambaldi_2012]_ and [#Zambaldi_SX]_.
In this way the stress and strain fields close to the grain boundary can be rapidly assessed.
Activation and transmission of slip are interpreted based on these simulations and the mechanical resistance of grain boundaries can be quantified.

How to get STABiX code ?
===========================

.. include:: source_code.rst

How to cite STABiX in your papers ?
====================================

.. only:: html

    `"STABiX v1.6" <https://doi.org/10.5281/zenodo.14854>`_ = https://doi.org/10.5281/zenodo.14854

    `"STABiX v2.0" <https://dx.doi.org/10.13140/RG.2.2.25845.83687/2>`_ = https://dx.doi.org/10.13140/RG.2.2.25845.83687/2

Reference paper
================

`"STABiX documentation." <https://media.readthedocs.org/pdf/stabix/latest/stabix.pdf>`_

`"A Matlab toolbox to analyze slip transfer through grain boundaries" <https://doi.org//10.1088/1757-899X/82/1/012090>`_
D. Mercier, C. Zambaldi, T. R. Bieler, 17th International Conference on Textures of Materials (ICOTOM17), at Dresden, Germany (2014).
IOP Conference Series: Materials Science and Engineering Volume 82 conference 1.
https://doi.org//10.1088/1757-899X/82/1/012090

`"Spherical indentation and crystal plasticity modeling near grain boundaries in alpha-Ti." <https://doi.org//10.13140/RG.2.1.3044.8486>`_
D. Mercier, C. Zambaldi, P. Eisenlohr, Y. Su, M. A. Crimp, T. R. Bieler,
Poster presented at "Indentation 2014" Conference in Strasbourg (France) (December 2014).
https://doi.org//10.13140/RG.2.1.3044.8486

`"Study of Bi-Crystal Grain Boundary Deformation in Commercially Pure Tantalum." <http://dx.doi.org/10.13140/RG.2.2.30343.91049>`_
B. Dunlap et al., CHEMS Forum (2015).

`"Grain Boundaries and Plasticity." <https://doi.org//10.13140/RG.2.2.27427.66084>`_
D. Mercier, C. Zambaldi, P. Eisenlohr, M. A. Crimp, T. R. Bieler, R. Sánchez Martín.
Invited talk at "MTEX Workshop 2016" Conference in Chemnitz (Germany) (February 2016).
https://doi.org//10.13140/RG.2.2.27427.66084

`"Quantifying deformation processes near grain boundaries in α titanium using nanoindentation and crystal plasticity modeling." <https://doi.org//10.1016/j.ijplas.2016.08.007>`_
Y. Su, C. Zambaldi, D. Mercier, P. Eisenlohr, T.R. Bieler, M.A. Crimp, International Journal of Plasticity, (2016).
https://doi.org//10.1016/j.ijplas.2016.08.007

`"Evaluation of an inverse methodology for estimating constitutive parameters in face-centered cubic materials from single crystal indentations." <https://doi.org//10.1016/j.euromechsol.2017.06.012>`_
A. Chakraborty, P. Eisenlohr, European Journal of Mechanics - A/Solids, (2017).
https://doi.org//10.1016/j.euromechsol.2017.06.012

`"Micromechanics of magnesium and its alloys studied by nanoindentation." <http://hdl.handle.net/10016/24981>`_
R. Sánchez Martín, PhD thesis, Universidad Carlos III de Madrid (2017).

`"Investigation of single crystal and bi-crystal deformation in body-centered cubic tantalum using indentation." <https://search.proquest.com/openview/b91c4b357cd85972c6c9b5be34ba9688/1?pq-origsite=gscholar&cbl=18750&diss=y>`_
B. Dunlap, PhD thesis, Michigan State University (2018).

Contents
=========

.. toctree::
   :maxdepth: 3

   motivation
   getting_started
   bicrystal_definition
   slip_transmission
   experimental_data
   ebsd_map_gui
   bicrystal_gui
   preCPFE_gui
   data_from_paper
   gui_gbinc
   references

References
===========

.. [#LusterMorris_1995] `J. Luster and M.A. Morris, "Compatibility of deformation in two-phase Ti-Al alloys: Dependence on microstructure and orientation relationships.", Metal. and Mat. Trans. A (1995), 26(7), pp. 1745-1756. <https://doi.org//10.1007/BF02670762>`_
.. [#Marcinkowski_1970] `M.J. Marcinkowski and W.F. Tseng, "Dislocation behavior at tilt boundaries of infinite extent.", Metal. Trans. (1970), 1(12), pp. 3397-3401. <https://doi.org//10.1007/BF03037870>`_
.. [#Bollmann_1970] `W. Bollmann, "Crystal Defects and Crystalline Interfaces", Springer-Verlag (1970). <https://doi.org//10.1007/978-3-642-49173-3>`_
.. [#LivingstonChalmers_1957] `J.D. Livingston and B. Chalmers, "Multiple slip in bicrystal deformation.", Acta Metallurgica (1957), 5(6), pp. 322-327. <https://doi.org//10.1016/0001-6160(57)90044-5>`_
.. [#Bieler_2009] `T.R. Bieler et al., "The role of heterogeneous deformation on damage nucleation at grain boundaries in single phase metals.", Int. J. of Plast. (2009), 25(9), pp. 1655–1683. <https://doi.org//10.1016/j.ijplas.2008.09.002>`_
.. [#Roters_2010] `F. Roters et al., "Overview of constitutive laws, kinematics, homogenization and multiscale methods in crystal plasticity finite-element modeling: Theory, experiments, applications.",  Acta Materialia (2010), 58(4), pp. 1152-1211. <https://doi.org//10.1016/j.actamat.2009.10.058>`_
.. [#DAMASK] `DAMASK — the Düsseldorf Advanced Material Simulation Kit. <http://damask.mpie.de/>`_
.. [#Zambaldi_2012] `C. Zambaldi et al., "Orientation informed nanoindentation of α-titanium: Indentation pileup in hexagonal metals deforming by prismatic slip", J. Mater. Res. (2012), 27(01), pp. 356-367. <https://doi.org//10.1557/jmr.2011.334>`_
.. [#Zambaldi_SX] `C. Zambaldi, "Anisotropic indentation pile-up in single crystals". <http://zambaldi.de/sx-indent/>`_


Contact
========

:Author: `David Mercier <david9684@gmail.com>`_ [1] and C. Zambaldi [1], based on previous work of T. R. Bieler [2] and C. Zambaldi [1].

[1] `Max-Planck-Institut für Eisenforschung, 40237 Düsseldorf, Germany <http://www.mpie.de/>`_

[2] `Chemical Engineering and Materials Science, Michigan State University, East Lansing 48824 MI, USA <http://www.msu.edu/>`_

.. image:: ./_pictures/logos/logo_MPIE_MSU.png
   :scale: 50 %


Contributors
=============

- Raúl Sánchez Martín (`IMDEA <http://www.materials.imdea.org/>`_, Madrid, Spain) contributed Python code to generate *Abaqus* indentation models.

- Adrien Berger (`LML <http://mecanique.univ-lille1.fr/Recherche/LML//>`_, Lille, France) contributed slip transmission models.

Acknowledgements
=================

This work was supported by the DFG/NSF `Materials World Network <http://www.nsf.gov/funding/pgm_summ.jsp?pims_id=12820>`_ grant references (DFG ZA 523/3-1 and NSF-DMR-1108211).

The authors are grateful to Philip Eisenlohr, Martin Crimp and Yang Su of `Michigan State University <http://www.msu.edu/>`_,
and the `Max-Planck-Institut für Eisenforschung <http://www.mpie.de/>`_ for support.


Keywords
=========

|matlab| toolbox ; Graphical User Interface (GUI) ; Grain Boundary (GB) ; Polycrystalline Metals ; Slip Transmission ; Bi-Crystal (BX) ;
Electron backscatter diffraction (EBSD) ; Instrumented indentation ; Crystal Plasticity Finite Element Method (CPFEM) ; python\ :sup:`TM` \ toolbox ; DAMASK.
