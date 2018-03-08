# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 6.14-1 replay file
# Internal Version: 2014_06_04-19.11.02 134264
# Run by Wagner on Thu Mar 08 10:26:54 2018
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
#: Abaqus Error: 
#: This error may have occurred due to a change to the Abaqus Scripting
#: Interface. Please see the Abaqus Scripting Manual for the details of
#: these changes. Also see the "Example environment files" section of 
#: the Abaqus Site Guide for up-to-date examples of common tasks in the
#: environment file.
#: Execution of "onCaeGraphicsStartup()" in the site directory failed.
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(0.0, 0.0), width=132.064422607422, 
    height=144.6484375)
session.viewports['Viewport: 1'].makeCurrent()
session.viewports['Viewport: 1'].maximize()
from caeModules import *
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
openMdb('VasoPressao.cae')
#: The model database "C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Vaso de Pressao\VasoPressao.cae" has been opened.
session.viewports['Viewport: 1'].setValues(displayedObject=None)
session.viewports['Viewport: 1'].partDisplay.geometryOptions.setValues(
    referenceRepresentation=ON)
p = mdb.models['Model-1'].parts['Part-1']
session.viewports['Viewport: 1'].setValues(displayedObject=p)
session.viewports['Viewport: 1'].view.setValues(width=52.5358, height=25.0877, 
    viewOffsetX=-0.150053, viewOffsetY=0.0976428)
session.viewports['Viewport: 1'].partDisplay.setValues(sectionAssignments=ON, 
    engineeringFeatures=ON)
session.viewports['Viewport: 1'].partDisplay.geometryOptions.setValues(
    referenceRepresentation=OFF)
session.viewports['Viewport: 1'].view.setValues(nearPlane=105.047, 
    farPlane=116.258, width=71.1506, height=33.9769, viewOffsetX=-7.10784, 
    viewOffsetY=0.136753)
del session.viewports['Viewport: 1']
#* CanvasError: SystemError: the current viewport may not be deleted.
session.viewports['Viewport: 1'].view.setValues(nearPlane=104.362, 
    farPlane=116.943, width=48.0589, height=22.9498, viewOffsetX=-22.5504, 
    viewOffsetY=6.59028)
session.viewports['Viewport: 1'].view.fitView()
session.viewports['Viewport: 1'].view.setValues(width=68.1575, height=32.5476, 
    viewOffsetX=0.906999, viewOffsetY=1.0955)
session.viewports['Viewport: 1'].setValues(displayedObject=None)
o1 = session.openOdb(
    name='C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       4
#: Number of Node Sets:          5
#: Number of Steps:              1
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(INVARIANT, 
    'Magnitude'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(COMPONENT, 'U2'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=14.0042, 
    farPlane=25.9958, width=21.091, height=9.49851, viewOffsetX=3.04629, 
    viewOffsetY=0.134177)
session.viewports['Viewport: 1'].view.setValues(nearPlane=13.8953, 
    farPlane=26.1047, width=20.9269, height=9.4246, viewOffsetX=-7.92942, 
    viewOffsetY=0.133133)
session.viewports['Viewport: 1'].view.setValues(nearPlane=12.7637, 
    farPlane=27.2363, width=31.5348, height=14.202, viewOffsetX=-4.32506, 
    viewOffsetY=0.838278)
session.viewports['Viewport: 1'].view.setValues(nearPlane=12.5807, 
    farPlane=27.4193, width=31.0828, height=13.9984, viewOffsetX=-12.4571, 
    viewOffsetY=-0.350328)
session.viewports['Viewport: 1'].view.setValues(nearPlane=12.6366, 
    farPlane=27.3634, width=31.2208, height=14.0606, viewOffsetX=-17.3717, 
    viewOffsetY=-1.77612)
session.viewports['Viewport: 1'].view.setValues(nearPlane=11.8714, 
    farPlane=28.1286, width=35.6024, height=16.0338, viewOffsetX=-16.6084, 
    viewOffsetY=-1.51459)
session.viewports['Viewport: 1'].view.setValues(nearPlane=12.0785, 
    farPlane=27.9215, width=36.2235, height=16.3135, viewOffsetX=2.44692, 
    viewOffsetY=-0.978475)
#: 
#: Node: PART-1-1.1502
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.00000e+001,  4.37500e+000,  0.00000e+000,      -      
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed coordinates (unscaled):   5.00002e+001,  4.37500e+000,  0.00000e+000,      -      
#: Deformed coordinates (scaled):     5.04996e+001,  4.36358e+000,  0.00000e+000,      -      
#: Displacement (unscaled):           1.76587e-004, -4.03746e-006,  0.00000e+000,  1.76633e-004
#: 
#: Node: PART-1-1.947
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.50000e+001,  1.87500e+000,  0.00000e+000,      -      
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed coordinates (unscaled):   5.50002e+001,  1.87500e+000,  0.00000e+000,      -      
#: Deformed coordinates (scaled):     5.54835e+001,  1.87004e+000,  0.00000e+000,      -      
#: Displacement (unscaled):           1.70899e-004, -1.75345e-006,  0.00000e+000,  1.70908e-004
#: 
#: Node: PART-1-1.21
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.50000e+001,  0.00000e+000,  0.00000e+000,      -      
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed coordinates (unscaled):   5.50002e+001, -0.00000e+000,  0.00000e+000,      -      
#: Deformed coordinates (scaled):     5.54835e+001, -3.20047e-035,  0.00000e+000,      -      
#: Displacement (unscaled):           1.70897e-004, -1.13120e-038,  0.00000e+000,  1.70897e-004
#: 
#: Node: PART-1-1.441
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.50000e+001,  5.00000e+000,  0.00000e+000,      -      
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed coordinates (unscaled):   5.50002e+001,  5.00000e+000,  0.00000e+000,      -      
#: Deformed coordinates (scaled):     5.54836e+001,  4.98678e+000,  0.00000e+000,      -      
#: Displacement (unscaled):           1.70911e-004, -4.67101e-006,  0.00000e+000,  1.70974e-004
#: 
#: ODB: Job-1.odb
#:    Number of nodes: 1681
#:    Number of elements: 800
#:    Element types: CAX6M 
#: 
#: Mass properties for Whole model:
#: 
#:   The selected elements may contain sections without a density definition.
#:   Use the options dialog to specify a density.
#: 
#: 
#:   The selected elements contain Axisymmetric elements which are unsupported for Mass/Volume/Area computations.
#: 
#: Node: PART-1-1.1197
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.00000e+001,  3.12500e+000,  0.00000e+000,      -      
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed coordinates (unscaled):   5.00002e+001,  3.12500e+000,  0.00000e+000,      -      
#: Deformed coordinates (scaled):     5.04995e+001,  3.11681e+000,  0.00000e+000,      -      
#: Displacement (unscaled):           1.76558e-004, -2.89636e-006,  0.00000e+000,  1.76581e-004
#: 
#: Node: PART-1-1.1252
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.50000e+001,  3.12500e+000,  0.00000e+000,      -      
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed coordinates (unscaled):   5.50002e+001,  3.12500e+000,  0.00000e+000,      -      
#: Deformed coordinates (scaled):     5.54835e+001,  3.11673e+000,  0.00000e+000,      -      
#: Displacement (unscaled):           1.70903e-004, -2.92220e-006,  0.00000e+000,  1.70928e-004
#: 
#: Nodes for distance: PART-1-1.1197, PART-1-1.1252
#:                                        1             2             3        Magnitude
#: Base distance:                     5.00000e+000,  0.00000e+000,  0.00000e+000,  5.00000e+000
#: Scale:                             2.82927e+003,  2.82927e+003,  2.82927e+003,      -      
#: Deformed distance (unscaled):      5.00000e+000,  0.00000e+000,  0.00000e+000,  5.00000e+000
#: Deformed distance (scaled):        4.98400e+000, -7.29561e-005,  0.00000e+000,  4.98400e+000
#: Relative displacement (unscaled): -5.65409e-006, -2.58378e-008,  0.00000e+000,  5.65415e-006
session.viewports['Viewport: 1'].view.setValues(nearPlane=14.5692, 
    farPlane=25.4308, width=16.3017, height=7.3416, viewOffsetX=1.39029, 
    viewOffsetY=-1.18227)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
a = mdb.models['Model-1'].rootAssembly
session.viewports['Viewport: 1'].setValues(displayedObject=a)
session.viewports['Viewport: 1'].assemblyDisplay.setValues(step='Step-1')
session.viewports['Viewport: 1'].assemblyDisplay.setValues(loads=ON, bcs=ON, 
    predefinedFields=ON, connectors=ON, optimizationTasks=OFF, 
    geometricRestrictions=OFF, stopConditions=OFF)
mdb.models['Model-1'].boundaryConditions['BC-2'].setValues(typeName=YSYMM)
del mdb.models['Model-1'].boundaryConditions['BC-2']
del mdb.models['Model-1'].boundaryConditions['BC-1']
a = mdb.models['Model-1'].rootAssembly
region = a.sets['BCbaixo']
mdb.models['Model-1'].DisplacementBC(name='BC-1', createStepName='Step-1', 
    region=region, u1=UNSET, u2=0.0, ur3=UNSET, amplitude=UNSET, fixed=OFF, 
    distributionType=UNIFORM, fieldName='', localCsys=None)
a = mdb.models['Model-1'].rootAssembly
region = a.sets['Upper']
mdb.models['Model-1'].DisplacementBC(name='BC-2', createStepName='Step-1', 
    region=region, u1=UNSET, u2=0.0, ur3=UNSET, amplitude=UNSET, fixed=OFF, 
    distributionType=UNIFORM, fieldName='', localCsys=None)
session.viewports['Viewport: 1'].assemblyDisplay.setValues(loads=OFF, bcs=OFF, 
    predefinedFields=OFF, connectors=OFF)
mdb.jobs['Job-1'].submit(consistencyChecking=OFF)
#: The job input file "Job-1.inp" has been submitted for analysis.
#: Job Job-1: Analysis Input File Processor completed successfully.
#: Job Job-1: Abaqus/Standard completed successfully.
#: Job Job-1 completed successfully. 
o3 = session.openOdb(
    name='C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb')
#: Model: C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       4
#: Number of Node Sets:          5
#: Number of Steps:              1
session.viewports['Viewport: 1'].setValues(displayedObject=o3)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(INVARIANT, 
    'Magnitude'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(COMPONENT, 'U2'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(COMPONENT, 'U1'), )
odb = session.odbs['C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb']
session.writeFieldReport(fileName='abaqus.rpt', append=ON, 
    sortItem='Node Label', odb=odb, step=0, frame=1, outputPosition=NODAL, 
    variable=(('U', NODAL), ))
odb = session.odbs['C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb']
session.writeFieldReport(fileName='abaqus.rpt', append=ON, 
    sortItem='Node Label', odb=odb, step=0, frame=1, outputPosition=NODAL, 
    variable=(('U', NODAL, ((COMPONENT, 'U1'), (COMPONENT, 'U2'), )), ))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='S', outputPosition=INTEGRATION_POINT, refinement=(INVARIANT, 
    'Mises'), )
odb = session.odbs['C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb']
session.writeFieldReport(fileName='abaqus.rpt', append=ON, 
    sortItem='Node Label', odb=odb, step=0, frame=1, outputPosition=NODAL, 
    variable=(('E', INTEGRATION_POINT, ((COMPONENT, 'E11'), (COMPONENT, 'E22'), 
    (COMPONENT, 'E33'), (COMPONENT, 'E12'), )), ))
odb = session.odbs['C:/Users/Wagner/Desktop/Projeto FEM/FEM-matlab/Benchmarks/Vaso de Pressao/Job-1.odb']
session.writeFieldReport(fileName='abaqus.rpt', append=ON, 
    sortItem='Node Label', odb=odb, step=0, frame=1, outputPosition=NODAL, 
    variable=(('S', INTEGRATION_POINT, ((COMPONENT, 'S11'), (COMPONENT, 'S22'), 
    (COMPONENT, 'S33'), (COMPONENT, 'S12'), )), ))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='S', outputPosition=INTEGRATION_POINT, refinement=(INVARIANT, 
    'Max. Principal (Abs)'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='S', outputPosition=INTEGRATION_POINT, refinement=(COMPONENT, 
    'S11'), )
session.viewports['Viewport: 1'].enableMultipleColors()
session.viewports['Viewport: 1'].setColor(initialColor='#BDBDBD')
cmap=session.viewports['Viewport: 1'].colorMappings['Set']
session.viewports['Viewport: 1'].setColor(colorMapping=cmap)
session.viewports['Viewport: 1'].disableMultipleColors()
session.viewports['Viewport: 1'].enableMultipleColors()
session.viewports['Viewport: 1'].setColor(initialColor='#BDBDBD')
cmap=session.viewports['Viewport: 1'].colorMappings['Internal set']
session.viewports['Viewport: 1'].setColor(colorMapping=cmap)
session.viewports['Viewport: 1'].disableMultipleColors()
session.viewports['Viewport: 1'].enableMultipleColors()
session.viewports['Viewport: 1'].setColor(initialColor='#BDBDBD')
cmap=session.viewports['Viewport: 1'].colorMappings['Averaging region']
session.viewports['Viewport: 1'].setColor(colorMapping=cmap)
session.viewports['Viewport: 1'].disableMultipleColors()
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.0664, 
    farPlane=24.9336, width=10.6675, height=4.8042, viewOffsetX=-0.705633, 
    viewOffsetY=-0.424509)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.1472, 
    farPlane=24.8528, width=10.7247, height=4.82995, viewOffsetX=-0.615522, 
    viewOffsetY=-0.49965)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.1478, 
    farPlane=24.8522, width=10.7251, height=4.83014, viewOffsetX=-0.87637, 
    viewOffsetY=-0.603767)
session.viewports['Viewport: 1'].view.setValues(width=12.9848, height=5.8478, 
    viewOffsetX=-1.02691, viewOffsetY=-0.68636)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.6145, 
    farPlane=27.1127, width=11.7612, height=5.29675, cameraPosition=(49.483, 
    0.668983, 21.0263), cameraUpVector=(0.0100766, 0.99642, 0.0839401), 
    cameraTarget=(53.8209, 2.26434, 1.56769), viewOffsetX=-0.93014, 
    viewOffsetY=-0.621682)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.9841, 
    farPlane=26.5884, width=12.0396, height=5.42213, cameraPosition=(51.4955, 
    2.13699, 21.2623), cameraUpVector=(0.017416, 0.999751, 0.0139854), 
    cameraTarget=(53.9743, 2.37141, 1.41791), viewOffsetX=-0.952156, 
    viewOffsetY=-0.636397)
session.viewports['Viewport: 1'].view.setValues(width=12.7898, height=5.76001, 
    viewOffsetX=-0.952292, viewOffsetY=-0.675711)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.8779, 
    farPlane=26.6946, width=12.7229, height=5.72989, viewOffsetX=0.265576, 
    viewOffsetY=0.883784)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.877, 
    farPlane=26.6954, width=12.7223, height=5.72958, viewOffsetX=-1.20715, 
    viewOffsetY=-0.116471)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.4333, 
    farPlane=27.5558, width=12.3668, height=5.56949, cameraPosition=(41.215, 
    3.9905, 17.9624), cameraUpVector=(0.0475223, 0.997231, -0.0572001), 
    cameraTarget=(53.0713, 2.50557, 1.92428), viewOffsetX=-1.17342, 
    viewOffsetY=-0.113216)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.4755, 
    farPlane=27.5136, width=11.7043, height=5.27112, viewOffsetX=-1.23443, 
    viewOffsetY=-0.131099)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.5512, 
    farPlane=27.4379, width=11.7616, height=5.29691, viewOffsetX=-0.348057, 
    viewOffsetY=-0.325808)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.3642, 
    farPlane=27.6249, width=14.0476, height=6.32646, viewOffsetX=-0.555405, 
    viewOffsetY=-0.459002)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.5816, 
    farPlane=27.6326, width=14.2463, height=6.41595, cameraPosition=(43.9063, 
    2.52404, 19.6437), cameraUpVector=(0.0355741, 0.999308, 0.0108759), 
    cameraTarget=(53.3077, 2.38148, 1.9917), viewOffsetX=-0.563261, 
    viewOffsetY=-0.465495)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1118, 
    farPlane=27.1025, width=10.3298, height=4.65212, viewOffsetX=-1.0768, 
    viewOffsetY=-0.212708)
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='E', outputPosition=INTEGRATION_POINT, refinement=(INVARIANT, 
    'Max. In-Plane Principal'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='E', outputPosition=INTEGRATION_POINT, refinement=(COMPONENT, 
    'E11'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.055, 
    farPlane=27.1219, width=10.2934, height=4.63573, cameraPosition=(55.8641, 
    -3.59366, 20.5475), cameraUpVector=(0.00187218, 0.960026, 0.279905), 
    cameraTarget=(54.3422, 1.99095, 1.40338), viewOffsetX=-1.073, 
    viewOffsetY=-0.211958)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.3012, 
    farPlane=26.7922, width=10.4513, height=4.70683, cameraPosition=(50.8861, 
    1.45866, 21.454), cameraUpVector=(0.00633928, 0.998965, 0.0450417), 
    cameraTarget=(53.965, 2.32926, 1.7116), viewOffsetX=-1.08946, 
    viewOffsetY=-0.215209)
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='E', outputPosition=INTEGRATION_POINT, refinement=(COMPONENT, 
    'E22'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='E', outputPosition=INTEGRATION_POINT, refinement=(COMPONENT, 
    'E33'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.4694, 
    farPlane=26.5548, width=10.5592, height=4.75541, cameraPosition=(52.362, 
    2.65512, 21.5372), cameraUpVector=(-0.0124401, 0.999859, -0.0113188), 
    cameraTarget=(54.0769, 2.45088, 1.61193), viewOffsetX=-1.1007, 
    viewOffsetY=-0.21743)
session.viewports['Viewport: 1'].odbDisplay.contourOptions.setValues(
    contourType=ISOSURFACE, maxValue=3.25342E-006, minValue=2.82762E-006)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1071, 
    farPlane=26.9119, width=10.3269, height=4.6508, cameraPosition=(50.2443, 
    4.03413, 21.3136), cameraUpVector=(-0.00484476, 0.997083, -0.0761714), 
    cameraTarget=(53.9124, 2.55424, 1.70862), viewOffsetX=-1.07648, 
    viewOffsetY=-0.212647)
session.viewports['Viewport: 1'].odbDisplay.contourOptions.setValues(
    contourType=BANDED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.2307, 
    farPlane=26.8858, width=10.4061, height=4.68649, cameraPosition=(50.8155, 
    0.791626, 21.4162), cameraUpVector=(0.0154485, 0.996908, 0.0770491), 
    cameraTarget=(53.9637, 2.26507, 1.72055), viewOffsetX=-1.08474, 
    viewOffsetY=-0.214279)
session.viewports['Viewport: 1'].odbDisplay.contourOptions.setValues(
    contourType=ISOSURFACE)
session.viewports['Viewport: 1'].odbDisplay.contourOptions.setValues(
    contourType=BANDED)
session.viewports['Viewport: 1'].odbDisplay.contourOptions.setValues(
    contourStyle=CONTINUOUS)
session.viewports['Viewport: 1'].odbDisplay.contourOptions.setValues(
    contourStyle=DISCRETE)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.4555, 
    farPlane=26.5935, width=10.5503, height=4.75141, cameraPosition=(52.4285, 
    1.83509, 21.5429), cameraUpVector=(0.0285941, 0.999212, 0.0275389), 
    cameraTarget=(54.0954, 2.3365, 1.61876), viewOffsetX=-1.09977, 
    viewOffsetY=-0.217247)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.4073, 
    farPlane=26.6359, width=10.5194, height=4.73749, cameraPosition=(51.6164, 
    2.50918, 21.5131), cameraUpVector=(0.0031834, 0.999987, -0.00400352), 
    cameraTarget=(54.0266, 2.42201, 1.65907), viewOffsetX=-1.09655, 
    viewOffsetY=-0.21661)
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='E', outputPosition=INTEGRATION_POINT, refinement=(COMPONENT, 
    'E22'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.5364, 
    farPlane=26.5008, width=10.6022, height=4.77477, cameraPosition=(53.8538, 
    1.40232, 21.5087), cameraUpVector=(0.00468976, 0.998886, 0.0469566), 
    cameraTarget=(54.1947, 2.33971, 1.53358), viewOffsetX=-1.10518, 
    viewOffsetY=-0.218314)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1706, 
    farPlane=26.9202, width=10.3677, height=4.66917, cameraPosition=(48.8367, 
    2.71637, 21.1761), cameraUpVector=(-0.0121222, 0.999794, -0.0162738), 
    cameraTarget=(53.7946, 2.4611, 1.80202), viewOffsetX=-1.08073, 
    viewOffsetY=-0.213485)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.0833, 
    farPlane=27.0063, width=10.3117, height=4.64397, cameraPosition=(48.0333, 
    3.19159, 20.9922), cameraUpVector=(0.0160179, 0.999324, -0.0330809), 
    cameraTarget=(53.7307, 2.46606, 1.83461), viewOffsetX=-1.0749, 
    viewOffsetY=-0.212332)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.4972, 
    farPlane=26.4948, width=10.5771, height=4.76348, cameraPosition=(53.1893, 
    3.12409, 21.5218), cameraUpVector=(0.00896199, 0.99942, -0.0328427), 
    cameraTarget=(54.1525, 2.45931, 1.55608), viewOffsetX=-1.10256, 
    viewOffsetY=-0.217796)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1809, 
    farPlane=26.1756, width=10.3743, height=4.67215, cameraPosition=(50.6099, 
    23.0345, -4.7681), cameraUpVector=(0.884109, -0.000980171, -0.46728), 
    cameraTarget=(53.4638, 4.00121, 0.671432), viewOffsetX=-1.08142, 
    viewOffsetY=-0.21362)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.0092, 
    farPlane=26.8366, width=10.2642, height=4.62257, cameraPosition=(34.4064, 
    -5.65171, -7.02272), cameraUpVector=(0.486466, -0.745343, -0.455867), 
    cameraTarget=(51.8787, 2.50319, -1.71093), viewOffsetX=-1.06994, 
    viewOffsetY=-0.211353)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.2611, 
    farPlane=26.6178, width=10.4257, height=4.6953, cameraPosition=(34.3054, 
    3.29062, -10.5829), cameraUpVector=(-0.0951114, -0.992975, 0.0703882), 
    cameraTarget=(52.2752, 2.18684, -1.87251), viewOffsetX=-1.08677, 
    viewOffsetY=-0.214678)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.7819, 
    farPlane=27.0326, width=10.1184, height=4.55692, cameraPosition=(53.0867, 
    -5.07479, -20.0747), cameraUpVector=(0.258841, -0.907416, 0.331056), 
    cameraTarget=(54.3451, 2.0822, -1.44152), viewOffsetX=-1.05474, 
    viewOffsetY=-0.208351)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.7729, 
    farPlane=26.9885, width=10.1126, height=4.55431, cameraPosition=(52.1098, 
    -14.9116, 12.4614), cameraUpVector=(0.648178, 0.410203, 0.64156), 
    cameraTarget=(54.1044, 0.878807, 0.350008), viewOffsetX=-1.05414, 
    viewOffsetY=-0.208232)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.7015, 
    farPlane=27.0684, width=10.0668, height=4.53368, cameraPosition=(59.603, 
    5.77748, 20.1225), cameraUpVector=(0.563795, 0.770694, -0.296928), 
    cameraTarget=(54.6092, 2.10459, 1.10745), viewOffsetX=-1.04937, 
    viewOffsetY=-0.207289)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.0215, 
    farPlane=26.7458, width=10.272, height=4.62608, cameraPosition=(60.6053, 
    2.92284, 20.0292), cameraUpVector=(0.00629747, 0.999938, -0.0091739), 
    cameraTarget=(54.7527, 2.78419, 0.905152), viewOffsetX=-1.07076, 
    viewOffsetY=-0.211514)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1165, 
    farPlane=26.6531, width=10.3329, height=4.65352, cameraPosition=(57.4166, 
    1.45026, 20.9452), cameraUpVector=(-0.0274761, 0.997202, 0.0695158), 
    cameraTarget=(54.582, 2.74927, 1.18973), viewOffsetX=-1.07711, 
    viewOffsetY=-0.212769)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.3766, 
    farPlane=26.3955, width=10.4997, height=4.72862, cameraPosition=(54.4327, 
    0.987808, 21.3329), cameraUpVector=(-0.0281292, 0.9959, 0.0859799), 
    cameraTarget=(54.4021, 2.70717, 1.4069), viewOffsetX=-1.09449, 
    viewOffsetY=-0.216203)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1371, 
    farPlane=26.6391, width=10.3462, height=4.65948, cameraPosition=(50.6549, 
    2.36946, 21.3093), cameraUpVector=(0.00867557, 0.999751, 0.0205538), 
    cameraTarget=(54.1469, 2.74388, 1.62001), viewOffsetX=-1.07849, 
    viewOffsetY=-0.213042)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.5539, 
    farPlane=26.219, width=10.6134, height=4.77984, cameraPosition=(54.6119, 
    2.79782, 21.3719), cameraUpVector=(0.00683546, 0.999976, -0.0010118), 
    cameraTarget=(54.4237, 2.7788, 1.3727), viewOffsetX=-1.10635, 
    viewOffsetY=-0.218544)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.3306, 
    farPlane=27.4416, width=9.82912, height=4.42663, cameraPosition=(49.7328, 
    -7.93893, 18.4362), cameraUpVector=(-0.0419238, 0.865899, 0.49846), 
    cameraTarget=(54.0617, 1.9595, 1.6051), viewOffsetX=-1.0246, 
    viewOffsetY=-0.202395)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.4884, 
    farPlane=26.2809, width=10.5714, height=4.76093, cameraPosition=(47.5725, 
    -17.8194, 4.14546), cameraUpVector=(-0.250364, 0.243797, 0.936953), 
    cameraTarget=(53.7885, 0.916493, 0.931259), viewOffsetX=-1.10198, 
    viewOffsetY=-0.21768)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.2108, 
    farPlane=26.5576, width=10.3934, height=4.68079, cameraPosition=(47.8239, 
    -17.8525, -4.29893), cameraUpVector=(-0.308606, -0.13461, 0.941617), 
    cameraTarget=(53.7715, 0.680758, 0.299714), viewOffsetX=-1.08343, 
    viewOffsetY=-0.214016)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.2339, 
    farPlane=27.5373, width=9.7671, height=4.39873, cameraPosition=(46.6148, 
    -8.07266, -17.5225), cameraUpVector=(-0.686941, -0.494964, 0.532093), 
    cameraTarget=(53.2499, 0.684547, -0.810518), viewOffsetX=-1.01814, 
    viewOffsetY=-0.201119)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.3685, 
    farPlane=27.4136, width=9.85338, height=4.43759, cameraPosition=(43.4019, 
    16.6757, -12.9169), cameraUpVector=(-0.800492, 0.0248252, 0.598829), 
    cameraTarget=(51.5606, 2.48692, -1.42264), viewOffsetX=-1.02713, 
    viewOffsetY=-0.202896)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.6792, 
    farPlane=26.107, width=10.6938, height=4.81606, cameraPosition=(48.8666, 
    23.2048, 3.75722), cameraUpVector=(-0.654363, -0.245998, 0.715048), 
    cameraTarget=(51.5467, 3.83749, -0.45322), viewOffsetX=-1.11473, 
    viewOffsetY=-0.220201)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.5941, 
    farPlane=27.1899, width=9.99808, height=4.50273, cameraPosition=(67.1004, 
    5.71183, 15.8204), cameraUpVector=(-0.742204, 0.0667307, 0.666844), 
    cameraTarget=(53.6975, 4.05404, 1.0686), viewOffsetX=-1.04221, 
    viewOffsetY=-0.205875)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.2435, 
    farPlane=26.5525, width=10.4144, height=4.69023, cameraPosition=(51.4844, 
    1.52808, 21.3726), cameraUpVector=(-0.998384, -0.000562474, -0.0568244), 
    cameraTarget=(52.6126, 3.76326, 1.52991), viewOffsetX=-1.08561, 
    viewOffsetY=-0.214448)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.9394, 
    farPlane=26.8666, width=10.2194, height=4.60242, cameraPosition=(36.5556, 
    -9.90403, 6.02488), cameraUpVector=(-0.60559, 0.795115, 0.0324554), 
    cameraTarget=(52.0056, 2.03946, 1.70611), viewOffsetX=-1.06528, 
    viewOffsetY=-0.210433)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.8738, 
    farPlane=26.9327, width=10.1774, height=4.58349, cameraPosition=(34.7677, 
    -4.00826, 9.26563), cameraUpVector=(-0.278903, 0.948751, 0.148608), 
    cameraTarget=(52.2507, 2.28941, 1.87075), viewOffsetX=-1.0609, 
    viewOffsetY=-0.209568)
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.7095, 
    farPlane=27.0932, width=10.0721, height=4.53606, cameraPosition=(49.25, 
    -1.3096, 20.7761), cameraUpVector=(-0.0932639, 0.979863, 0.176553), 
    cameraTarget=(54.01, 2.57283, 1.74275), viewOffsetX=-1.04992, 
    viewOffsetY=-0.207399)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1839, 
    farPlane=26.6182, width=10.3763, height=4.67304, cameraPosition=(53.2112, 
    -0.238607, 21.2739), cameraUpVector=(0.0486777, 0.988936, 0.140132), 
    cameraTarget=(54.3475, 2.5079, 1.49597), viewOffsetX=-1.08163, 
    viewOffsetY=-0.213662)
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(INVARIANT, 
    'Magnitude'), )
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(COMPONENT, 'U2'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=15.9955, 
    farPlane=26.8072, width=10.2555, height=4.61865, cameraPosition=(50.8362, 
    0.598243, 21.2577), cameraUpVector=(-0.00537383, 0.99479, 0.101801), 
    cameraTarget=(54.1628, 2.62363, 1.64052), viewOffsetX=-1.06904, 
    viewOffsetY=-0.211175)
session.viewports['Viewport: 1'].view.setValues(nearPlane=16.1069, 
    farPlane=26.6958, width=10.3269, height=4.6508, cameraPosition=(51.7284, 
    0.779594, 21.3445), cameraUpVector=(0.00935843, 0.99552, 0.0940871), 
    cameraTarget=(54.2332, 2.62318, 1.58777), viewOffsetX=-1.07648, 
    viewOffsetY=-0.212645)
mdb.save()
#: The model database has been saved to "C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Vaso de Pressao\VasoPressao.cae".
mdb.save()
#: The model database has been saved to "C:\Users\Wagner\Desktop\Projeto FEM\FEM-matlab\Benchmarks\Vaso de Pressao\VasoPressao.cae".
