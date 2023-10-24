﻿Analysis of literature data
===========================

.. include:: includes.rst

Please, find `here <https://github.com/stabix/stabix/tree/master/gui_bicrystal/gui_bicrystal_data>`_ the |matlab| functions to analyze results and to plot data from the following papers.

The small differences between values given in the litterature and values found with STABiX toolbox may come from the rounding of Euler angles and the rounding of slip transmission criteria.

Residual Burgers vector
------------------------

Kacher and Robertson (2012)
............................

Kacher and Robertson analyzed slip transfer in 304 stainless steel
(FCC structure), using in situ TEM deformation [#KacherRobertson_2012]_.
In this work, a bicrystal with a misorientation angle of 36° and
misorientation axis of [-11, -22, -2] is characterized. Dislocation/grain
boundary interactions are analysed and knowing the incoming system,
the magnitude of residual dislocation Burgers vector is plotted in function
of possible outgoing systems. Calculations are reproduced using the |matlab| 
toolbox and obtained values are compared to Kacher's results (see :numref:`kacher2012_barcharts`).

.. figure:: ./_pictures/data_from_papers/Kacher2012_barcharts.png
    :name: kacher2012_barcharts
    :scale: 40 %
    :align: center

    *a) Plot of a bicrystal with a misorientation angle of 36° and misorientation axis of
    [-11, -22, -2] from Kacher's paper. b) Magnitude of residual Burgers vector given in Kacher's paper
    compared to values calculated with the Matlab toolbox.*

Patriarca et al. (2013)
........................

Patriarca et al. analysed the deformation response of a FeCr polycrystal
(BCC structure) by a combination of EBSD and digital image correlation
(DIC) characterizations [#Patriarca_2013]_. The magnitude of residual
dislocation Burgers vector is plotted for numerous grain boundaries, knowing
incoming and outgoing slips. Calculations are reproduced using the |matlab|
toolbox and results are compared to Patriarca's results (see :numref:`patriarca2013_barcharts_cropped`).

.. figure:: ./_pictures/data_from_papers/Patriarca2013_barcharts_cropped.png
    :name: patriarca2013_barcharts_cropped
    :scale: 20 %
    :align: center

    *Magnitude of residual Burgers vector given in Patriarca's paper compared to values
    calculated with the Matlab toolbox for numerous grain boundaries.*

Kacher and Robertson (2014)
............................

Kacher and Robertson analyzed slip transfer in alpha cp-Ti (HCP structure),
using in situ TEM deformation [#KacherRobertson_2014]_. In this work,
a bicrystal with a misorientation angle of 32° and misorientation axis of
[1, 5, -6, 16] is characterized. Dislocation/grain boundary interactions
are analysed and knowing the incoming system, the magnitude of residual
dislocation Burgers vector is plotted in function of possible outgoing systems.
Calculations are reproduced using the |matlab| toolbox and obtained values
are compared to Kacher's results (see :numref:`kacher2014_barcharts`).

.. figure:: ./_pictures/data_from_papers/Kacher2014_barcharts.png
    :name: kacher2014_barcharts
    :scale: 40 %
    :align: center

    *a) Plot of a bicrystal with a misorientation angle of 32° and misorientation axis of
    [1, 5, -6, 16] from Kacher's paper. b) Magnitude of residual Burgers vector given in Kacher's paper
    compared to values calculated with the Matlab toolbox for the bicrystal #2.*

Cui et al. (2014)
..................

Cui et al. analyzed slip transfer in proton-irradiated 13Cr15Ni stainless
steel (fcc structure), using in situ TEM deformation [#Cui_2014]_.
In this work, two bicrystals with respectively a misorientation angles
of 60° and 40° and a misorientation axis of [1, 1, -1] and [1, 0, 1]
are characterized. Dislocation/grain boundary interactions are analysed
and knowing the incoming system, the magnitude of residual dislocation
Burgers vector is plotted in function of possible outgoing systems.
Calculations are reproduced using the |matlab| toolbox and obtained
values are compared to Cui's results (see :numref:`cui2014_barcharts`).

.. figure:: ./_pictures/data_from_papers/Cui2014_barcharts.png
    :name: cui2014_barcharts
    :scale: 20 %
    :align: center

    *a) Plot of a bicrystal with a misorientation angle of 60° and misorientation axis of
    [1, 1, -1] from Cui's paper. b) Plot of a bicrystal with a misorientation angle of 40° and
    misorientation axis of [1, 0, 1] from Cui's paper. c) Magnitude of residual Burgers vector
    given in Cui's paper compared to values calculated with the Matlab toolbox for the two bicrystals.*

m' factor
----------

Guo et al. (2014)
..................

Guo et al. analyzed slip transfer in cp-Ti (HCP structure), by tensile
test combined to in situ digital image correlation (DIC) [#Guo_2014]_.
In this work, many bicrystals are characterized and slip band–grain
boundary interactions are analyzed in term of stress concentration
along the slip plane direction. The :math:`m'` factor is used to
quantify the transmissivity across the GBs and calculations are
reproduced using the |matlab| toolbox (see :numref:`guo2014_barcharts_cropped`).

.. figure:: ./_pictures/data_from_papers/Guo2014_barcharts_cropped.png
    :name: guo2014_barcharts_cropped
    :scale: 20 %
    :align: center

    *m' factor values given in Guo's paper compared to values calculated with the Matlab toolbox for 7 different bicrystals.*

.. [#Cui_2014] `B. Cui et al., "Influence of irradiation damage on slip transfer across grain boundaries.", Acta Materialia (2014), 65, pp. 150-160. <https://doi.org/10.1016/j.actamat.2013.11.033>`_
.. [#Guo_2014] `Y. Guo et al., "Slip band–grain boundary interactions in commercial-purity titanium.", Acta Materialia (2014), 76, pp. 1-12. <https://doi.org/10.1016/j.actamat.2014.05.015>`_
.. [#KacherRobertson_2012] `J. Kacher and I.M. Robertson, "Quasi-four-dimensional analysis of dislocation interactions with grain boundaries in 304 stainless steel.", Acta Materialia (2012), 60(19), pp. 6657–6672. <https://doi.org/10.1016/j.actamat.2012.08.036>`_
.. [#KacherRobertson_2014] `J. Kacher and I.M. Robertson, "In situ and tomographic analysis of dislocation/grain boundary interactions in α-titanium.", Philosophical Magazine (2014), 94(8), pp. 814-829. <https://doi.org/10.1080/14786435.2013.868942>`_
.. [#Kehagias_1995] `T. Kehagias et al., "Slip transfer across low-angle grain boundaries of deformed titanium.", Interface Science (1995), 3(3), pp. 195-201. <https://doi.org/10.1007/BF00191046>`_
.. [#Patriarca_2013] `L. Patriarca et al., "Slip transmission in bcc FeCr polycrystal.", Materials Science&Engineering (2013), A588, pp. 308–317. <https://doi.org/10.1016/j.msea.2013.08.050>`_
