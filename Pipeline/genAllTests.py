import sys, os, subprocess

##################### GEN CONSISTINCY TESTS #########################

# inputs
bezierPreped = 'bezierPreped'
bezierMirrorPreped = 'bezierMirrorPreped'
curvePreped = 'curvePreped'
curveMirrorPreped = 'curveMirrorPreped'
ringPreped = 'ringPreped'
origExt = "Orig"
remeshExt = "Remesh"
force = 10000000

# bezier parameters
# bezier mirror parameters
# curve parameters
# curve mirror parameters
# ring parameters

# create the bezier spring
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateBSpring.py', '--createBase', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', bezierPreped + remeshExt, '-s', '-c'])
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateBSpring.py', '--createBaseOrig', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', bezierPreped + origExt, '-s', '-c'])
# create the bezier mirror spring
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateBSpringMirror.py', '--createBase', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', bezierMirrorPreped + remeshExt, '-s', '-c'])
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateBSpringMirror.py', '--createBaseOrig', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', bezierMirrorPreped + origExt, '-s', '-c'])
# create the curve spring
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateCSpring.py', '--createBase', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', curvePreped + remeshExt, '-s', '-c'])
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateCSpring.py', '--createBaseOrig', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', curvePreped + origExt, '-s', '-c'])
# create the curve mirror spring
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateCSpringMirror.py', '--createBase', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', curveMirrorPreped + remeshExt, '-s', '-c'])
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateCSpringMirror.py', '--createBaseOrig', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', curveMirrorPreped + origExt, '-s', '-c'])
# create the ring spring
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateRingSpring.py', '--createBase', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', ringPreped + remeshExt, '-s', '-c'])
subprocess.check_output(['python', 'pipeline.py', '--template', 'Templates/templateRingSpring.py', '--createBaseOrig', 'optimizeTest.txt', '--sConfig', 'slic3rConfig.ini', '--preped', ringPreped + origExt, '-s', '-c'])


#######################################################################
