цо	
шО
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8ФЉ
~
conv01/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv01/kernel
w
!conv01/kernel/Read/ReadVariableOpReadVariableOpconv01/kernel*&
_output_shapes
:@*
dtype0
n
conv01/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv01/bias
g
conv01/bias/Read/ReadVariableOpReadVariableOpconv01/bias*
_output_shapes
:@*
dtype0

conv02/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv02/kernel
x
!conv02/kernel/Read/ReadVariableOpReadVariableOpconv02/kernel*'
_output_shapes
:@*
dtype0
o
conv02/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv02/bias
h
conv02/bias/Read/ReadVariableOpReadVariableOpconv02/bias*
_output_shapes	
:*
dtype0

conv03/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv03/kernel
y
!conv03/kernel/Read/ReadVariableOpReadVariableOpconv03/kernel*(
_output_shapes
:*
dtype0
o
conv03/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv03/bias
h
conv03/bias/Read/ReadVariableOpReadVariableOpconv03/bias*
_output_shapes	
:*
dtype0
y
dens01/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ў*
shared_namedens01/kernel
r
!dens01/kernel/Read/ReadVariableOpReadVariableOpdens01/kernel*!
_output_shapes
:Ў*
dtype0
o
dens01/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedens01/bias
h
dens01/bias/Read/ReadVariableOpReadVariableOpdens01/bias*
_output_shapes	
:*
dtype0
w
dens02/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedens02/kernel
p
!dens02/kernel/Read/ReadVariableOpReadVariableOpdens02/kernel*
_output_shapes
:	*
dtype0
n
dens02/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedens02/bias
g
dens02/bias/Read/ReadVariableOpReadVariableOpdens02/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv01/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv01/kernel/m

(Adam/conv01/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv01/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/conv01/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv01/bias/m
u
&Adam/conv01/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv01/bias/m*
_output_shapes
:@*
dtype0

Adam/conv02/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv02/kernel/m

(Adam/conv02/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv02/kernel/m*'
_output_shapes
:@*
dtype0
}
Adam/conv02/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv02/bias/m
v
&Adam/conv02/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv02/bias/m*
_output_shapes	
:*
dtype0

Adam/conv03/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv03/kernel/m

(Adam/conv03/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv03/kernel/m*(
_output_shapes
:*
dtype0
}
Adam/conv03/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv03/bias/m
v
&Adam/conv03/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv03/bias/m*
_output_shapes	
:*
dtype0

Adam/dens01/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ў*%
shared_nameAdam/dens01/kernel/m

(Adam/dens01/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dens01/kernel/m*!
_output_shapes
:Ў*
dtype0
}
Adam/dens01/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dens01/bias/m
v
&Adam/dens01/bias/m/Read/ReadVariableOpReadVariableOpAdam/dens01/bias/m*
_output_shapes	
:*
dtype0

Adam/dens02/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dens02/kernel/m
~
(Adam/dens02/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dens02/kernel/m*
_output_shapes
:	*
dtype0
|
Adam/dens02/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dens02/bias/m
u
&Adam/dens02/bias/m/Read/ReadVariableOpReadVariableOpAdam/dens02/bias/m*
_output_shapes
:*
dtype0

Adam/conv01/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv01/kernel/v

(Adam/conv01/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv01/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/conv01/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv01/bias/v
u
&Adam/conv01/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv01/bias/v*
_output_shapes
:@*
dtype0

Adam/conv02/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv02/kernel/v

(Adam/conv02/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv02/kernel/v*'
_output_shapes
:@*
dtype0
}
Adam/conv02/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv02/bias/v
v
&Adam/conv02/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv02/bias/v*
_output_shapes	
:*
dtype0

Adam/conv03/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv03/kernel/v

(Adam/conv03/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv03/kernel/v*(
_output_shapes
:*
dtype0
}
Adam/conv03/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv03/bias/v
v
&Adam/conv03/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv03/bias/v*
_output_shapes	
:*
dtype0

Adam/dens01/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ў*%
shared_nameAdam/dens01/kernel/v

(Adam/dens01/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dens01/kernel/v*!
_output_shapes
:Ў*
dtype0
}
Adam/dens01/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dens01/bias/v
v
&Adam/dens01/bias/v/Read/ReadVariableOpReadVariableOpAdam/dens01/bias/v*
_output_shapes	
:*
dtype0

Adam/dens02/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dens02/kernel/v
~
(Adam/dens02/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dens02/kernel/v*
_output_shapes
:	*
dtype0
|
Adam/dens02/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dens02/bias/v
u
&Adam/dens02/bias/v/Read/ReadVariableOpReadVariableOpAdam/dens02/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
І=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*с<
valueз<Bд< BЭ<
л
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
 regularization_losses
!	variables
"	keras_api
h

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
R
)trainable_variables
*regularization_losses
+	variables
,	keras_api
h

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
h

3kernel
4bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
ў
9iter

:beta_1

;beta_2
	<decay
=learning_ratemvmwmxmy#mz$m{-m|.m}3m~4mvvvv#v$v-v.v3v4v
F
0
1
2
3
#4
$5
-6
.7
38
49
 
F
0
1
2
3
#4
$5
-6
.7
38
49
­

trainable_variables
>layer_metrics
?layer_regularization_losses
regularization_losses

@layers
Anon_trainable_variables
Bmetrics
	variables
 
YW
VARIABLE_VALUEconv01/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv01/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
Clayer_metrics
Dlayer_regularization_losses
regularization_losses

Elayers
Fnon_trainable_variables
Gmetrics
	variables
 
 
 
­
trainable_variables
Hlayer_metrics
Ilayer_regularization_losses
regularization_losses

Jlayers
Knon_trainable_variables
Lmetrics
	variables
YW
VARIABLE_VALUEconv02/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv02/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
Mlayer_metrics
Nlayer_regularization_losses
regularization_losses

Olayers
Pnon_trainable_variables
Qmetrics
	variables
 
 
 
­
trainable_variables
Rlayer_metrics
Slayer_regularization_losses
 regularization_losses

Tlayers
Unon_trainable_variables
Vmetrics
!	variables
YW
VARIABLE_VALUEconv03/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv03/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
­
%trainable_variables
Wlayer_metrics
Xlayer_regularization_losses
&regularization_losses

Ylayers
Znon_trainable_variables
[metrics
'	variables
 
 
 
­
)trainable_variables
\layer_metrics
]layer_regularization_losses
*regularization_losses

^layers
_non_trainable_variables
`metrics
+	variables
YW
VARIABLE_VALUEdens01/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdens01/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
­
/trainable_variables
alayer_metrics
blayer_regularization_losses
0regularization_losses

clayers
dnon_trainable_variables
emetrics
1	variables
YW
VARIABLE_VALUEdens02/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdens02/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 

30
41
­
5trainable_variables
flayer_metrics
glayer_regularization_losses
6regularization_losses

hlayers
inon_trainable_variables
jmetrics
7	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7
 

k0
l1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	mtotal
	ncount
o	variables
p	keras_api
D
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

m0
n1

o	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

t	variables
|z
VARIABLE_VALUEAdam/conv01/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv01/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv02/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv02/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv03/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv03/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dens01/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dens01/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dens02/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dens02/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv01/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv01/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv02/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv02/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv03/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv03/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dens01/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dens01/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dens02/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dens02/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv01_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ9v*
dtype0*$
shape:џџџџџџџџџ9v
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv01_inputconv01/kernelconv01/biasconv02/kernelconv02/biasconv03/kernelconv03/biasdens01/kerneldens01/biasdens02/kerneldens02/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_4782
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv01/kernel/Read/ReadVariableOpconv01/bias/Read/ReadVariableOp!conv02/kernel/Read/ReadVariableOpconv02/bias/Read/ReadVariableOp!conv03/kernel/Read/ReadVariableOpconv03/bias/Read/ReadVariableOp!dens01/kernel/Read/ReadVariableOpdens01/bias/Read/ReadVariableOp!dens02/kernel/Read/ReadVariableOpdens02/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv01/kernel/m/Read/ReadVariableOp&Adam/conv01/bias/m/Read/ReadVariableOp(Adam/conv02/kernel/m/Read/ReadVariableOp&Adam/conv02/bias/m/Read/ReadVariableOp(Adam/conv03/kernel/m/Read/ReadVariableOp&Adam/conv03/bias/m/Read/ReadVariableOp(Adam/dens01/kernel/m/Read/ReadVariableOp&Adam/dens01/bias/m/Read/ReadVariableOp(Adam/dens02/kernel/m/Read/ReadVariableOp&Adam/dens02/bias/m/Read/ReadVariableOp(Adam/conv01/kernel/v/Read/ReadVariableOp&Adam/conv01/bias/v/Read/ReadVariableOp(Adam/conv02/kernel/v/Read/ReadVariableOp&Adam/conv02/bias/v/Read/ReadVariableOp(Adam/conv03/kernel/v/Read/ReadVariableOp&Adam/conv03/bias/v/Read/ReadVariableOp(Adam/dens01/kernel/v/Read/ReadVariableOp&Adam/dens01/bias/v/Read/ReadVariableOp(Adam/dens02/kernel/v/Read/ReadVariableOp&Adam/dens02/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_5169
а
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv01/kernelconv01/biasconv02/kernelconv02/biasconv03/kernelconv03/biasdens01/kerneldens01/biasdens02/kerneldens02/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv01/kernel/mAdam/conv01/bias/mAdam/conv02/kernel/mAdam/conv02/bias/mAdam/conv03/kernel/mAdam/conv03/bias/mAdam/dens01/kernel/mAdam/dens01/bias/mAdam/dens02/kernel/mAdam/dens02/bias/mAdam/conv01/kernel/vAdam/conv01/bias/vAdam/conv02/kernel/vAdam/conv02/bias/vAdam/conv03/kernel/vAdam/conv03/bias/vAdam/dens01/kernel/vAdam/dens01/bias/vAdam/dens02/kernel/vAdam/dens02/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_5296
э
і
)__inference_sequential_layer_call_fn_4893

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_46672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
ј
z
%__inference_conv03_layer_call_fn_4978

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv03_layer_call_and_return_conditional_losses_45152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ъ

й
@__inference_conv01_layer_call_and_return_conditional_losses_4459

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ9v@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ9v::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
A

__inference__wrapped_model_4420
conv01_input4
0sequential_conv01_conv2d_readvariableop_resource5
1sequential_conv01_biasadd_readvariableop_resource4
0sequential_conv02_conv2d_readvariableop_resource5
1sequential_conv02_biasadd_readvariableop_resource4
0sequential_conv03_conv2d_readvariableop_resource5
1sequential_conv03_biasadd_readvariableop_resource4
0sequential_dens01_matmul_readvariableop_resource5
1sequential_dens01_biasadd_readvariableop_resource4
0sequential_dens02_matmul_readvariableop_resource5
1sequential_dens02_biasadd_readvariableop_resource
identityЂ(sequential/conv01/BiasAdd/ReadVariableOpЂ'sequential/conv01/Conv2D/ReadVariableOpЂ(sequential/conv02/BiasAdd/ReadVariableOpЂ'sequential/conv02/Conv2D/ReadVariableOpЂ(sequential/conv03/BiasAdd/ReadVariableOpЂ'sequential/conv03/Conv2D/ReadVariableOpЂ(sequential/dens01/BiasAdd/ReadVariableOpЂ'sequential/dens01/MatMul/ReadVariableOpЂ(sequential/dens02/BiasAdd/ReadVariableOpЂ'sequential/dens02/MatMul/ReadVariableOpЫ
'sequential/conv01/Conv2D/ReadVariableOpReadVariableOp0sequential_conv01_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/conv01/Conv2D/ReadVariableOpп
sequential/conv01/Conv2DConv2Dconv01_input/sequential/conv01/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@*
paddingSAME*
strides
2
sequential/conv01/Conv2DТ
(sequential/conv01/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv01_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv01/BiasAdd/ReadVariableOpа
sequential/conv01/BiasAddBiasAdd!sequential/conv01/Conv2D:output:00sequential/conv01/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
sequential/conv01/BiasAdd
sequential/conv01/ReluRelu"sequential/conv01/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
sequential/conv01/Reluд
sequential/pool01/MaxPoolMaxPool$sequential/conv01/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ;@*
ksize
*
paddingVALID*
strides
2
sequential/pool01/MaxPoolЬ
'sequential/conv02/Conv2D/ReadVariableOpReadVariableOp0sequential_conv02_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'sequential/conv02/Conv2D/ReadVariableOpі
sequential/conv02/Conv2DConv2D"sequential/pool01/MaxPool:output:0/sequential/conv02/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;*
paddingSAME*
strides
2
sequential/conv02/Conv2DУ
(sequential/conv02/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv02_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(sequential/conv02/BiasAdd/ReadVariableOpб
sequential/conv02/BiasAddBiasAdd!sequential/conv02/Conv2D:output:00sequential/conv02/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
sequential/conv02/BiasAdd
sequential/conv02/ReluRelu"sequential/conv02/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
sequential/conv02/Reluе
sequential/pool02/MaxPoolMaxPool$sequential/conv02/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
sequential/pool02/MaxPoolЭ
'sequential/conv03/Conv2D/ReadVariableOpReadVariableOp0sequential_conv03_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'sequential/conv03/Conv2D/ReadVariableOpі
sequential/conv03/Conv2DConv2D"sequential/pool02/MaxPool:output:0/sequential/conv03/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
sequential/conv03/Conv2DУ
(sequential/conv03/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv03_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(sequential/conv03/BiasAdd/ReadVariableOpб
sequential/conv03/BiasAddBiasAdd!sequential/conv03/Conv2D:output:00sequential/conv03/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
sequential/conv03/BiasAdd
sequential/conv03/ReluRelu"sequential/conv03/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
sequential/conv03/Relu
sequential/flat01/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ W  2
sequential/flat01/ConstН
sequential/flat01/ReshapeReshape$sequential/conv03/Relu:activations:0 sequential/flat01/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2
sequential/flat01/ReshapeЦ
'sequential/dens01/MatMul/ReadVariableOpReadVariableOp0sequential_dens01_matmul_readvariableop_resource*!
_output_shapes
:Ў*
dtype02)
'sequential/dens01/MatMul/ReadVariableOpЦ
sequential/dens01/MatMulMatMul"sequential/flat01/Reshape:output:0/sequential/dens01/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/dens01/MatMulУ
(sequential/dens01/BiasAdd/ReadVariableOpReadVariableOp1sequential_dens01_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(sequential/dens01/BiasAdd/ReadVariableOpЪ
sequential/dens01/BiasAddBiasAdd"sequential/dens01/MatMul:product:00sequential/dens01/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/dens01/BiasAdd
sequential/dens01/ReluRelu"sequential/dens01/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/dens01/ReluФ
'sequential/dens02/MatMul/ReadVariableOpReadVariableOp0sequential_dens02_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02)
'sequential/dens02/MatMul/ReadVariableOpЧ
sequential/dens02/MatMulMatMul$sequential/dens01/Relu:activations:0/sequential/dens02/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/dens02/MatMulТ
(sequential/dens02/BiasAdd/ReadVariableOpReadVariableOp1sequential_dens02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/dens02/BiasAdd/ReadVariableOpЩ
sequential/dens02/BiasAddBiasAdd"sequential/dens02/MatMul:product:00sequential/dens02/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/dens02/BiasAdd
sequential/dens02/SoftmaxSoftmax"sequential/dens02/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/dens02/Softmax 
IdentityIdentity#sequential/dens02/Softmax:softmax:0)^sequential/conv01/BiasAdd/ReadVariableOp(^sequential/conv01/Conv2D/ReadVariableOp)^sequential/conv02/BiasAdd/ReadVariableOp(^sequential/conv02/Conv2D/ReadVariableOp)^sequential/conv03/BiasAdd/ReadVariableOp(^sequential/conv03/Conv2D/ReadVariableOp)^sequential/dens01/BiasAdd/ReadVariableOp(^sequential/dens01/MatMul/ReadVariableOp)^sequential/dens02/BiasAdd/ReadVariableOp(^sequential/dens02/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2T
(sequential/conv01/BiasAdd/ReadVariableOp(sequential/conv01/BiasAdd/ReadVariableOp2R
'sequential/conv01/Conv2D/ReadVariableOp'sequential/conv01/Conv2D/ReadVariableOp2T
(sequential/conv02/BiasAdd/ReadVariableOp(sequential/conv02/BiasAdd/ReadVariableOp2R
'sequential/conv02/Conv2D/ReadVariableOp'sequential/conv02/Conv2D/ReadVariableOp2T
(sequential/conv03/BiasAdd/ReadVariableOp(sequential/conv03/BiasAdd/ReadVariableOp2R
'sequential/conv03/Conv2D/ReadVariableOp'sequential/conv03/Conv2D/ReadVariableOp2T
(sequential/dens01/BiasAdd/ReadVariableOp(sequential/dens01/BiasAdd/ReadVariableOp2R
'sequential/dens01/MatMul/ReadVariableOp'sequential/dens01/MatMul/ReadVariableOp2T
(sequential/dens02/BiasAdd/ReadVariableOp(sequential/dens02/BiasAdd/ReadVariableOp2R
'sequential/dens02/MatMul/ReadVariableOp'sequential/dens02/MatMul/ReadVariableOp:] Y
/
_output_shapes
:џџџџџџџџџ9v
&
_user_specified_nameconv01_input
г

й
@__inference_conv03_layer_call_and_return_conditional_losses_4515

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і	
й
@__inference_dens01_layer_call_and_return_conditional_losses_5000

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Ў*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџЎ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:џџџџџџџџџЎ
 
_user_specified_nameinputs
ѕ	
й
@__inference_dens02_layer_call_and_return_conditional_losses_4583

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ"
В
D__inference_sequential_layer_call_and_return_conditional_losses_4667

inputs
conv01_4638
conv01_4640
conv02_4644
conv02_4646
conv03_4650
conv03_4652
dens01_4656
dens01_4658
dens02_4661
dens02_4663
identityЂconv01/StatefulPartitionedCallЂconv02/StatefulPartitionedCallЂconv03/StatefulPartitionedCallЂdens01/StatefulPartitionedCallЂdens02/StatefulPartitionedCall
conv01/StatefulPartitionedCallStatefulPartitionedCallinputsconv01_4638conv01_4640*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ9v@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv01_layer_call_and_return_conditional_losses_44592 
conv01/StatefulPartitionedCallѕ
pool01/PartitionedCallPartitionedCall'conv01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool01_layer_call_and_return_conditional_losses_44262
pool01/PartitionedCallІ
conv02/StatefulPartitionedCallStatefulPartitionedCallpool01/PartitionedCall:output:0conv02_4644conv02_4646*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv02_layer_call_and_return_conditional_losses_44872 
conv02/StatefulPartitionedCallі
pool02/PartitionedCallPartitionedCall'conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool02_layer_call_and_return_conditional_losses_44382
pool02/PartitionedCallІ
conv03/StatefulPartitionedCallStatefulPartitionedCallpool02/PartitionedCall:output:0conv03_4650conv03_4652*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv03_layer_call_and_return_conditional_losses_45152 
conv03/StatefulPartitionedCallя
flat01/PartitionedCallPartitionedCall'conv03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџЎ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat01_layer_call_and_return_conditional_losses_45372
flat01/PartitionedCall
dens01/StatefulPartitionedCallStatefulPartitionedCallflat01/PartitionedCall:output:0dens01_4656dens01_4658*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens01_layer_call_and_return_conditional_losses_45562 
dens01/StatefulPartitionedCallЅ
dens02/StatefulPartitionedCallStatefulPartitionedCall'dens01/StatefulPartitionedCall:output:0dens02_4661dens02_4663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens02_layer_call_and_return_conditional_losses_45832 
dens02/StatefulPartitionedCall 
IdentityIdentity'dens02/StatefulPartitionedCall:output:0^conv01/StatefulPartitionedCall^conv02/StatefulPartitionedCall^conv03/StatefulPartitionedCall^dens01/StatefulPartitionedCall^dens02/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2@
conv01/StatefulPartitionedCallconv01/StatefulPartitionedCall2@
conv02/StatefulPartitionedCallconv02/StatefulPartitionedCall2@
conv03/StatefulPartitionedCallconv03/StatefulPartitionedCall2@
dens01/StatefulPartitionedCalldens01/StatefulPartitionedCall2@
dens02/StatefulPartitionedCalldens02/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
џ
ќ
)__inference_sequential_layer_call_fn_4690
conv01_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallconv01_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_46672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ9v
&
_user_specified_nameconv01_input
к4
б
D__inference_sequential_layer_call_and_return_conditional_losses_4868

inputs)
%conv01_conv2d_readvariableop_resource*
&conv01_biasadd_readvariableop_resource)
%conv02_conv2d_readvariableop_resource*
&conv02_biasadd_readvariableop_resource)
%conv03_conv2d_readvariableop_resource*
&conv03_biasadd_readvariableop_resource)
%dens01_matmul_readvariableop_resource*
&dens01_biasadd_readvariableop_resource)
%dens02_matmul_readvariableop_resource*
&dens02_biasadd_readvariableop_resource
identityЂconv01/BiasAdd/ReadVariableOpЂconv01/Conv2D/ReadVariableOpЂconv02/BiasAdd/ReadVariableOpЂconv02/Conv2D/ReadVariableOpЂconv03/BiasAdd/ReadVariableOpЂconv03/Conv2D/ReadVariableOpЂdens01/BiasAdd/ReadVariableOpЂdens01/MatMul/ReadVariableOpЂdens02/BiasAdd/ReadVariableOpЂdens02/MatMul/ReadVariableOpЊ
conv01/Conv2D/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv01/Conv2D/ReadVariableOpИ
conv01/Conv2DConv2Dinputs$conv01/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@*
paddingSAME*
strides
2
conv01/Conv2DЁ
conv01/BiasAdd/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv01/BiasAdd/ReadVariableOpЄ
conv01/BiasAddBiasAddconv01/Conv2D:output:0%conv01/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
conv01/BiasAddu
conv01/ReluReluconv01/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
conv01/ReluГ
pool01/MaxPoolMaxPoolconv01/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ;@*
ksize
*
paddingVALID*
strides
2
pool01/MaxPoolЋ
conv02/Conv2D/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
conv02/Conv2D/ReadVariableOpЪ
conv02/Conv2DConv2Dpool01/MaxPool:output:0$conv02/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;*
paddingSAME*
strides
2
conv02/Conv2DЂ
conv02/BiasAdd/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv02/BiasAdd/ReadVariableOpЅ
conv02/BiasAddBiasAddconv02/Conv2D:output:0%conv02/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
conv02/BiasAddv
conv02/ReluReluconv02/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
conv02/ReluД
pool02/MaxPoolMaxPoolconv02/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
pool02/MaxPoolЌ
conv03/Conv2D/ReadVariableOpReadVariableOp%conv03_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
conv03/Conv2D/ReadVariableOpЪ
conv03/Conv2DConv2Dpool02/MaxPool:output:0$conv03/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv03/Conv2DЂ
conv03/BiasAdd/ReadVariableOpReadVariableOp&conv03_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv03/BiasAdd/ReadVariableOpЅ
conv03/BiasAddBiasAddconv03/Conv2D:output:0%conv03/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv03/BiasAddv
conv03/ReluReluconv03/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv03/Relum
flat01/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ W  2
flat01/Const
flat01/ReshapeReshapeconv03/Relu:activations:0flat01/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2
flat01/ReshapeЅ
dens01/MatMul/ReadVariableOpReadVariableOp%dens01_matmul_readvariableop_resource*!
_output_shapes
:Ў*
dtype02
dens01/MatMul/ReadVariableOp
dens01/MatMulMatMulflat01/Reshape:output:0$dens01/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dens01/MatMulЂ
dens01/BiasAdd/ReadVariableOpReadVariableOp&dens01_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dens01/BiasAdd/ReadVariableOp
dens01/BiasAddBiasAdddens01/MatMul:product:0%dens01/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dens01/BiasAddn
dens01/ReluReludens01/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dens01/ReluЃ
dens02/MatMul/ReadVariableOpReadVariableOp%dens02_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dens02/MatMul/ReadVariableOp
dens02/MatMulMatMuldens01/Relu:activations:0$dens02/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dens02/MatMulЁ
dens02/BiasAdd/ReadVariableOpReadVariableOp&dens02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dens02/BiasAdd/ReadVariableOp
dens02/BiasAddBiasAdddens02/MatMul:product:0%dens02/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dens02/BiasAddv
dens02/SoftmaxSoftmaxdens02/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dens02/SoftmaxЇ
IdentityIdentitydens02/Softmax:softmax:0^conv01/BiasAdd/ReadVariableOp^conv01/Conv2D/ReadVariableOp^conv02/BiasAdd/ReadVariableOp^conv02/Conv2D/ReadVariableOp^conv03/BiasAdd/ReadVariableOp^conv03/Conv2D/ReadVariableOp^dens01/BiasAdd/ReadVariableOp^dens01/MatMul/ReadVariableOp^dens02/BiasAdd/ReadVariableOp^dens02/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2>
conv01/BiasAdd/ReadVariableOpconv01/BiasAdd/ReadVariableOp2<
conv01/Conv2D/ReadVariableOpconv01/Conv2D/ReadVariableOp2>
conv02/BiasAdd/ReadVariableOpconv02/BiasAdd/ReadVariableOp2<
conv02/Conv2D/ReadVariableOpconv02/Conv2D/ReadVariableOp2>
conv03/BiasAdd/ReadVariableOpconv03/BiasAdd/ReadVariableOp2<
conv03/Conv2D/ReadVariableOpconv03/Conv2D/ReadVariableOp2>
dens01/BiasAdd/ReadVariableOpdens01/BiasAdd/ReadVariableOp2<
dens01/MatMul/ReadVariableOpdens01/MatMul/ReadVariableOp2>
dens02/BiasAdd/ReadVariableOpdens02/BiasAdd/ReadVariableOp2<
dens02/MatMul/ReadVariableOpdens02/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs

A
%__inference_pool02_layer_call_fn_4444

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool02_layer_call_and_return_conditional_losses_44382
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к4
б
D__inference_sequential_layer_call_and_return_conditional_losses_4825

inputs)
%conv01_conv2d_readvariableop_resource*
&conv01_biasadd_readvariableop_resource)
%conv02_conv2d_readvariableop_resource*
&conv02_biasadd_readvariableop_resource)
%conv03_conv2d_readvariableop_resource*
&conv03_biasadd_readvariableop_resource)
%dens01_matmul_readvariableop_resource*
&dens01_biasadd_readvariableop_resource)
%dens02_matmul_readvariableop_resource*
&dens02_biasadd_readvariableop_resource
identityЂconv01/BiasAdd/ReadVariableOpЂconv01/Conv2D/ReadVariableOpЂconv02/BiasAdd/ReadVariableOpЂconv02/Conv2D/ReadVariableOpЂconv03/BiasAdd/ReadVariableOpЂconv03/Conv2D/ReadVariableOpЂdens01/BiasAdd/ReadVariableOpЂdens01/MatMul/ReadVariableOpЂdens02/BiasAdd/ReadVariableOpЂdens02/MatMul/ReadVariableOpЊ
conv01/Conv2D/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv01/Conv2D/ReadVariableOpИ
conv01/Conv2DConv2Dinputs$conv01/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@*
paddingSAME*
strides
2
conv01/Conv2DЁ
conv01/BiasAdd/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv01/BiasAdd/ReadVariableOpЄ
conv01/BiasAddBiasAddconv01/Conv2D:output:0%conv01/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
conv01/BiasAddu
conv01/ReluReluconv01/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
conv01/ReluГ
pool01/MaxPoolMaxPoolconv01/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ;@*
ksize
*
paddingVALID*
strides
2
pool01/MaxPoolЋ
conv02/Conv2D/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
conv02/Conv2D/ReadVariableOpЪ
conv02/Conv2DConv2Dpool01/MaxPool:output:0$conv02/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;*
paddingSAME*
strides
2
conv02/Conv2DЂ
conv02/BiasAdd/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv02/BiasAdd/ReadVariableOpЅ
conv02/BiasAddBiasAddconv02/Conv2D:output:0%conv02/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
conv02/BiasAddv
conv02/ReluReluconv02/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
conv02/ReluД
pool02/MaxPoolMaxPoolconv02/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
pool02/MaxPoolЌ
conv03/Conv2D/ReadVariableOpReadVariableOp%conv03_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
conv03/Conv2D/ReadVariableOpЪ
conv03/Conv2DConv2Dpool02/MaxPool:output:0$conv03/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv03/Conv2DЂ
conv03/BiasAdd/ReadVariableOpReadVariableOp&conv03_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
conv03/BiasAdd/ReadVariableOpЅ
conv03/BiasAddBiasAddconv03/Conv2D:output:0%conv03/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv03/BiasAddv
conv03/ReluReluconv03/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv03/Relum
flat01/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ W  2
flat01/Const
flat01/ReshapeReshapeconv03/Relu:activations:0flat01/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2
flat01/ReshapeЅ
dens01/MatMul/ReadVariableOpReadVariableOp%dens01_matmul_readvariableop_resource*!
_output_shapes
:Ў*
dtype02
dens01/MatMul/ReadVariableOp
dens01/MatMulMatMulflat01/Reshape:output:0$dens01/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dens01/MatMulЂ
dens01/BiasAdd/ReadVariableOpReadVariableOp&dens01_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dens01/BiasAdd/ReadVariableOp
dens01/BiasAddBiasAdddens01/MatMul:product:0%dens01/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dens01/BiasAddn
dens01/ReluReludens01/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dens01/ReluЃ
dens02/MatMul/ReadVariableOpReadVariableOp%dens02_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dens02/MatMul/ReadVariableOp
dens02/MatMulMatMuldens01/Relu:activations:0$dens02/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dens02/MatMulЁ
dens02/BiasAdd/ReadVariableOpReadVariableOp&dens02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dens02/BiasAdd/ReadVariableOp
dens02/BiasAddBiasAdddens02/MatMul:product:0%dens02/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dens02/BiasAddv
dens02/SoftmaxSoftmaxdens02/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dens02/SoftmaxЇ
IdentityIdentitydens02/Softmax:softmax:0^conv01/BiasAdd/ReadVariableOp^conv01/Conv2D/ReadVariableOp^conv02/BiasAdd/ReadVariableOp^conv02/Conv2D/ReadVariableOp^conv03/BiasAdd/ReadVariableOp^conv03/Conv2D/ReadVariableOp^dens01/BiasAdd/ReadVariableOp^dens01/MatMul/ReadVariableOp^dens02/BiasAdd/ReadVariableOp^dens02/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2>
conv01/BiasAdd/ReadVariableOpconv01/BiasAdd/ReadVariableOp2<
conv01/Conv2D/ReadVariableOpconv01/Conv2D/ReadVariableOp2>
conv02/BiasAdd/ReadVariableOpconv02/BiasAdd/ReadVariableOp2<
conv02/Conv2D/ReadVariableOpconv02/Conv2D/ReadVariableOp2>
conv03/BiasAdd/ReadVariableOpconv03/BiasAdd/ReadVariableOp2<
conv03/Conv2D/ReadVariableOpconv03/Conv2D/ReadVariableOp2>
dens01/BiasAdd/ReadVariableOpdens01/BiasAdd/ReadVariableOp2<
dens01/MatMul/ReadVariableOpdens01/MatMul/ReadVariableOp2>
dens02/BiasAdd/ReadVariableOpdens02/BiasAdd/ReadVariableOp2<
dens02/MatMul/ReadVariableOpdens02/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
є
z
%__inference_conv01_layer_call_fn_4938

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ9v@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv01_layer_call_and_return_conditional_losses_44592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ9v@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ9v::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs

A
%__inference_pool01_layer_call_fn_4432

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool01_layer_call_and_return_conditional_losses_44262
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ
ќ
)__inference_sequential_layer_call_fn_4747
conv01_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallconv01_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_47242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ9v
&
_user_specified_nameconv01_input
ж
z
%__inference_dens02_layer_call_fn_5029

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens02_layer_call_and_return_conditional_losses_45832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
М
\
@__inference_flat01_layer_call_and_return_conditional_losses_4984

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ W  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
#
И
D__inference_sequential_layer_call_and_return_conditional_losses_4632
conv01_input
conv01_4603
conv01_4605
conv02_4609
conv02_4611
conv03_4615
conv03_4617
dens01_4621
dens01_4623
dens02_4626
dens02_4628
identityЂconv01/StatefulPartitionedCallЂconv02/StatefulPartitionedCallЂconv03/StatefulPartitionedCallЂdens01/StatefulPartitionedCallЂdens02/StatefulPartitionedCall
conv01/StatefulPartitionedCallStatefulPartitionedCallconv01_inputconv01_4603conv01_4605*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ9v@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv01_layer_call_and_return_conditional_losses_44592 
conv01/StatefulPartitionedCallѕ
pool01/PartitionedCallPartitionedCall'conv01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool01_layer_call_and_return_conditional_losses_44262
pool01/PartitionedCallІ
conv02/StatefulPartitionedCallStatefulPartitionedCallpool01/PartitionedCall:output:0conv02_4609conv02_4611*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv02_layer_call_and_return_conditional_losses_44872 
conv02/StatefulPartitionedCallі
pool02/PartitionedCallPartitionedCall'conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool02_layer_call_and_return_conditional_losses_44382
pool02/PartitionedCallІ
conv03/StatefulPartitionedCallStatefulPartitionedCallpool02/PartitionedCall:output:0conv03_4615conv03_4617*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv03_layer_call_and_return_conditional_losses_45152 
conv03/StatefulPartitionedCallя
flat01/PartitionedCallPartitionedCall'conv03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџЎ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat01_layer_call_and_return_conditional_losses_45372
flat01/PartitionedCall
dens01/StatefulPartitionedCallStatefulPartitionedCallflat01/PartitionedCall:output:0dens01_4621dens01_4623*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens01_layer_call_and_return_conditional_losses_45562 
dens01/StatefulPartitionedCallЅ
dens02/StatefulPartitionedCallStatefulPartitionedCall'dens01/StatefulPartitionedCall:output:0dens02_4626dens02_4628*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens02_layer_call_and_return_conditional_losses_45832 
dens02/StatefulPartitionedCall 
IdentityIdentity'dens02/StatefulPartitionedCall:output:0^conv01/StatefulPartitionedCall^conv02/StatefulPartitionedCall^conv03/StatefulPartitionedCall^dens01/StatefulPartitionedCall^dens02/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2@
conv01/StatefulPartitionedCallconv01/StatefulPartitionedCall2@
conv02/StatefulPartitionedCallconv02/StatefulPartitionedCall2@
conv03/StatefulPartitionedCallconv03/StatefulPartitionedCall2@
dens01/StatefulPartitionedCalldens01/StatefulPartitionedCall2@
dens02/StatefulPartitionedCalldens02/StatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ9v
&
_user_specified_nameconv01_input
ТR
И
__inference__traced_save_5169
file_prefix,
(savev2_conv01_kernel_read_readvariableop*
&savev2_conv01_bias_read_readvariableop,
(savev2_conv02_kernel_read_readvariableop*
&savev2_conv02_bias_read_readvariableop,
(savev2_conv03_kernel_read_readvariableop*
&savev2_conv03_bias_read_readvariableop,
(savev2_dens01_kernel_read_readvariableop*
&savev2_dens01_bias_read_readvariableop,
(savev2_dens02_kernel_read_readvariableop*
&savev2_dens02_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv01_kernel_m_read_readvariableop1
-savev2_adam_conv01_bias_m_read_readvariableop3
/savev2_adam_conv02_kernel_m_read_readvariableop1
-savev2_adam_conv02_bias_m_read_readvariableop3
/savev2_adam_conv03_kernel_m_read_readvariableop1
-savev2_adam_conv03_bias_m_read_readvariableop3
/savev2_adam_dens01_kernel_m_read_readvariableop1
-savev2_adam_dens01_bias_m_read_readvariableop3
/savev2_adam_dens02_kernel_m_read_readvariableop1
-savev2_adam_dens02_bias_m_read_readvariableop3
/savev2_adam_conv01_kernel_v_read_readvariableop1
-savev2_adam_conv01_bias_v_read_readvariableop3
/savev2_adam_conv02_kernel_v_read_readvariableop1
-savev2_adam_conv02_bias_v_read_readvariableop3
/savev2_adam_conv03_kernel_v_read_readvariableop1
-savev2_adam_conv03_bias_v_read_readvariableop3
/savev2_adam_dens01_kernel_v_read_readvariableop1
-savev2_adam_dens01_bias_v_read_readvariableop3
/savev2_adam_dens02_kernel_v_read_readvariableop1
-savev2_adam_dens02_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv01_kernel_read_readvariableop&savev2_conv01_bias_read_readvariableop(savev2_conv02_kernel_read_readvariableop&savev2_conv02_bias_read_readvariableop(savev2_conv03_kernel_read_readvariableop&savev2_conv03_bias_read_readvariableop(savev2_dens01_kernel_read_readvariableop&savev2_dens01_bias_read_readvariableop(savev2_dens02_kernel_read_readvariableop&savev2_dens02_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv01_kernel_m_read_readvariableop-savev2_adam_conv01_bias_m_read_readvariableop/savev2_adam_conv02_kernel_m_read_readvariableop-savev2_adam_conv02_bias_m_read_readvariableop/savev2_adam_conv03_kernel_m_read_readvariableop-savev2_adam_conv03_bias_m_read_readvariableop/savev2_adam_dens01_kernel_m_read_readvariableop-savev2_adam_dens01_bias_m_read_readvariableop/savev2_adam_dens02_kernel_m_read_readvariableop-savev2_adam_dens02_bias_m_read_readvariableop/savev2_adam_conv01_kernel_v_read_readvariableop-savev2_adam_conv01_bias_v_read_readvariableop/savev2_adam_conv02_kernel_v_read_readvariableop-savev2_adam_conv02_bias_v_read_readvariableop/savev2_adam_conv03_kernel_v_read_readvariableop-savev2_adam_conv03_bias_v_read_readvariableop/savev2_adam_dens01_kernel_v_read_readvariableop-savev2_adam_dens01_bias_v_read_readvariableop/savev2_adam_dens02_kernel_v_read_readvariableop-savev2_adam_dens02_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapesя
ь: :@:@:@::::Ў::	:: : : : : : : : : :@:@:@::::Ў::	::@:@:@::::Ў::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::'#
!
_output_shapes
:Ў:!

_output_shapes	
::%	!

_output_shapes
:	: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::'#
!
_output_shapes
:Ў:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:- )
'
_output_shapes
:@:!!

_output_shapes	
::."*
(
_output_shapes
::!#

_output_shapes	
::'$#
!
_output_shapes
:Ў:!%

_output_shapes	
::%&!

_output_shapes
:	: '

_output_shapes
::(

_output_shapes
: 
к
z
%__inference_dens01_layer_call_fn_5009

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens01_layer_call_and_return_conditional_losses_45562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџЎ::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:џџџџџџџџџЎ
 
_user_specified_nameinputs
а

й
@__inference_conv02_layer_call_and_return_conditional_losses_4487

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ;2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ;@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ;@
 
_user_specified_nameinputs
ЪЃ
Ц
 __inference__traced_restore_5296
file_prefix"
assignvariableop_conv01_kernel"
assignvariableop_1_conv01_bias$
 assignvariableop_2_conv02_kernel"
assignvariableop_3_conv02_bias$
 assignvariableop_4_conv03_kernel"
assignvariableop_5_conv03_bias$
 assignvariableop_6_dens01_kernel"
assignvariableop_7_dens01_bias$
 assignvariableop_8_dens02_kernel"
assignvariableop_9_dens02_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1,
(assignvariableop_19_adam_conv01_kernel_m*
&assignvariableop_20_adam_conv01_bias_m,
(assignvariableop_21_adam_conv02_kernel_m*
&assignvariableop_22_adam_conv02_bias_m,
(assignvariableop_23_adam_conv03_kernel_m*
&assignvariableop_24_adam_conv03_bias_m,
(assignvariableop_25_adam_dens01_kernel_m*
&assignvariableop_26_adam_dens01_bias_m,
(assignvariableop_27_adam_dens02_kernel_m*
&assignvariableop_28_adam_dens02_bias_m,
(assignvariableop_29_adam_conv01_kernel_v*
&assignvariableop_30_adam_conv01_bias_v,
(assignvariableop_31_adam_conv02_kernel_v*
&assignvariableop_32_adam_conv02_bias_v,
(assignvariableop_33_adam_conv03_kernel_v*
&assignvariableop_34_adam_conv03_bias_v,
(assignvariableop_35_adam_dens01_kernel_v*
&assignvariableop_36_adam_dens01_bias_v,
(assignvariableop_37_adam_dens02_kernel_v*
&assignvariableop_38_adam_dens02_bias_v
identity_40ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesі
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesЃ
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_conv01_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv01_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ѕ
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv02_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѓ
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv02_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѕ
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv03_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѓ
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv03_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ѕ
AssignVariableOp_6AssignVariableOp assignvariableop_6_dens01_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѓ
AssignVariableOp_7AssignVariableOpassignvariableop_7_dens01_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ѕ
AssignVariableOp_8AssignVariableOp assignvariableop_8_dens02_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOpassignvariableop_9_dens02_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Ѕ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ў
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ё
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ё
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ѓ
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ѓ
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19А
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv01_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ў
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_conv01_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21А
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv02_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ў
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_conv02_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv03_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ў
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_conv03_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25А
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dens01_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ў
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_dens01_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27А
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dens02_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ў
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_dens02_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29А
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv01_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ў
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_conv01_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31А
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv02_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ў
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_conv02_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33А
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv03_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ў
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv03_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35А
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dens01_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ў
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_dens01_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37А
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dens02_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ў
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_dens02_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpИ
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39Ћ
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*Г
_input_shapesЁ
: :::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
і	
й
@__inference_dens01_layer_call_and_return_conditional_losses_4556

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Ў*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџЎ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:џџџџџџџџџЎ
 
_user_specified_nameinputs
і
z
%__inference_conv02_layer_call_fn_4958

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv02_layer_call_and_return_conditional_losses_44872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ;2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ;@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ;@
 
_user_specified_nameinputs
э
і
)__inference_sequential_layer_call_fn_4918

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_47242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
г

й
@__inference_conv03_layer_call_and_return_conditional_losses_4969

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
\
@__inference_pool01_layer_call_and_return_conditional_losses_4426

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
 
A
%__inference_flat01_layer_call_fn_4989

inputs
identityР
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџЎ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat01_layer_call_and_return_conditional_losses_45372
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ъ

й
@__inference_conv01_layer_call_and_return_conditional_losses_4929

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ9v@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ9v@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ9v::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
#
И
D__inference_sequential_layer_call_and_return_conditional_losses_4600
conv01_input
conv01_4470
conv01_4472
conv02_4498
conv02_4500
conv03_4526
conv03_4528
dens01_4567
dens01_4569
dens02_4594
dens02_4596
identityЂconv01/StatefulPartitionedCallЂconv02/StatefulPartitionedCallЂconv03/StatefulPartitionedCallЂdens01/StatefulPartitionedCallЂdens02/StatefulPartitionedCall
conv01/StatefulPartitionedCallStatefulPartitionedCallconv01_inputconv01_4470conv01_4472*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ9v@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv01_layer_call_and_return_conditional_losses_44592 
conv01/StatefulPartitionedCallѕ
pool01/PartitionedCallPartitionedCall'conv01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool01_layer_call_and_return_conditional_losses_44262
pool01/PartitionedCallІ
conv02/StatefulPartitionedCallStatefulPartitionedCallpool01/PartitionedCall:output:0conv02_4498conv02_4500*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv02_layer_call_and_return_conditional_losses_44872 
conv02/StatefulPartitionedCallі
pool02/PartitionedCallPartitionedCall'conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool02_layer_call_and_return_conditional_losses_44382
pool02/PartitionedCallІ
conv03/StatefulPartitionedCallStatefulPartitionedCallpool02/PartitionedCall:output:0conv03_4526conv03_4528*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv03_layer_call_and_return_conditional_losses_45152 
conv03/StatefulPartitionedCallя
flat01/PartitionedCallPartitionedCall'conv03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџЎ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat01_layer_call_and_return_conditional_losses_45372
flat01/PartitionedCall
dens01/StatefulPartitionedCallStatefulPartitionedCallflat01/PartitionedCall:output:0dens01_4567dens01_4569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens01_layer_call_and_return_conditional_losses_45562 
dens01/StatefulPartitionedCallЅ
dens02/StatefulPartitionedCallStatefulPartitionedCall'dens01/StatefulPartitionedCall:output:0dens02_4594dens02_4596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens02_layer_call_and_return_conditional_losses_45832 
dens02/StatefulPartitionedCall 
IdentityIdentity'dens02/StatefulPartitionedCall:output:0^conv01/StatefulPartitionedCall^conv02/StatefulPartitionedCall^conv03/StatefulPartitionedCall^dens01/StatefulPartitionedCall^dens02/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2@
conv01/StatefulPartitionedCallconv01/StatefulPartitionedCall2@
conv02/StatefulPartitionedCallconv02/StatefulPartitionedCall2@
conv03/StatefulPartitionedCallconv03/StatefulPartitionedCall2@
dens01/StatefulPartitionedCalldens01/StatefulPartitionedCall2@
dens02/StatefulPartitionedCalldens02/StatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ9v
&
_user_specified_nameconv01_input
ѕ	
й
@__inference_dens02_layer_call_and_return_conditional_losses_5020

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
\
@__inference_pool02_layer_call_and_return_conditional_losses_4438

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ"
В
D__inference_sequential_layer_call_and_return_conditional_losses_4724

inputs
conv01_4695
conv01_4697
conv02_4701
conv02_4703
conv03_4707
conv03_4709
dens01_4713
dens01_4715
dens02_4718
dens02_4720
identityЂconv01/StatefulPartitionedCallЂconv02/StatefulPartitionedCallЂconv03/StatefulPartitionedCallЂdens01/StatefulPartitionedCallЂdens02/StatefulPartitionedCall
conv01/StatefulPartitionedCallStatefulPartitionedCallinputsconv01_4695conv01_4697*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ9v@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv01_layer_call_and_return_conditional_losses_44592 
conv01/StatefulPartitionedCallѕ
pool01/PartitionedCallPartitionedCall'conv01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool01_layer_call_and_return_conditional_losses_44262
pool01/PartitionedCallІ
conv02/StatefulPartitionedCallStatefulPartitionedCallpool01/PartitionedCall:output:0conv02_4701conv02_4703*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv02_layer_call_and_return_conditional_losses_44872 
conv02/StatefulPartitionedCallі
pool02/PartitionedCallPartitionedCall'conv02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_pool02_layer_call_and_return_conditional_losses_44382
pool02/PartitionedCallІ
conv03/StatefulPartitionedCallStatefulPartitionedCallpool02/PartitionedCall:output:0conv03_4707conv03_4709*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv03_layer_call_and_return_conditional_losses_45152 
conv03/StatefulPartitionedCallя
flat01/PartitionedCallPartitionedCall'conv03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџЎ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat01_layer_call_and_return_conditional_losses_45372
flat01/PartitionedCall
dens01/StatefulPartitionedCallStatefulPartitionedCallflat01/PartitionedCall:output:0dens01_4713dens01_4715*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens01_layer_call_and_return_conditional_losses_45562 
dens01/StatefulPartitionedCallЅ
dens02/StatefulPartitionedCallStatefulPartitionedCall'dens01/StatefulPartitionedCall:output:0dens02_4718dens02_4720*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dens02_layer_call_and_return_conditional_losses_45832 
dens02/StatefulPartitionedCall 
IdentityIdentity'dens02/StatefulPartitionedCall:output:0^conv01/StatefulPartitionedCall^conv02/StatefulPartitionedCall^conv03/StatefulPartitionedCall^dens01/StatefulPartitionedCall^dens02/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::2@
conv01/StatefulPartitionedCallconv01/StatefulPartitionedCall2@
conv02/StatefulPartitionedCallconv02/StatefulPartitionedCall2@
conv03/StatefulPartitionedCallconv03/StatefulPartitionedCall2@
dens01/StatefulPartitionedCalldens01/StatefulPartitionedCall2@
dens02/StatefulPartitionedCalldens02/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ9v
 
_user_specified_nameinputs
М
\
@__inference_flat01_layer_call_and_return_conditional_losses_4537

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ W  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџЎ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а

й
@__inference_conv02_layer_call_and_return_conditional_losses_4949

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ;2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ;2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ;2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ;@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ;@
 
_user_specified_nameinputs
г
ѕ
"__inference_signature_wrapper_4782
conv01_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv01_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_44202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ9v::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:џџџџџџџџџ9v
&
_user_specified_nameconv01_input"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
M
conv01_input=
serving_default_conv01_input:0џџџџџџџџџ9v:
dens020
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Т
Q
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
__call__
_default_save_signature
+&call_and_return_all_conditional_losses"лM
_tf_keras_sequentialМM{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv01_input"}}, {"class_name": "Conv2D", "config": {"name": "conv01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "pool01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 64]}, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 59, 64]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "pool02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14, 59, 128]}, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv03", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 29, 128]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [3, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flat01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 29, 256]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dens01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 22272]}, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512]}, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 57, 118, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv01_input"}}, {"class_name": "Conv2D", "config": {"name": "conv01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "pool01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 64]}, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 59, 64]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "pool02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14, 59, 128]}, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv03", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 29, 128]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [3, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flat01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 29, 256]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dens01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 22272]}, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512]}, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ђ


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"Ы	
_tf_keras_layerБ	{"class_name": "Conv2D", "name": "conv01", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 57, 118, 1]}}
є
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"у
_tf_keras_layerЩ{"class_name": "MaxPooling2D", "name": "pool01", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 64]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "pool01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 57, 118, 64]}, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
є


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"Э	
_tf_keras_layerГ	{"class_name": "Conv2D", "name": "conv02", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 59, 64]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 59, 64]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 59, 64]}}
є
trainable_variables
 regularization_losses
!	variables
"	keras_api
__call__
+&call_and_return_all_conditional_losses"у
_tf_keras_layerЩ{"class_name": "MaxPooling2D", "name": "pool02", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14, 59, 128]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "pool02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14, 59, 128]}, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ѕ


#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
__call__
+&call_and_return_all_conditional_losses"Ю	
_tf_keras_layerД	{"class_name": "Conv2D", "name": "conv03", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 29, 128]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv03", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 29, 128]}, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [3, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 29, 128]}}
х
)trainable_variables
*regularization_losses
+	variables
,	keras_api
__call__
+&call_and_return_all_conditional_losses"д
_tf_keras_layerК{"class_name": "Flatten", "name": "flat01", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 29, 256]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "flat01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 29, 256]}, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
№

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
__call__
+&call_and_return_all_conditional_losses"Щ
_tf_keras_layerЏ{"class_name": "Dense", "name": "dens01", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 22272]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dens01", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 22272]}, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 22272}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 22272]}}
щ

3kernel
4bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
__call__
+&call_and_return_all_conditional_losses"Т
_tf_keras_layerЈ{"class_name": "Dense", "name": "dens02", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dens02", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512]}, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}

9iter

:beta_1

;beta_2
	<decay
=learning_ratemvmwmxmy#mz$m{-m|.m}3m~4mvvvv#v$v-v.v3v4v"
	optimizer
f
0
1
2
3
#4
$5
-6
.7
38
49"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
#4
$5
-6
.7
38
49"
trackable_list_wrapper
Ю

trainable_variables
>layer_metrics
?layer_regularization_losses
regularization_losses

@layers
Anon_trainable_variables
Bmetrics
	variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
':%@2conv01/kernel
:@2conv01/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
trainable_variables
Clayer_metrics
Dlayer_regularization_losses
regularization_losses

Elayers
Fnon_trainable_variables
Gmetrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
trainable_variables
Hlayer_metrics
Ilayer_regularization_losses
regularization_losses

Jlayers
Knon_trainable_variables
Lmetrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
(:&@2conv02/kernel
:2conv02/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
trainable_variables
Mlayer_metrics
Nlayer_regularization_losses
regularization_losses

Olayers
Pnon_trainable_variables
Qmetrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
trainable_variables
Rlayer_metrics
Slayer_regularization_losses
 regularization_losses

Tlayers
Unon_trainable_variables
Vmetrics
!	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
):'2conv03/kernel
:2conv03/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
А
%trainable_variables
Wlayer_metrics
Xlayer_regularization_losses
&regularization_losses

Ylayers
Znon_trainable_variables
[metrics
'	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
)trainable_variables
\layer_metrics
]layer_regularization_losses
*regularization_losses

^layers
_non_trainable_variables
`metrics
+	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": Ў2dens01/kernel
:2dens01/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
А
/trainable_variables
alayer_metrics
blayer_regularization_losses
0regularization_losses

clayers
dnon_trainable_variables
emetrics
1	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :	2dens02/kernel
:2dens02/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
А
5trainable_variables
flayer_metrics
glayer_regularization_losses
6regularization_losses

hlayers
inon_trainable_variables
jmetrics
7	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Л
	mtotal
	ncount
o	variables
p	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api"П
_tf_keras_metricЄ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
m0
n1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
q0
r1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
,:*@2Adam/conv01/kernel/m
:@2Adam/conv01/bias/m
-:+@2Adam/conv02/kernel/m
:2Adam/conv02/bias/m
.:,2Adam/conv03/kernel/m
:2Adam/conv03/bias/m
':%Ў2Adam/dens01/kernel/m
:2Adam/dens01/bias/m
%:#	2Adam/dens02/kernel/m
:2Adam/dens02/bias/m
,:*@2Adam/conv01/kernel/v
:@2Adam/conv01/bias/v
-:+@2Adam/conv02/kernel/v
:2Adam/conv02/bias/v
.:,2Adam/conv03/kernel/v
:2Adam/conv03/bias/v
':%Ў2Adam/dens01/kernel/v
:2Adam/dens01/bias/v
%:#	2Adam/dens02/kernel/v
:2Adam/dens02/bias/v
ђ2я
)__inference_sequential_layer_call_fn_4918
)__inference_sequential_layer_call_fn_4747
)__inference_sequential_layer_call_fn_4893
)__inference_sequential_layer_call_fn_4690Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ъ2ч
__inference__wrapped_model_4420У
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+
conv01_inputџџџџџџџџџ9v
о2л
D__inference_sequential_layer_call_and_return_conditional_losses_4632
D__inference_sequential_layer_call_and_return_conditional_losses_4868
D__inference_sequential_layer_call_and_return_conditional_losses_4600
D__inference_sequential_layer_call_and_return_conditional_losses_4825Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Я2Ь
%__inference_conv01_layer_call_fn_4938Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_conv01_layer_call_and_return_conditional_losses_4929Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
%__inference_pool01_layer_call_fn_4432р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ј2Ѕ
@__inference_pool01_layer_call_and_return_conditional_losses_4426р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Я2Ь
%__inference_conv02_layer_call_fn_4958Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_conv02_layer_call_and_return_conditional_losses_4949Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
%__inference_pool02_layer_call_fn_4444р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ј2Ѕ
@__inference_pool02_layer_call_and_return_conditional_losses_4438р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Я2Ь
%__inference_conv03_layer_call_fn_4978Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_conv03_layer_call_and_return_conditional_losses_4969Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Я2Ь
%__inference_flat01_layer_call_fn_4989Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_flat01_layer_call_and_return_conditional_losses_4984Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Я2Ь
%__inference_dens01_layer_call_fn_5009Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_dens01_layer_call_and_return_conditional_losses_5000Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Я2Ь
%__inference_dens02_layer_call_fn_5029Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_dens02_layer_call_and_return_conditional_losses_5020Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЮBЫ
"__inference_signature_wrapper_4782conv01_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
__inference__wrapped_model_4420|
#$-.34=Ђ:
3Ђ0
.+
conv01_inputџџџџџџџџџ9v
Њ "/Њ,
*
dens02 
dens02џџџџџџџџџА
@__inference_conv01_layer_call_and_return_conditional_losses_4929l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ9v
Њ "-Ђ*
# 
0џџџџџџџџџ9v@
 
%__inference_conv01_layer_call_fn_4938_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ9v
Њ " џџџџџџџџџ9v@Б
@__inference_conv02_layer_call_and_return_conditional_losses_4949m7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ;@
Њ ".Ђ+
$!
0џџџџџџџџџ;
 
%__inference_conv02_layer_call_fn_4958`7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ;@
Њ "!џџџџџџџџџ;В
@__inference_conv03_layer_call_and_return_conditional_losses_4969n#$8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
%__inference_conv03_layer_call_fn_4978a#$8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџЃ
@__inference_dens01_layer_call_and_return_conditional_losses_5000_-.1Ђ.
'Ђ$
"
inputsџџџџџџџџџЎ
Њ "&Ђ#

0џџџџџџџџџ
 {
%__inference_dens01_layer_call_fn_5009R-.1Ђ.
'Ђ$
"
inputsџџџџџџџџџЎ
Њ "џџџџџџџџџЁ
@__inference_dens02_layer_call_and_return_conditional_losses_5020]340Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 y
%__inference_dens02_layer_call_fn_5029P340Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЇ
@__inference_flat01_layer_call_and_return_conditional_losses_4984c8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "'Ђ$

0џџџџџџџџџЎ
 
%__inference_flat01_layer_call_fn_4989V8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "џџџџџџџџџЎу
@__inference_pool01_layer_call_and_return_conditional_losses_4426RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
%__inference_pool01_layer_call_fn_4432RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџу
@__inference_pool02_layer_call_and_return_conditional_losses_4438RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
%__inference_pool02_layer_call_fn_4444RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџТ
D__inference_sequential_layer_call_and_return_conditional_losses_4600z
#$-.34EЂB
;Ђ8
.+
conv01_inputџџџџџџџџџ9v
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Т
D__inference_sequential_layer_call_and_return_conditional_losses_4632z
#$-.34EЂB
;Ђ8
.+
conv01_inputџџџџџџџџџ9v
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 М
D__inference_sequential_layer_call_and_return_conditional_losses_4825t
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ9v
p

 
Њ "%Ђ"

0џџџџџџџџџ
 М
D__inference_sequential_layer_call_and_return_conditional_losses_4868t
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ9v
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
)__inference_sequential_layer_call_fn_4690m
#$-.34EЂB
;Ђ8
.+
conv01_inputџџџџџџџџџ9v
p

 
Њ "џџџџџџџџџ
)__inference_sequential_layer_call_fn_4747m
#$-.34EЂB
;Ђ8
.+
conv01_inputџџџџџџџџџ9v
p 

 
Њ "џџџџџџџџџ
)__inference_sequential_layer_call_fn_4893g
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ9v
p

 
Њ "џџџџџџџџџ
)__inference_sequential_layer_call_fn_4918g
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ9v
p 

 
Њ "џџџџџџџџџГ
"__inference_signature_wrapper_4782
#$-.34MЂJ
Ђ 
CЊ@
>
conv01_input.+
conv01_inputџџџџџџџџџ9v"/Њ,
*
dens02 
dens02џџџџџџџџџ