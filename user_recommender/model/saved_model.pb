Îò
¶
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
Á
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
executor_typestring ¨
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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018ï¯

Adam/dcn_5/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/dcn_5/dense_17/bias/v

.Adam/dcn_5/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_17/bias/v*
_output_shapes
:*
dtype0

Adam/dcn_5/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À*-
shared_nameAdam/dcn_5/dense_17/kernel/v

0Adam/dcn_5/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_17/kernel/v*
_output_shapes
:	À*
dtype0

Adam/dcn_5/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*+
shared_nameAdam/dcn_5/dense_16/bias/v

.Adam/dcn_5/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_16/bias/v*
_output_shapes	
:À*
dtype0

Adam/dcn_5/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*-
shared_nameAdam/dcn_5/dense_16/kernel/v

0Adam/dcn_5/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_16/kernel/v* 
_output_shapes
:
ÀÀ*
dtype0

Adam/dcn_5/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*+
shared_nameAdam/dcn_5/dense_15/bias/v

.Adam/dcn_5/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_15/bias/v*
_output_shapes	
:À*
dtype0

Adam/dcn_5/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*-
shared_nameAdam/dcn_5/dense_15/kernel/v

0Adam/dcn_5/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_15/kernel/v* 
_output_shapes
:
ÀÀ*
dtype0

Adam/dcn_5/cross_5/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*0
shared_name!Adam/dcn_5/cross_5/dense/bias/v

3Adam/dcn_5/cross_5/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcn_5/cross_5/dense/bias/v*
_output_shapes	
:À*
dtype0
 
!Adam/dcn_5/cross_5/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*2
shared_name#!Adam/dcn_5/cross_5/dense/kernel/v

5Adam/dcn_5/cross_5/dense/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/dcn_5/cross_5/dense/kernel/v* 
_output_shapes
:
ÀÀ*
dtype0

Adam/embedding_50/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÉ */
shared_name Adam/embedding_50/embeddings/v

2Adam/embedding_50/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_50/embeddings/v* 
_output_shapes
:
øÉ *
dtype0

Adam/embedding_59/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À */
shared_name Adam/embedding_59/embeddings/v

2Adam/embedding_59/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_59/embeddings/v*
_output_shapes
:	À *
dtype0

Adam/embedding_58/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/embedding_58/embeddings/v

2Adam/embedding_58/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_58/embeddings/v*
_output_shapes

: *
dtype0

Adam/embedding_55/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¡ */
shared_name Adam/embedding_55/embeddings/v

2Adam/embedding_55/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_55/embeddings/v*
_output_shapes
:	¡ *
dtype0

Adam/embedding_54/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4 */
shared_name Adam/embedding_54/embeddings/v

2Adam/embedding_54/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_54/embeddings/v*
_output_shapes

:4 *
dtype0

Adam/embedding_51/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷É */
shared_name Adam/embedding_51/embeddings/v

2Adam/embedding_51/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_51/embeddings/v* 
_output_shapes
:
÷É *
dtype0

Adam/embedding_53/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/embedding_53/embeddings/v

2Adam/embedding_53/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_53/embeddings/v*
_output_shapes

: *
dtype0

Adam/embedding_56/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:! */
shared_name Adam/embedding_56/embeddings/v

2Adam/embedding_56/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_56/embeddings/v*
_output_shapes

:! *
dtype0

Adam/embedding_57/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/embedding_57/embeddings/v

2Adam/embedding_57/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_57/embeddings/v*
_output_shapes

: *
dtype0

Adam/embedding_52/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4 */
shared_name Adam/embedding_52/embeddings/v

2Adam/embedding_52/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_52/embeddings/v*
_output_shapes

:4 *
dtype0

Adam/dcn_5/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/dcn_5/dense_17/bias/m

.Adam/dcn_5/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_17/bias/m*
_output_shapes
:*
dtype0

Adam/dcn_5/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À*-
shared_nameAdam/dcn_5/dense_17/kernel/m

0Adam/dcn_5/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_17/kernel/m*
_output_shapes
:	À*
dtype0

Adam/dcn_5/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*+
shared_nameAdam/dcn_5/dense_16/bias/m

.Adam/dcn_5/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_16/bias/m*
_output_shapes	
:À*
dtype0

Adam/dcn_5/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*-
shared_nameAdam/dcn_5/dense_16/kernel/m

0Adam/dcn_5/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_16/kernel/m* 
_output_shapes
:
ÀÀ*
dtype0

Adam/dcn_5/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*+
shared_nameAdam/dcn_5/dense_15/bias/m

.Adam/dcn_5/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_15/bias/m*
_output_shapes	
:À*
dtype0

Adam/dcn_5/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*-
shared_nameAdam/dcn_5/dense_15/kernel/m

0Adam/dcn_5/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/dense_15/kernel/m* 
_output_shapes
:
ÀÀ*
dtype0

Adam/dcn_5/cross_5/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*0
shared_name!Adam/dcn_5/cross_5/dense/bias/m

3Adam/dcn_5/cross_5/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcn_5/cross_5/dense/bias/m*
_output_shapes	
:À*
dtype0
 
!Adam/dcn_5/cross_5/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*2
shared_name#!Adam/dcn_5/cross_5/dense/kernel/m

5Adam/dcn_5/cross_5/dense/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/dcn_5/cross_5/dense/kernel/m* 
_output_shapes
:
ÀÀ*
dtype0

Adam/embedding_50/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÉ */
shared_name Adam/embedding_50/embeddings/m

2Adam/embedding_50/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_50/embeddings/m* 
_output_shapes
:
øÉ *
dtype0

Adam/embedding_59/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À */
shared_name Adam/embedding_59/embeddings/m

2Adam/embedding_59/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_59/embeddings/m*
_output_shapes
:	À *
dtype0

Adam/embedding_58/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/embedding_58/embeddings/m

2Adam/embedding_58/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_58/embeddings/m*
_output_shapes

: *
dtype0

Adam/embedding_55/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¡ */
shared_name Adam/embedding_55/embeddings/m

2Adam/embedding_55/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_55/embeddings/m*
_output_shapes
:	¡ *
dtype0

Adam/embedding_54/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4 */
shared_name Adam/embedding_54/embeddings/m

2Adam/embedding_54/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_54/embeddings/m*
_output_shapes

:4 *
dtype0

Adam/embedding_51/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷É */
shared_name Adam/embedding_51/embeddings/m

2Adam/embedding_51/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_51/embeddings/m* 
_output_shapes
:
÷É *
dtype0

Adam/embedding_53/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/embedding_53/embeddings/m

2Adam/embedding_53/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_53/embeddings/m*
_output_shapes

: *
dtype0

Adam/embedding_56/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:! */
shared_name Adam/embedding_56/embeddings/m

2Adam/embedding_56/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_56/embeddings/m*
_output_shapes

:! *
dtype0

Adam/embedding_57/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/embedding_57/embeddings/m

2Adam/embedding_57/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_57/embeddings/m*
_output_shapes

: *
dtype0

Adam/embedding_52/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4 */
shared_name Adam/embedding_52/embeddings/m

2Adam/embedding_52/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_52/embeddings/m*
_output_shapes

:4 *
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
~
dcn_5/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedcn_5/dense_17/bias
w
'dcn_5/dense_17/bias/Read/ReadVariableOpReadVariableOpdcn_5/dense_17/bias*
_output_shapes
:*
dtype0

dcn_5/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À*&
shared_namedcn_5/dense_17/kernel

)dcn_5/dense_17/kernel/Read/ReadVariableOpReadVariableOpdcn_5/dense_17/kernel*
_output_shapes
:	À*
dtype0

dcn_5/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*$
shared_namedcn_5/dense_16/bias
x
'dcn_5/dense_16/bias/Read/ReadVariableOpReadVariableOpdcn_5/dense_16/bias*
_output_shapes	
:À*
dtype0

dcn_5/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*&
shared_namedcn_5/dense_16/kernel

)dcn_5/dense_16/kernel/Read/ReadVariableOpReadVariableOpdcn_5/dense_16/kernel* 
_output_shapes
:
ÀÀ*
dtype0

dcn_5/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*$
shared_namedcn_5/dense_15/bias
x
'dcn_5/dense_15/bias/Read/ReadVariableOpReadVariableOpdcn_5/dense_15/bias*
_output_shapes	
:À*
dtype0

dcn_5/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*&
shared_namedcn_5/dense_15/kernel

)dcn_5/dense_15/kernel/Read/ReadVariableOpReadVariableOpdcn_5/dense_15/kernel* 
_output_shapes
:
ÀÀ*
dtype0

dcn_5/cross_5/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*)
shared_namedcn_5/cross_5/dense/bias

,dcn_5/cross_5/dense/bias/Read/ReadVariableOpReadVariableOpdcn_5/cross_5/dense/bias*
_output_shapes	
:À*
dtype0

dcn_5/cross_5/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÀÀ*+
shared_namedcn_5/cross_5/dense/kernel

.dcn_5/cross_5/dense/kernel/Read/ReadVariableOpReadVariableOpdcn_5/cross_5/dense/kernel* 
_output_shapes
:
ÀÀ*
dtype0

embedding_50/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÉ *(
shared_nameembedding_50/embeddings

+embedding_50/embeddings/Read/ReadVariableOpReadVariableOpembedding_50/embeddings* 
_output_shapes
:
øÉ *
dtype0

embedding_59/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À *(
shared_nameembedding_59/embeddings

+embedding_59/embeddings/Read/ReadVariableOpReadVariableOpembedding_59/embeddings*
_output_shapes
:	À *
dtype0

embedding_58/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameembedding_58/embeddings

+embedding_58/embeddings/Read/ReadVariableOpReadVariableOpembedding_58/embeddings*
_output_shapes

: *
dtype0

embedding_55/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¡ *(
shared_nameembedding_55/embeddings

+embedding_55/embeddings/Read/ReadVariableOpReadVariableOpembedding_55/embeddings*
_output_shapes
:	¡ *
dtype0

embedding_54/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4 *(
shared_nameembedding_54/embeddings

+embedding_54/embeddings/Read/ReadVariableOpReadVariableOpembedding_54/embeddings*
_output_shapes

:4 *
dtype0

embedding_51/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷É *(
shared_nameembedding_51/embeddings

+embedding_51/embeddings/Read/ReadVariableOpReadVariableOpembedding_51/embeddings* 
_output_shapes
:
÷É *
dtype0

embedding_53/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameembedding_53/embeddings

+embedding_53/embeddings/Read/ReadVariableOpReadVariableOpembedding_53/embeddings*
_output_shapes

: *
dtype0

embedding_56/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:! *(
shared_nameembedding_56/embeddings

+embedding_56/embeddings/Read/ReadVariableOpReadVariableOpembedding_56/embeddings*
_output_shapes

:! *
dtype0

embedding_57/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameembedding_57/embeddings

+embedding_57/embeddings/Read/ReadVariableOpReadVariableOpembedding_57/embeddings*
_output_shapes

: *
dtype0

embedding_52/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4 *(
shared_nameembedding_52/embeddings

+embedding_52/embeddings/Read/ReadVariableOpReadVariableOpembedding_52/embeddings*
_output_shapes

:4 *
dtype0

NoOpNoOp
¿
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*½¾
value²¾B®¾ B¦¾
º
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
_all_features
	_embeddings

_cross_layer
_deep_layers
_logit_layer
task
	optimizer
loss

signatures*

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
!16
"17*

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
!16
"17*
* 
°
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
(trace_0
)trace_1
*trace_2
+trace_3* 
6
,trace_0
-trace_1
.trace_2
/trace_3* 
* 
* 

0user_id
1interacted_id
2age

3gender
4language
5
login_time
6	character

7c_type
8mode
9ranking*

:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@_dense*

A0
B1*
¦
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

!kernel
"bias*
æ
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_ranking_metrics
P_prediction_metrics
Q_label_metrics
R_loss_metrics*
¬
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratemàmámâmãmämåmæmçmèmémêmëmìmímî mï!mð"mñvòvóvôvõvöv÷vøvùvúvûvüvývþvÿv v!v"v*
* 

Xserving_default* 
WQ
VARIABLE_VALUEembedding_52/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_57/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_56/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_53/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_51/embeddings&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_54/embeddings&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_55/embeddings&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_58/embeddings&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_59/embeddings&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_50/embeddings&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdcn_5/cross_5/dense/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdcn_5/cross_5/dense/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdcn_5/dense_15/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdcn_5/dense_15/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdcn_5/dense_16/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdcn_5/dense_16/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdcn_5/dense_17/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdcn_5/dense_17/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
20
71
62
33
14
45
56
87
98
09

10
A11
B12
13
14*

Y0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
·
Zlayer_with_weights-0
Zlayer-0
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses*
·
alayer_with_weights-0
alayer-0
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
·
hlayer_with_weights-0
hlayer-0
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
·
olayer_with_weights-0
olayer-0
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses*
·
vlayer_with_weights-0
vlayer-0
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses*
»
}layer_with_weights-0
}layer-0
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¿
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¿
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¿
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¿
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

0
1*

0
1*
* 

 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

¥trace_0* 

¦trace_0* 
¬
§	variables
¨trainable_variables
©regularization_losses
ª	keras_api
«__call__
+¬&call_and_return_all_conditional_losses

kernel
bias*
¬
­	variables
®trainable_variables
¯regularization_losses
°	keras_api
±__call__
+²&call_and_return_all_conditional_losses

kernel
bias*
¬
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses

kernel
 bias*

!0
"1*

!0
"1*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

¾trace_0* 

¿trace_0* 
* 
* 
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 

Y0*
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
Å	variables
Æ	keras_api

Çtotal

Ècount*
¦
É	variables
Êtrainable_variables
Ëregularization_losses
Ì	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
:
Ôtrace_0
Õtrace_1
Ötrace_2
×trace_3* 
:
Øtrace_0
Ùtrace_1
Útrace_2
Ûtrace_3* 
¦
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
:
çtrace_0
ètrace_1
étrace_2
êtrace_3* 
:
ëtrace_0
ìtrace_1
ítrace_2
îtrace_3* 
¦
ï	variables
ðtrainable_variables
ñregularization_losses
ò	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
:
útrace_0
ûtrace_1
ütrace_2
ýtrace_3* 
:
þtrace_0
ÿtrace_1
trace_2
trace_3* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
:
 trace_0
¡trace_1
¢trace_2
£trace_3* 
:
¤trace_0
¥trace_1
¦trace_2
§trace_3* 
¦
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
³trace_0
´trace_1
µtrace_2
¶trace_3* 
:
·trace_0
¸trace_1
¹trace_2
ºtrace_3* 
¦
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
Ætrace_0
Çtrace_1
Ètrace_2
Étrace_3* 
:
Êtrace_0
Ëtrace_1
Ìtrace_2
Ítrace_3* 
¦
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ñ	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
Ùtrace_0
Útrace_1
Ûtrace_2
Ütrace_3* 
:
Ýtrace_0
Þtrace_1
ßtrace_2
àtrace_3* 
¦
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
å__call__
+æ&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
ìtrace_0
ítrace_1
îtrace_2
ïtrace_3* 
:
ðtrace_0
ñtrace_1
òtrace_2
ótrace_3* 
¦
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 

únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
ÿtrace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 

@0*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
§	variables
¨trainable_variables
©regularization_losses
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
­	variables
®trainable_variables
¯regularization_losses
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses*

trace_0* 

trace_0* 

0
 1*

0
 1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Y0*
* 

YRMSE*

Ç0
È1*

Å	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
É	variables
Êtrainable_variables
Ëregularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses*

trace_0* 

 trace_0* 
* 

Z0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses*

¦trace_0* 

§trace_0* 
* 

a0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
ï	variables
ðtrainable_variables
ñregularization_losses
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses*

­trace_0* 

®trace_0* 
* 

h0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

´trace_0* 

µtrace_0* 
* 

o0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

»trace_0* 

¼trace_0* 
* 

v0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*

Âtrace_0* 

Ãtrace_0* 
* 

}0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses*

Étrace_0* 

Êtrace_0* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses*

Ðtrace_0* 

Ñtrace_0* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

Ònon_trainable_variables
Ólayers
Ômetrics
 Õlayer_regularization_losses
Ölayer_metrics
á	variables
âtrainable_variables
ãregularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses*

×trace_0* 

Øtrace_0* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses*

Þtrace_0* 

ßtrace_0* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
zt
VARIABLE_VALUEAdam/embedding_52/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_57/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_56/embeddings/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_53/embeddings/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_51/embeddings/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_54/embeddings/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_55/embeddings/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_58/embeddings/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_59/embeddings/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_50/embeddings/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/dcn_5/cross_5/dense/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dcn_5/cross_5/dense/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/dcn_5/dense_15/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dcn_5/dense_15/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/dcn_5/dense_16/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dcn_5/dense_16/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/dcn_5/dense_17/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dcn_5/dense_17/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_52/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_57/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_56/embeddings/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_53/embeddings/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_51/embeddings/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_54/embeddings/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_55/embeddings/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_58/embeddings/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_59/embeddings/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/embedding_50/embeddings/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/dcn_5/cross_5/dense/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dcn_5/cross_5/dense/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/dcn_5/dense_15/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dcn_5/dense_15/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/dcn_5/dense_16/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dcn_5/dense_16/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/dcn_5/dense_17/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dcn_5/dense_17/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
n
serving_default_agePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
q
serving_default_c_typePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
t
serving_default_characterPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
q
serving_default_genderPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_interacted_idPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
s
serving_default_languagePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_login_timePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
o
serving_default_modePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
r
serving_default_rankingPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
r
serving_default_user_idPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
ú
StatefulPartitionedCallStatefulPartitionedCallserving_default_ageserving_default_c_typeserving_default_characterserving_default_genderserving_default_interacted_idserving_default_languageserving_default_login_timeserving_default_modeserving_default_rankingserving_default_user_idembedding_50/embeddingsembedding_51/embeddingsembedding_52/embeddingsembedding_53/embeddingsembedding_54/embeddingsembedding_55/embeddingsembedding_56/embeddingsembedding_57/embeddingsembedding_58/embeddingsembedding_59/embeddingsdcn_5/cross_5/dense/kerneldcn_5/cross_5/dense/biasdcn_5/dense_15/kerneldcn_5/dense_15/biasdcn_5/dense_16/kerneldcn_5/dense_16/biasdcn_5/dense_17/kerneldcn_5/dense_17/bias*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_534112
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_52/embeddings/Read/ReadVariableOp+embedding_57/embeddings/Read/ReadVariableOp+embedding_56/embeddings/Read/ReadVariableOp+embedding_53/embeddings/Read/ReadVariableOp+embedding_51/embeddings/Read/ReadVariableOp+embedding_54/embeddings/Read/ReadVariableOp+embedding_55/embeddings/Read/ReadVariableOp+embedding_58/embeddings/Read/ReadVariableOp+embedding_59/embeddings/Read/ReadVariableOp+embedding_50/embeddings/Read/ReadVariableOp.dcn_5/cross_5/dense/kernel/Read/ReadVariableOp,dcn_5/cross_5/dense/bias/Read/ReadVariableOp)dcn_5/dense_15/kernel/Read/ReadVariableOp'dcn_5/dense_15/bias/Read/ReadVariableOp)dcn_5/dense_16/kernel/Read/ReadVariableOp'dcn_5/dense_16/bias/Read/ReadVariableOp)dcn_5/dense_17/kernel/Read/ReadVariableOp'dcn_5/dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/embedding_52/embeddings/m/Read/ReadVariableOp2Adam/embedding_57/embeddings/m/Read/ReadVariableOp2Adam/embedding_56/embeddings/m/Read/ReadVariableOp2Adam/embedding_53/embeddings/m/Read/ReadVariableOp2Adam/embedding_51/embeddings/m/Read/ReadVariableOp2Adam/embedding_54/embeddings/m/Read/ReadVariableOp2Adam/embedding_55/embeddings/m/Read/ReadVariableOp2Adam/embedding_58/embeddings/m/Read/ReadVariableOp2Adam/embedding_59/embeddings/m/Read/ReadVariableOp2Adam/embedding_50/embeddings/m/Read/ReadVariableOp5Adam/dcn_5/cross_5/dense/kernel/m/Read/ReadVariableOp3Adam/dcn_5/cross_5/dense/bias/m/Read/ReadVariableOp0Adam/dcn_5/dense_15/kernel/m/Read/ReadVariableOp.Adam/dcn_5/dense_15/bias/m/Read/ReadVariableOp0Adam/dcn_5/dense_16/kernel/m/Read/ReadVariableOp.Adam/dcn_5/dense_16/bias/m/Read/ReadVariableOp0Adam/dcn_5/dense_17/kernel/m/Read/ReadVariableOp.Adam/dcn_5/dense_17/bias/m/Read/ReadVariableOp2Adam/embedding_52/embeddings/v/Read/ReadVariableOp2Adam/embedding_57/embeddings/v/Read/ReadVariableOp2Adam/embedding_56/embeddings/v/Read/ReadVariableOp2Adam/embedding_53/embeddings/v/Read/ReadVariableOp2Adam/embedding_51/embeddings/v/Read/ReadVariableOp2Adam/embedding_54/embeddings/v/Read/ReadVariableOp2Adam/embedding_55/embeddings/v/Read/ReadVariableOp2Adam/embedding_58/embeddings/v/Read/ReadVariableOp2Adam/embedding_59/embeddings/v/Read/ReadVariableOp2Adam/embedding_50/embeddings/v/Read/ReadVariableOp5Adam/dcn_5/cross_5/dense/kernel/v/Read/ReadVariableOp3Adam/dcn_5/cross_5/dense/bias/v/Read/ReadVariableOp0Adam/dcn_5/dense_15/kernel/v/Read/ReadVariableOp.Adam/dcn_5/dense_15/bias/v/Read/ReadVariableOp0Adam/dcn_5/dense_16/kernel/v/Read/ReadVariableOp.Adam/dcn_5/dense_16/bias/v/Read/ReadVariableOp0Adam/dcn_5/dense_17/kernel/v/Read/ReadVariableOp.Adam/dcn_5/dense_17/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_535533
Á
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_52/embeddingsembedding_57/embeddingsembedding_56/embeddingsembedding_53/embeddingsembedding_51/embeddingsembedding_54/embeddingsembedding_55/embeddingsembedding_58/embeddingsembedding_59/embeddingsembedding_50/embeddingsdcn_5/cross_5/dense/kerneldcn_5/cross_5/dense/biasdcn_5/dense_15/kerneldcn_5/dense_15/biasdcn_5/dense_16/kerneldcn_5/dense_16/biasdcn_5/dense_17/kerneldcn_5/dense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/embedding_52/embeddings/mAdam/embedding_57/embeddings/mAdam/embedding_56/embeddings/mAdam/embedding_53/embeddings/mAdam/embedding_51/embeddings/mAdam/embedding_54/embeddings/mAdam/embedding_55/embeddings/mAdam/embedding_58/embeddings/mAdam/embedding_59/embeddings/mAdam/embedding_50/embeddings/m!Adam/dcn_5/cross_5/dense/kernel/mAdam/dcn_5/cross_5/dense/bias/mAdam/dcn_5/dense_15/kernel/mAdam/dcn_5/dense_15/bias/mAdam/dcn_5/dense_16/kernel/mAdam/dcn_5/dense_16/bias/mAdam/dcn_5/dense_17/kernel/mAdam/dcn_5/dense_17/bias/mAdam/embedding_52/embeddings/vAdam/embedding_57/embeddings/vAdam/embedding_56/embeddings/vAdam/embedding_53/embeddings/vAdam/embedding_51/embeddings/vAdam/embedding_54/embeddings/vAdam/embedding_55/embeddings/vAdam/embedding_58/embeddings/vAdam/embedding_59/embeddings/vAdam/embedding_50/embeddings/v!Adam/dcn_5/cross_5/dense/kernel/vAdam/dcn_5/cross_5/dense/bias/vAdam/dcn_5/dense_15/kernel/vAdam/dcn_5/dense_15/bias/vAdam/dcn_5/dense_16/kernel/vAdam/dcn_5/dense_16/bias/vAdam/dcn_5/dense_17/kernel/vAdam/dcn_5/dense_17/bias/v*I
TinB
@2>*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_535726Ê°
·

9__inference_user_id_sequential_layer_layer_call_fn_534472

inputs	
unknown:
øÉ 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_16_layer_call_and_return_conditional_losses_535158

inputs2
matmul_readvariableop_resource:
ÀÀ.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
©
À
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_532849

inputs	%
embedding_53_532845: 
identity¢$embedding_53/StatefulPartitionedCallì
$embedding_53/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_53_532845*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_53_layer_call_and_return_conditional_losses_532844|
IdentityIdentity-embedding_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_53/StatefulPartitionedCall$embedding_53/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø	
Í
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534495

inputs	8
$embedding_50_embedding_lookup_534489:
øÉ 
identity¢embedding_50/embedding_lookupÜ
embedding_50/embedding_lookupResourceGather$embedding_50_embedding_lookup_534489inputs*
Tindices0	*7
_class-
+)loc:@embedding_50/embedding_lookup/534489*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_50/embedding_lookup/IdentityIdentity&embedding_50/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_50/embedding_lookup/534489*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_50/embedding_lookup/Identity_1Identity/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_50/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_50/embedding_lookupembedding_50/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

Ê
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533536

inputs6
$embedding_57_embedding_lookup_533530: 
identity¢embedding_57/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_57/embedding_lookupResourceGather$embedding_57_embedding_lookup_533530Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_57/embedding_lookup/533530*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_57/embedding_lookup/533530*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_57/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_57/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_57/embedding_lookupembedding_57/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534514

inputs8
$embedding_50_embedding_lookup_534508:
øÉ 
identity¢embedding_50/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_50/embedding_lookupResourceGather$embedding_50_embedding_lookup_534508Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_50/embedding_lookup/534508*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_50/embedding_lookup/IdentityIdentity&embedding_50/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_50/embedding_lookup/534508*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_50/embedding_lookup/Identity_1Identity/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_50/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_50/embedding_lookupembedding_50/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
Å
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_532993

inputs	&
embedding_55_532989:	¡ 
identity¢$embedding_55/StatefulPartitionedCallì
$embedding_55/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_55_532989*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_55_layer_call_and_return_conditional_losses_532988|
IdentityIdentity-embedding_55/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_55/StatefulPartitionedCall$embedding_55/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_54_layer_call_and_return_conditional_losses_532940

inputs	)
embedding_lookup_532934:4 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532934inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532934*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532934*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

:__inference_language_sequential_layer_layer_call_fn_534743

inputs
unknown:4 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533250o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
Á
&__inference_dcn_5_layer_call_fn_534162
features_age
features_c_type
features_character
features_gender
features_interacted_id
features_language
features_login_time
features_mode
features_ranking
features_user_id
unknown:
øÉ 
	unknown_0:
÷É 
	unknown_1:4 
	unknown_2: 
	unknown_3:4 
	unknown_4:	¡ 
	unknown_5:! 
	unknown_6: 
	unknown_7: 
	unknown_8:	À 
	unknown_9:
ÀÀ

unknown_10:	À

unknown_11:
ÀÀ

unknown_12:	À

unknown_13:
ÀÀ

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallfeatures_agefeatures_c_typefeatures_characterfeatures_genderfeatures_interacted_idfeatures_languagefeatures_login_timefeatures_modefeatures_rankingfeatures_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dcn_5_layer_call_and_return_conditional_losses_533390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namefeatures/age:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/c_type:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namefeatures/character:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/gender:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namefeatures/interacted_id:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/language:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/login_time:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namefeatures/mode:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/ranking:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/user_id
²
¥
H__inference_embedding_53_layer_call_and_return_conditional_losses_535222

inputs	)
embedding_lookup_535216: 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535216inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535216*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535216*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

Ï
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533584

inputs7
$embedding_55_embedding_lookup_533578:	¡ 
identity¢embedding_55/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_55/embedding_lookupResourceGather$embedding_55_embedding_lookup_533578Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_55/embedding_lookup/533578*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_55/embedding_lookup/IdentityIdentity&embedding_55/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_55/embedding_lookup/533578*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_55/embedding_lookup/Identity_1Identity/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_55/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_55/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_55/embedding_lookupembedding_55/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534524

inputs8
$embedding_50_embedding_lookup_534518:
øÉ 
identity¢embedding_50/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_50/embedding_lookupResourceGather$embedding_50_embedding_lookup_534518Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_50/embedding_lookup/534518*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_50/embedding_lookup/IdentityIdentity&embedding_50/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_50/embedding_lookup/534518*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_50/embedding_lookup/Identity_1Identity/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_50/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_50/embedding_lookupembedding_50/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
¦
H__inference_embedding_59_layer_call_and_return_conditional_losses_533084

inputs	*
embedding_lookup_533078:	À 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_533078inputs*
Tindices0	**
_class 
loc:@embedding_lookup/533078*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/533078*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
Ó
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534561

inputs	8
$embedding_51_embedding_lookup_534555:
÷É 
identity¢embedding_51/embedding_lookupÜ
embedding_51/embedding_lookupResourceGather$embedding_51_embedding_lookup_534555inputs*
Tindices0	*7
_class-
+)loc:@embedding_51/embedding_lookup/534555*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_51/embedding_lookup/IdentityIdentity&embedding_51/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_51/embedding_lookup/534555*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_51/embedding_lookup/Identity_1Identity/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_51/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_51/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_51/embedding_lookupembedding_51/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Â
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533089

inputs	&
embedding_59_533085:	À 
identity¢$embedding_59/StatefulPartitionedCallì
$embedding_59/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_59_533085*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_59_layer_call_and_return_conditional_losses_533084|
IdentityIdentity-embedding_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_59/StatefulPartitionedCall$embedding_59/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Ì
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535098

inputs	7
$embedding_59_embedding_lookup_535092:	À 
identity¢embedding_59/embedding_lookupÜ
embedding_59/embedding_lookupResourceGather$embedding_59_embedding_lookup_535092inputs*
Tindices0	*7
_class-
+)loc:@embedding_59/embedding_lookup/535092*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_59/embedding_lookup/535092*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_59/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_59/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_59/embedding_lookupembedding_59/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_55_layer_call_fn_535245

inputs	
unknown:	¡ 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_55_layer_call_and_return_conditional_losses_532988o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

)__inference_dense_17_layer_call_fn_534448

inputs
unknown:	À
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_533383o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¶

9__inference_ranking_sequential_layer_layer_call_fn_535066

inputs	
unknown:	À 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

5__inference_age_sequential_layer_layer_call_fn_534597

inputs	
unknown:4 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_532705o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
½
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_532705

inputs	%
embedding_52_532701:4 
identity¢$embedding_52/StatefulPartitionedCallì
$embedding_52/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_52_532701*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_52_layer_call_and_return_conditional_losses_532700|
IdentityIdentity-embedding_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_52/StatefulPartitionedCall$embedding_52/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

5__inference_age_sequential_layer_layer_call_fn_534604

inputs	
unknown:4 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_532727o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
÷
!__inference__wrapped_model_532684
age

c_type
	character

gender
interacted_id
language

login_time
mode
ranking
user_idW
Cdcn_5_user_id_sequential_layer_embedding_50_embedding_lookup_532594:
øÉ ]
Idcn_5_interacted_id_sequential_layer_embedding_51_embedding_lookup_532600:
÷É Q
?dcn_5_age_sequential_layer_embedding_52_embedding_lookup_532606:4 T
Bdcn_5_gender_sequential_layer_embedding_53_embedding_lookup_532612: V
Ddcn_5_language_sequential_layer_embedding_54_embedding_lookup_532618:4 Y
Fdcn_5_login_time_sequential_layer_embedding_55_embedding_lookup_532624:	¡ W
Edcn_5_character_sequential_layer_embedding_56_embedding_lookup_532630:! T
Bdcn_5_c_type_sequential_layer_embedding_57_embedding_lookup_532636: R
@dcn_5_mode_sequential_layer_embedding_58_embedding_lookup_532642: V
Cdcn_5_ranking_sequential_layer_embedding_59_embedding_lookup_532648:	À F
2dcn_5_cross_5_dense_matmul_readvariableop_resource:
ÀÀB
3dcn_5_cross_5_dense_biasadd_readvariableop_resource:	ÀA
-dcn_5_dense_15_matmul_readvariableop_resource:
ÀÀ=
.dcn_5_dense_15_biasadd_readvariableop_resource:	ÀA
-dcn_5_dense_16_matmul_readvariableop_resource:
ÀÀ=
.dcn_5_dense_16_biasadd_readvariableop_resource:	À@
-dcn_5_dense_17_matmul_readvariableop_resource:	À<
.dcn_5_dense_17_biasadd_readvariableop_resource:
identity¢8dcn_5/age_sequential_layer/embedding_52/embedding_lookup¢;dcn_5/c_type_sequential_layer/embedding_57/embedding_lookup¢>dcn_5/character_sequential_layer/embedding_56/embedding_lookup¢*dcn_5/cross_5/dense/BiasAdd/ReadVariableOp¢)dcn_5/cross_5/dense/MatMul/ReadVariableOp¢%dcn_5/dense_15/BiasAdd/ReadVariableOp¢$dcn_5/dense_15/MatMul/ReadVariableOp¢%dcn_5/dense_16/BiasAdd/ReadVariableOp¢$dcn_5/dense_16/MatMul/ReadVariableOp¢%dcn_5/dense_17/BiasAdd/ReadVariableOp¢$dcn_5/dense_17/MatMul/ReadVariableOp¢;dcn_5/gender_sequential_layer/embedding_53/embedding_lookup¢Bdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup¢=dcn_5/language_sequential_layer/embedding_54/embedding_lookup¢?dcn_5/login_time_sequential_layer/embedding_55/embedding_lookup¢9dcn_5/mode_sequential_layer/embedding_58/embedding_lookup¢<dcn_5/ranking_sequential_layer/embedding_59/embedding_lookup¢<dcn_5/user_id_sequential_layer/embedding_50/embedding_lookupq
#dcn_5/user_id_sequential_layer/CastCastuser_id*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
<dcn_5/user_id_sequential_layer/embedding_50/embedding_lookupResourceGatherCdcn_5_user_id_sequential_layer_embedding_50_embedding_lookup_532594'dcn_5/user_id_sequential_layer/Cast:y:0*
Tindices0	*V
_classL
JHloc:@dcn_5/user_id_sequential_layer/embedding_50/embedding_lookup/532594*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¢
Edcn_5/user_id_sequential_layer/embedding_50/embedding_lookup/IdentityIdentityEdcn_5/user_id_sequential_layer/embedding_50/embedding_lookup:output:0*
T0*V
_classL
JHloc:@dcn_5/user_id_sequential_layer/embedding_50/embedding_lookup/532594*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Õ
Gdcn_5/user_id_sequential_layer/embedding_50/embedding_lookup/Identity_1IdentityNdcn_5/user_id_sequential_layer/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
)dcn_5/interacted_id_sequential_layer/CastCastinteracted_id*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
Bdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookupResourceGatherIdcn_5_interacted_id_sequential_layer_embedding_51_embedding_lookup_532600-dcn_5/interacted_id_sequential_layer/Cast:y:0*
Tindices0	*\
_classR
PNloc:@dcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup/532600*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0´
Kdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup/IdentityIdentityKdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup:output:0*
T0*\
_classR
PNloc:@dcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup/532600*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ á
Mdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup/Identity_1IdentityTdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dcn_5/age_sequential_layer/CastCastage*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
8dcn_5/age_sequential_layer/embedding_52/embedding_lookupResourceGather?dcn_5_age_sequential_layer_embedding_52_embedding_lookup_532606#dcn_5/age_sequential_layer/Cast:y:0*
Tindices0	*R
_classH
FDloc:@dcn_5/age_sequential_layer/embedding_52/embedding_lookup/532606*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Adcn_5/age_sequential_layer/embedding_52/embedding_lookup/IdentityIdentityAdcn_5/age_sequential_layer/embedding_52/embedding_lookup:output:0*
T0*R
_classH
FDloc:@dcn_5/age_sequential_layer/embedding_52/embedding_lookup/532606*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í
Cdcn_5/age_sequential_layer/embedding_52/embedding_lookup/Identity_1IdentityJdcn_5/age_sequential_layer/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
"dcn_5/gender_sequential_layer/CastCastgender*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
;dcn_5/gender_sequential_layer/embedding_53/embedding_lookupResourceGatherBdcn_5_gender_sequential_layer_embedding_53_embedding_lookup_532612&dcn_5/gender_sequential_layer/Cast:y:0*
Tindices0	*U
_classK
IGloc:@dcn_5/gender_sequential_layer/embedding_53/embedding_lookup/532612*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Ddcn_5/gender_sequential_layer/embedding_53/embedding_lookup/IdentityIdentityDdcn_5/gender_sequential_layer/embedding_53/embedding_lookup:output:0*
T0*U
_classK
IGloc:@dcn_5/gender_sequential_layer/embedding_53/embedding_lookup/532612*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ó
Fdcn_5/gender_sequential_layer/embedding_53/embedding_lookup/Identity_1IdentityMdcn_5/gender_sequential_layer/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
$dcn_5/language_sequential_layer/CastCastlanguage*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
=dcn_5/language_sequential_layer/embedding_54/embedding_lookupResourceGatherDdcn_5_language_sequential_layer_embedding_54_embedding_lookup_532618(dcn_5/language_sequential_layer/Cast:y:0*
Tindices0	*W
_classM
KIloc:@dcn_5/language_sequential_layer/embedding_54/embedding_lookup/532618*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¥
Fdcn_5/language_sequential_layer/embedding_54/embedding_lookup/IdentityIdentityFdcn_5/language_sequential_layer/embedding_54/embedding_lookup:output:0*
T0*W
_classM
KIloc:@dcn_5/language_sequential_layer/embedding_54/embedding_lookup/532618*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ×
Hdcn_5/language_sequential_layer/embedding_54/embedding_lookup/Identity_1IdentityOdcn_5/language_sequential_layer/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
&dcn_5/login_time_sequential_layer/CastCast
login_time*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
?dcn_5/login_time_sequential_layer/embedding_55/embedding_lookupResourceGatherFdcn_5_login_time_sequential_layer_embedding_55_embedding_lookup_532624*dcn_5/login_time_sequential_layer/Cast:y:0*
Tindices0	*Y
_classO
MKloc:@dcn_5/login_time_sequential_layer/embedding_55/embedding_lookup/532624*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0«
Hdcn_5/login_time_sequential_layer/embedding_55/embedding_lookup/IdentityIdentityHdcn_5/login_time_sequential_layer/embedding_55/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@dcn_5/login_time_sequential_layer/embedding_55/embedding_lookup/532624*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Û
Jdcn_5/login_time_sequential_layer/embedding_55/embedding_lookup/Identity_1IdentityQdcn_5/login_time_sequential_layer/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
%dcn_5/character_sequential_layer/CastCast	character*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
>dcn_5/character_sequential_layer/embedding_56/embedding_lookupResourceGatherEdcn_5_character_sequential_layer_embedding_56_embedding_lookup_532630)dcn_5/character_sequential_layer/Cast:y:0*
Tindices0	*X
_classN
LJloc:@dcn_5/character_sequential_layer/embedding_56/embedding_lookup/532630*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¨
Gdcn_5/character_sequential_layer/embedding_56/embedding_lookup/IdentityIdentityGdcn_5/character_sequential_layer/embedding_56/embedding_lookup:output:0*
T0*X
_classN
LJloc:@dcn_5/character_sequential_layer/embedding_56/embedding_lookup/532630*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù
Idcn_5/character_sequential_layer/embedding_56/embedding_lookup/Identity_1IdentityPdcn_5/character_sequential_layer/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
"dcn_5/c_type_sequential_layer/CastCastc_type*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
;dcn_5/c_type_sequential_layer/embedding_57/embedding_lookupResourceGatherBdcn_5_c_type_sequential_layer_embedding_57_embedding_lookup_532636&dcn_5/c_type_sequential_layer/Cast:y:0*
Tindices0	*U
_classK
IGloc:@dcn_5/c_type_sequential_layer/embedding_57/embedding_lookup/532636*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Ddcn_5/c_type_sequential_layer/embedding_57/embedding_lookup/IdentityIdentityDdcn_5/c_type_sequential_layer/embedding_57/embedding_lookup:output:0*
T0*U
_classK
IGloc:@dcn_5/c_type_sequential_layer/embedding_57/embedding_lookup/532636*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ó
Fdcn_5/c_type_sequential_layer/embedding_57/embedding_lookup/Identity_1IdentityMdcn_5/c_type_sequential_layer/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
 dcn_5/mode_sequential_layer/CastCastmode*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
9dcn_5/mode_sequential_layer/embedding_58/embedding_lookupResourceGather@dcn_5_mode_sequential_layer_embedding_58_embedding_lookup_532642$dcn_5/mode_sequential_layer/Cast:y:0*
Tindices0	*S
_classI
GEloc:@dcn_5/mode_sequential_layer/embedding_58/embedding_lookup/532642*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Bdcn_5/mode_sequential_layer/embedding_58/embedding_lookup/IdentityIdentityBdcn_5/mode_sequential_layer/embedding_58/embedding_lookup:output:0*
T0*S
_classI
GEloc:@dcn_5/mode_sequential_layer/embedding_58/embedding_lookup/532642*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ï
Ddcn_5/mode_sequential_layer/embedding_58/embedding_lookup/Identity_1IdentityKdcn_5/mode_sequential_layer/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
#dcn_5/ranking_sequential_layer/CastCastranking*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
<dcn_5/ranking_sequential_layer/embedding_59/embedding_lookupResourceGatherCdcn_5_ranking_sequential_layer_embedding_59_embedding_lookup_532648'dcn_5/ranking_sequential_layer/Cast:y:0*
Tindices0	*V
_classL
JHloc:@dcn_5/ranking_sequential_layer/embedding_59/embedding_lookup/532648*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¢
Edcn_5/ranking_sequential_layer/embedding_59/embedding_lookup/IdentityIdentityEdcn_5/ranking_sequential_layer/embedding_59/embedding_lookup:output:0*
T0*V
_classL
JHloc:@dcn_5/ranking_sequential_layer/embedding_59/embedding_lookup/532648*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Õ
Gdcn_5/ranking_sequential_layer/embedding_59/embedding_lookup/Identity_1IdentityNdcn_5/ranking_sequential_layer/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
dcn_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :§
dcn_5/concatConcatV2Pdcn_5/user_id_sequential_layer/embedding_50/embedding_lookup/Identity_1:output:0Vdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup/Identity_1:output:0Ldcn_5/age_sequential_layer/embedding_52/embedding_lookup/Identity_1:output:0Odcn_5/gender_sequential_layer/embedding_53/embedding_lookup/Identity_1:output:0Qdcn_5/language_sequential_layer/embedding_54/embedding_lookup/Identity_1:output:0Sdcn_5/login_time_sequential_layer/embedding_55/embedding_lookup/Identity_1:output:0Rdcn_5/character_sequential_layer/embedding_56/embedding_lookup/Identity_1:output:0Odcn_5/c_type_sequential_layer/embedding_57/embedding_lookup/Identity_1:output:0Mdcn_5/mode_sequential_layer/embedding_58/embedding_lookup/Identity_1:output:0Pdcn_5/ranking_sequential_layer/embedding_59/embedding_lookup/Identity_1:output:0dcn_5/concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)dcn_5/cross_5/dense/MatMul/ReadVariableOpReadVariableOp2dcn_5_cross_5_dense_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0¡
dcn_5/cross_5/dense/MatMulMatMuldcn_5/concat:output:01dcn_5/cross_5/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
*dcn_5/cross_5/dense/BiasAdd/ReadVariableOpReadVariableOp3dcn_5_cross_5_dense_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0³
dcn_5/cross_5/dense/BiasAddBiasAdd$dcn_5/cross_5/dense/MatMul:product:02dcn_5/cross_5/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dcn_5/cross_5/mulMuldcn_5/concat:output:0$dcn_5/cross_5/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
dcn_5/cross_5/addAddV2dcn_5/cross_5/mul:z:0dcn_5/concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
$dcn_5/dense_15/MatMul/ReadVariableOpReadVariableOp-dcn_5_dense_15_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
dcn_5/dense_15/MatMulMatMuldcn_5/cross_5/add:z:0,dcn_5/dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
%dcn_5/dense_15/BiasAdd/ReadVariableOpReadVariableOp.dcn_5_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0¤
dcn_5/dense_15/BiasAddBiasAdddcn_5/dense_15/MatMul:product:0-dcn_5/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀo
dcn_5/dense_15/ReluReludcn_5/dense_15/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
$dcn_5/dense_16/MatMul/ReadVariableOpReadVariableOp-dcn_5_dense_16_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0£
dcn_5/dense_16/MatMulMatMul!dcn_5/dense_15/Relu:activations:0,dcn_5/dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
%dcn_5/dense_16/BiasAdd/ReadVariableOpReadVariableOp.dcn_5_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0¤
dcn_5/dense_16/BiasAddBiasAdddcn_5/dense_16/MatMul:product:0-dcn_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀo
dcn_5/dense_16/ReluReludcn_5/dense_16/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
$dcn_5/dense_17/MatMul/ReadVariableOpReadVariableOp-dcn_5_dense_17_matmul_readvariableop_resource*
_output_shapes
:	À*
dtype0¢
dcn_5/dense_17/MatMulMatMul!dcn_5/dense_16/Relu:activations:0,dcn_5/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%dcn_5/dense_17/BiasAdd/ReadVariableOpReadVariableOp.dcn_5_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
dcn_5/dense_17/BiasAddBiasAdddcn_5/dense_17/MatMul:product:0-dcn_5/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitydcn_5/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp9^dcn_5/age_sequential_layer/embedding_52/embedding_lookup<^dcn_5/c_type_sequential_layer/embedding_57/embedding_lookup?^dcn_5/character_sequential_layer/embedding_56/embedding_lookup+^dcn_5/cross_5/dense/BiasAdd/ReadVariableOp*^dcn_5/cross_5/dense/MatMul/ReadVariableOp&^dcn_5/dense_15/BiasAdd/ReadVariableOp%^dcn_5/dense_15/MatMul/ReadVariableOp&^dcn_5/dense_16/BiasAdd/ReadVariableOp%^dcn_5/dense_16/MatMul/ReadVariableOp&^dcn_5/dense_17/BiasAdd/ReadVariableOp%^dcn_5/dense_17/MatMul/ReadVariableOp<^dcn_5/gender_sequential_layer/embedding_53/embedding_lookupC^dcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup>^dcn_5/language_sequential_layer/embedding_54/embedding_lookup@^dcn_5/login_time_sequential_layer/embedding_55/embedding_lookup:^dcn_5/mode_sequential_layer/embedding_58/embedding_lookup=^dcn_5/ranking_sequential_layer/embedding_59/embedding_lookup=^dcn_5/user_id_sequential_layer/embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2t
8dcn_5/age_sequential_layer/embedding_52/embedding_lookup8dcn_5/age_sequential_layer/embedding_52/embedding_lookup2z
;dcn_5/c_type_sequential_layer/embedding_57/embedding_lookup;dcn_5/c_type_sequential_layer/embedding_57/embedding_lookup2
>dcn_5/character_sequential_layer/embedding_56/embedding_lookup>dcn_5/character_sequential_layer/embedding_56/embedding_lookup2X
*dcn_5/cross_5/dense/BiasAdd/ReadVariableOp*dcn_5/cross_5/dense/BiasAdd/ReadVariableOp2V
)dcn_5/cross_5/dense/MatMul/ReadVariableOp)dcn_5/cross_5/dense/MatMul/ReadVariableOp2N
%dcn_5/dense_15/BiasAdd/ReadVariableOp%dcn_5/dense_15/BiasAdd/ReadVariableOp2L
$dcn_5/dense_15/MatMul/ReadVariableOp$dcn_5/dense_15/MatMul/ReadVariableOp2N
%dcn_5/dense_16/BiasAdd/ReadVariableOp%dcn_5/dense_16/BiasAdd/ReadVariableOp2L
$dcn_5/dense_16/MatMul/ReadVariableOp$dcn_5/dense_16/MatMul/ReadVariableOp2N
%dcn_5/dense_17/BiasAdd/ReadVariableOp%dcn_5/dense_17/BiasAdd/ReadVariableOp2L
$dcn_5/dense_17/MatMul/ReadVariableOp$dcn_5/dense_17/MatMul/ReadVariableOp2z
;dcn_5/gender_sequential_layer/embedding_53/embedding_lookup;dcn_5/gender_sequential_layer/embedding_53/embedding_lookup2
Bdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookupBdcn_5/interacted_id_sequential_layer/embedding_51/embedding_lookup2~
=dcn_5/language_sequential_layer/embedding_54/embedding_lookup=dcn_5/language_sequential_layer/embedding_54/embedding_lookup2
?dcn_5/login_time_sequential_layer/embedding_55/embedding_lookup?dcn_5/login_time_sequential_layer/embedding_55/embedding_lookup2v
9dcn_5/mode_sequential_layer/embedding_58/embedding_lookup9dcn_5/mode_sequential_layer/embedding_58/embedding_lookup2|
<dcn_5/ranking_sequential_layer/embedding_59/embedding_lookup<dcn_5/ranking_sequential_layer/embedding_59/embedding_lookup2|
<dcn_5/user_id_sequential_layer/embedding_50/embedding_lookup<dcn_5/user_id_sequential_layer/embedding_50/embedding_lookup:H D
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameage:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namec_type:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	character:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namegender:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinteracted_id:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
language:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
login_time:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namemode:LH
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	ranking:L	H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	user_id
Ê

Ê
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534986

inputs6
$embedding_57_embedding_lookup_534980: 
identity¢embedding_57/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_57/embedding_lookupResourceGather$embedding_57_embedding_lookup_534980Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_57/embedding_lookup/534980*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_57/embedding_lookup/534980*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_57/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_57/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_57/embedding_lookupembedding_57/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_58_layer_call_and_return_conditional_losses_533036

inputs	)
embedding_lookup_533030: 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_533030inputs*
Tindices0	**
_class 
loc:@embedding_lookup/533030*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/533030*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

È
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533302

inputs6
$embedding_58_embedding_lookup_533296: 
identity¢embedding_58/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_58/embedding_lookupResourceGather$embedding_58_embedding_lookup_533296Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_58/embedding_lookup/533296*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_58/embedding_lookup/533296*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_58/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_58/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_58/embedding_lookupembedding_58/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹

;__inference_character_sequential_layer_layer_call_fn_534882

inputs
unknown:! 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ

A__inference_dcn_5_layer_call_and_return_conditional_losses_534315
features_age
features_c_type
features_character
features_gender
features_interacted_id
features_language
features_login_time
features_mode
features_ranking
features_user_idQ
=user_id_sequential_layer_embedding_50_embedding_lookup_534225:
øÉ W
Cinteracted_id_sequential_layer_embedding_51_embedding_lookup_534231:
÷É K
9age_sequential_layer_embedding_52_embedding_lookup_534237:4 N
<gender_sequential_layer_embedding_53_embedding_lookup_534243: P
>language_sequential_layer_embedding_54_embedding_lookup_534249:4 S
@login_time_sequential_layer_embedding_55_embedding_lookup_534255:	¡ Q
?character_sequential_layer_embedding_56_embedding_lookup_534261:! N
<c_type_sequential_layer_embedding_57_embedding_lookup_534267: L
:mode_sequential_layer_embedding_58_embedding_lookup_534273: P
=ranking_sequential_layer_embedding_59_embedding_lookup_534279:	À @
,cross_5_dense_matmul_readvariableop_resource:
ÀÀ<
-cross_5_dense_biasadd_readvariableop_resource:	À;
'dense_15_matmul_readvariableop_resource:
ÀÀ7
(dense_15_biasadd_readvariableop_resource:	À;
'dense_16_matmul_readvariableop_resource:
ÀÀ7
(dense_16_biasadd_readvariableop_resource:	À:
'dense_17_matmul_readvariableop_resource:	À6
(dense_17_biasadd_readvariableop_resource:
identity¢2age_sequential_layer/embedding_52/embedding_lookup¢5c_type_sequential_layer/embedding_57/embedding_lookup¢8character_sequential_layer/embedding_56/embedding_lookup¢$cross_5/dense/BiasAdd/ReadVariableOp¢#cross_5/dense/MatMul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢5gender_sequential_layer/embedding_53/embedding_lookup¢<interacted_id_sequential_layer/embedding_51/embedding_lookup¢7language_sequential_layer/embedding_54/embedding_lookup¢9login_time_sequential_layer/embedding_55/embedding_lookup¢3mode_sequential_layer/embedding_58/embedding_lookup¢6ranking_sequential_layer/embedding_59/embedding_lookup¢6user_id_sequential_layer/embedding_50/embedding_lookupt
user_id_sequential_layer/CastCastfeatures_user_id*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
6user_id_sequential_layer/embedding_50/embedding_lookupResourceGather=user_id_sequential_layer_embedding_50_embedding_lookup_534225!user_id_sequential_layer/Cast:y:0*
Tindices0	*P
_classF
DBloc:@user_id_sequential_layer/embedding_50/embedding_lookup/534225*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
?user_id_sequential_layer/embedding_50/embedding_lookup/IdentityIdentity?user_id_sequential_layer/embedding_50/embedding_lookup:output:0*
T0*P
_classF
DBloc:@user_id_sequential_layer/embedding_50/embedding_lookup/534225*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
Auser_id_sequential_layer/embedding_50/embedding_lookup/Identity_1IdentityHuser_id_sequential_layer/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#interacted_id_sequential_layer/CastCastfeatures_interacted_id*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
<interacted_id_sequential_layer/embedding_51/embedding_lookupResourceGatherCinteracted_id_sequential_layer_embedding_51_embedding_lookup_534231'interacted_id_sequential_layer/Cast:y:0*
Tindices0	*V
_classL
JHloc:@interacted_id_sequential_layer/embedding_51/embedding_lookup/534231*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¢
Einteracted_id_sequential_layer/embedding_51/embedding_lookup/IdentityIdentityEinteracted_id_sequential_layer/embedding_51/embedding_lookup:output:0*
T0*V
_classL
JHloc:@interacted_id_sequential_layer/embedding_51/embedding_lookup/534231*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Õ
Ginteracted_id_sequential_layer/embedding_51/embedding_lookup/Identity_1IdentityNinteracted_id_sequential_layer/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
age_sequential_layer/CastCastfeatures_age*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
2age_sequential_layer/embedding_52/embedding_lookupResourceGather9age_sequential_layer_embedding_52_embedding_lookup_534237age_sequential_layer/Cast:y:0*
Tindices0	*L
_classB
@>loc:@age_sequential_layer/embedding_52/embedding_lookup/534237*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
;age_sequential_layer/embedding_52/embedding_lookup/IdentityIdentity;age_sequential_layer/embedding_52/embedding_lookup:output:0*
T0*L
_classB
@>loc:@age_sequential_layer/embedding_52/embedding_lookup/534237*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
=age_sequential_layer/embedding_52/embedding_lookup/Identity_1IdentityDage_sequential_layer/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
gender_sequential_layer/CastCastfeatures_gender*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
5gender_sequential_layer/embedding_53/embedding_lookupResourceGather<gender_sequential_layer_embedding_53_embedding_lookup_534243 gender_sequential_layer/Cast:y:0*
Tindices0	*O
_classE
CAloc:@gender_sequential_layer/embedding_53/embedding_lookup/534243*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
>gender_sequential_layer/embedding_53/embedding_lookup/IdentityIdentity>gender_sequential_layer/embedding_53/embedding_lookup:output:0*
T0*O
_classE
CAloc:@gender_sequential_layer/embedding_53/embedding_lookup/534243*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ç
@gender_sequential_layer/embedding_53/embedding_lookup/Identity_1IdentityGgender_sequential_layer/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
language_sequential_layer/CastCastfeatures_language*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
7language_sequential_layer/embedding_54/embedding_lookupResourceGather>language_sequential_layer_embedding_54_embedding_lookup_534249"language_sequential_layer/Cast:y:0*
Tindices0	*Q
_classG
ECloc:@language_sequential_layer/embedding_54/embedding_lookup/534249*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
@language_sequential_layer/embedding_54/embedding_lookup/IdentityIdentity@language_sequential_layer/embedding_54/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@language_sequential_layer/embedding_54/embedding_lookup/534249*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ë
Blanguage_sequential_layer/embedding_54/embedding_lookup/Identity_1IdentityIlanguage_sequential_layer/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
 login_time_sequential_layer/CastCastfeatures_login_time*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
9login_time_sequential_layer/embedding_55/embedding_lookupResourceGather@login_time_sequential_layer_embedding_55_embedding_lookup_534255$login_time_sequential_layer/Cast:y:0*
Tindices0	*S
_classI
GEloc:@login_time_sequential_layer/embedding_55/embedding_lookup/534255*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Blogin_time_sequential_layer/embedding_55/embedding_lookup/IdentityIdentityBlogin_time_sequential_layer/embedding_55/embedding_lookup:output:0*
T0*S
_classI
GEloc:@login_time_sequential_layer/embedding_55/embedding_lookup/534255*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ï
Dlogin_time_sequential_layer/embedding_55/embedding_lookup/Identity_1IdentityKlogin_time_sequential_layer/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
character_sequential_layer/CastCastfeatures_character*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
8character_sequential_layer/embedding_56/embedding_lookupResourceGather?character_sequential_layer_embedding_56_embedding_lookup_534261#character_sequential_layer/Cast:y:0*
Tindices0	*R
_classH
FDloc:@character_sequential_layer/embedding_56/embedding_lookup/534261*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Acharacter_sequential_layer/embedding_56/embedding_lookup/IdentityIdentityAcharacter_sequential_layer/embedding_56/embedding_lookup:output:0*
T0*R
_classH
FDloc:@character_sequential_layer/embedding_56/embedding_lookup/534261*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í
Ccharacter_sequential_layer/embedding_56/embedding_lookup/Identity_1IdentityJcharacter_sequential_layer/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
c_type_sequential_layer/CastCastfeatures_c_type*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
5c_type_sequential_layer/embedding_57/embedding_lookupResourceGather<c_type_sequential_layer_embedding_57_embedding_lookup_534267 c_type_sequential_layer/Cast:y:0*
Tindices0	*O
_classE
CAloc:@c_type_sequential_layer/embedding_57/embedding_lookup/534267*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
>c_type_sequential_layer/embedding_57/embedding_lookup/IdentityIdentity>c_type_sequential_layer/embedding_57/embedding_lookup:output:0*
T0*O
_classE
CAloc:@c_type_sequential_layer/embedding_57/embedding_lookup/534267*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ç
@c_type_sequential_layer/embedding_57/embedding_lookup/Identity_1IdentityGc_type_sequential_layer/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
mode_sequential_layer/CastCastfeatures_mode*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
3mode_sequential_layer/embedding_58/embedding_lookupResourceGather:mode_sequential_layer_embedding_58_embedding_lookup_534273mode_sequential_layer/Cast:y:0*
Tindices0	*M
_classC
A?loc:@mode_sequential_layer/embedding_58/embedding_lookup/534273*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
<mode_sequential_layer/embedding_58/embedding_lookup/IdentityIdentity<mode_sequential_layer/embedding_58/embedding_lookup:output:0*
T0*M
_classC
A?loc:@mode_sequential_layer/embedding_58/embedding_lookup/534273*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
>mode_sequential_layer/embedding_58/embedding_lookup/Identity_1IdentityEmode_sequential_layer/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
ranking_sequential_layer/CastCastfeatures_ranking*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
6ranking_sequential_layer/embedding_59/embedding_lookupResourceGather=ranking_sequential_layer_embedding_59_embedding_lookup_534279!ranking_sequential_layer/Cast:y:0*
Tindices0	*P
_classF
DBloc:@ranking_sequential_layer/embedding_59/embedding_lookup/534279*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
?ranking_sequential_layer/embedding_59/embedding_lookup/IdentityIdentity?ranking_sequential_layer/embedding_59/embedding_lookup:output:0*
T0*P
_classF
DBloc:@ranking_sequential_layer/embedding_59/embedding_lookup/534279*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
Aranking_sequential_layer/embedding_59/embedding_lookup/Identity_1IdentityHranking_sequential_layer/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ß
concatConcatV2Juser_id_sequential_layer/embedding_50/embedding_lookup/Identity_1:output:0Pinteracted_id_sequential_layer/embedding_51/embedding_lookup/Identity_1:output:0Fage_sequential_layer/embedding_52/embedding_lookup/Identity_1:output:0Igender_sequential_layer/embedding_53/embedding_lookup/Identity_1:output:0Klanguage_sequential_layer/embedding_54/embedding_lookup/Identity_1:output:0Mlogin_time_sequential_layer/embedding_55/embedding_lookup/Identity_1:output:0Lcharacter_sequential_layer/embedding_56/embedding_lookup/Identity_1:output:0Ic_type_sequential_layer/embedding_57/embedding_lookup/Identity_1:output:0Gmode_sequential_layer/embedding_58/embedding_lookup/Identity_1:output:0Jranking_sequential_layer/embedding_59/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#cross_5/dense/MatMul/ReadVariableOpReadVariableOp,cross_5_dense_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
cross_5/dense/MatMulMatMulconcat:output:0+cross_5/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
$cross_5/dense/BiasAdd/ReadVariableOpReadVariableOp-cross_5_dense_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0¡
cross_5/dense/BiasAddBiasAddcross_5/dense/MatMul:product:0,cross_5/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
cross_5/mulMulconcat:output:0cross_5/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
cross_5/addAddV2cross_5/mul:z:0concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
dense_15/MatMulMatMulcross_5/add:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	À*
dtype0
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp3^age_sequential_layer/embedding_52/embedding_lookup6^c_type_sequential_layer/embedding_57/embedding_lookup9^character_sequential_layer/embedding_56/embedding_lookup%^cross_5/dense/BiasAdd/ReadVariableOp$^cross_5/dense/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp6^gender_sequential_layer/embedding_53/embedding_lookup=^interacted_id_sequential_layer/embedding_51/embedding_lookup8^language_sequential_layer/embedding_54/embedding_lookup:^login_time_sequential_layer/embedding_55/embedding_lookup4^mode_sequential_layer/embedding_58/embedding_lookup7^ranking_sequential_layer/embedding_59/embedding_lookup7^user_id_sequential_layer/embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2h
2age_sequential_layer/embedding_52/embedding_lookup2age_sequential_layer/embedding_52/embedding_lookup2n
5c_type_sequential_layer/embedding_57/embedding_lookup5c_type_sequential_layer/embedding_57/embedding_lookup2t
8character_sequential_layer/embedding_56/embedding_lookup8character_sequential_layer/embedding_56/embedding_lookup2L
$cross_5/dense/BiasAdd/ReadVariableOp$cross_5/dense/BiasAdd/ReadVariableOp2J
#cross_5/dense/MatMul/ReadVariableOp#cross_5/dense/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2n
5gender_sequential_layer/embedding_53/embedding_lookup5gender_sequential_layer/embedding_53/embedding_lookup2|
<interacted_id_sequential_layer/embedding_51/embedding_lookup<interacted_id_sequential_layer/embedding_51/embedding_lookup2r
7language_sequential_layer/embedding_54/embedding_lookup7language_sequential_layer/embedding_54/embedding_lookup2v
9login_time_sequential_layer/embedding_55/embedding_lookup9login_time_sequential_layer/embedding_55/embedding_lookup2j
3mode_sequential_layer/embedding_58/embedding_lookup3mode_sequential_layer/embedding_58/embedding_lookup2p
6ranking_sequential_layer/embedding_59/embedding_lookup6ranking_sequential_layer/embedding_59/embedding_lookup2p
6user_id_sequential_layer/embedding_50/embedding_lookup6user_id_sequential_layer/embedding_50/embedding_lookup:Q M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namefeatures/age:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/c_type:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namefeatures/character:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/gender:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namefeatures/interacted_id:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/language:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/login_time:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namefeatures/mode:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/ranking:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/user_id
õ	
Ê
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534693

inputs	6
$embedding_53_embedding_lookup_534687: 
identity¢embedding_53/embedding_lookupÜ
embedding_53/embedding_lookupResourceGather$embedding_53_embedding_lookup_534687inputs*
Tindices0	*7
_class-
+)loc:@embedding_53/embedding_lookup/534687*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_53/embedding_lookup/IdentityIdentity&embedding_53/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_53/embedding_lookup/534687*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_53/embedding_lookup/Identity_1Identity/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_53/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_53/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_53/embedding_lookupembedding_53/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_gender_sequential_layer_layer_call_fn_534670

inputs	
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_532871o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
É
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_532919

inputs	'
embedding_51_532915:
÷É 
identity¢$embedding_51/StatefulPartitionedCallì
$embedding_51/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_51_532915*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_51_layer_call_and_return_conditional_losses_532892|
IdentityIdentity-embedding_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_51/StatefulPartitionedCall$embedding_51/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

<__inference_login_time_sequential_layer_layer_call_fn_534809

inputs
unknown:	¡ 
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533263o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
ç
&__inference_dcn_5_layer_call_fn_533924
age

c_type
	character

gender
interacted_id
language

login_time
mode
ranking
user_id
unknown:
øÉ 
	unknown_0:
÷É 
	unknown_1:4 
	unknown_2: 
	unknown_3:4 
	unknown_4:	¡ 
	unknown_5:! 
	unknown_6: 
	unknown_7: 
	unknown_8:	À 
	unknown_9:
ÀÀ

unknown_10:	À

unknown_11:
ÀÀ

unknown_12:	À

unknown_13:
ÀÀ

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallagec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dcn_5_layer_call_and_return_conditional_losses_533835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameage:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namec_type:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	character:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namegender:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinteracted_id:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
language:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
login_time:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namemode:LH
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	ranking:L	H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	user_id
ô
°)
"__inference__traced_restore_535726
file_prefix:
(assignvariableop_embedding_52_embeddings:4 <
*assignvariableop_1_embedding_57_embeddings: <
*assignvariableop_2_embedding_56_embeddings:! <
*assignvariableop_3_embedding_53_embeddings: >
*assignvariableop_4_embedding_51_embeddings:
÷É <
*assignvariableop_5_embedding_54_embeddings:4 =
*assignvariableop_6_embedding_55_embeddings:	¡ <
*assignvariableop_7_embedding_58_embeddings: =
*assignvariableop_8_embedding_59_embeddings:	À >
*assignvariableop_9_embedding_50_embeddings:
øÉ B
.assignvariableop_10_dcn_5_cross_5_dense_kernel:
ÀÀ;
,assignvariableop_11_dcn_5_cross_5_dense_bias:	À=
)assignvariableop_12_dcn_5_dense_15_kernel:
ÀÀ6
'assignvariableop_13_dcn_5_dense_15_bias:	À=
)assignvariableop_14_dcn_5_dense_16_kernel:
ÀÀ6
'assignvariableop_15_dcn_5_dense_16_bias:	À<
)assignvariableop_16_dcn_5_dense_17_kernel:	À5
'assignvariableop_17_dcn_5_dense_17_bias:'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: #
assignvariableop_23_total: #
assignvariableop_24_count: D
2assignvariableop_25_adam_embedding_52_embeddings_m:4 D
2assignvariableop_26_adam_embedding_57_embeddings_m: D
2assignvariableop_27_adam_embedding_56_embeddings_m:! D
2assignvariableop_28_adam_embedding_53_embeddings_m: F
2assignvariableop_29_adam_embedding_51_embeddings_m:
÷É D
2assignvariableop_30_adam_embedding_54_embeddings_m:4 E
2assignvariableop_31_adam_embedding_55_embeddings_m:	¡ D
2assignvariableop_32_adam_embedding_58_embeddings_m: E
2assignvariableop_33_adam_embedding_59_embeddings_m:	À F
2assignvariableop_34_adam_embedding_50_embeddings_m:
øÉ I
5assignvariableop_35_adam_dcn_5_cross_5_dense_kernel_m:
ÀÀB
3assignvariableop_36_adam_dcn_5_cross_5_dense_bias_m:	ÀD
0assignvariableop_37_adam_dcn_5_dense_15_kernel_m:
ÀÀ=
.assignvariableop_38_adam_dcn_5_dense_15_bias_m:	ÀD
0assignvariableop_39_adam_dcn_5_dense_16_kernel_m:
ÀÀ=
.assignvariableop_40_adam_dcn_5_dense_16_bias_m:	ÀC
0assignvariableop_41_adam_dcn_5_dense_17_kernel_m:	À<
.assignvariableop_42_adam_dcn_5_dense_17_bias_m:D
2assignvariableop_43_adam_embedding_52_embeddings_v:4 D
2assignvariableop_44_adam_embedding_57_embeddings_v: D
2assignvariableop_45_adam_embedding_56_embeddings_v:! D
2assignvariableop_46_adam_embedding_53_embeddings_v: F
2assignvariableop_47_adam_embedding_51_embeddings_v:
÷É D
2assignvariableop_48_adam_embedding_54_embeddings_v:4 E
2assignvariableop_49_adam_embedding_55_embeddings_v:	¡ D
2assignvariableop_50_adam_embedding_58_embeddings_v: E
2assignvariableop_51_adam_embedding_59_embeddings_v:	À F
2assignvariableop_52_adam_embedding_50_embeddings_v:
øÉ I
5assignvariableop_53_adam_dcn_5_cross_5_dense_kernel_v:
ÀÀB
3assignvariableop_54_adam_dcn_5_cross_5_dense_bias_v:	ÀD
0assignvariableop_55_adam_dcn_5_dense_15_kernel_v:
ÀÀ=
.assignvariableop_56_adam_dcn_5_dense_15_bias_v:	ÀD
0assignvariableop_57_adam_dcn_5_dense_16_kernel_v:
ÀÀ=
.assignvariableop_58_adam_dcn_5_dense_16_bias_v:	ÀC
0assignvariableop_59_adam_dcn_5_dense_17_kernel_v:	À<
.assignvariableop_60_adam_dcn_5_dense_17_bias_v:
identity_62¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ö
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*ü
valueòBï>B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHï
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*
valueB>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ×
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesû
ø::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_embedding_52_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp*assignvariableop_1_embedding_57_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp*assignvariableop_2_embedding_56_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp*assignvariableop_3_embedding_53_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp*assignvariableop_4_embedding_51_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp*assignvariableop_5_embedding_54_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp*assignvariableop_6_embedding_55_embeddingsIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp*assignvariableop_7_embedding_58_embeddingsIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp*assignvariableop_8_embedding_59_embeddingsIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_embedding_50_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp.assignvariableop_10_dcn_5_cross_5_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp,assignvariableop_11_dcn_5_cross_5_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp)assignvariableop_12_dcn_5_dense_15_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp'assignvariableop_13_dcn_5_dense_15_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp)assignvariableop_14_dcn_5_dense_16_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp'assignvariableop_15_dcn_5_dense_16_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp)assignvariableop_16_dcn_5_dense_17_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp'assignvariableop_17_dcn_5_dense_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_embedding_52_embeddings_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_embedding_57_embeddings_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_embedding_56_embeddings_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_embedding_53_embeddings_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_29AssignVariableOp2assignvariableop_29_adam_embedding_51_embeddings_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_embedding_54_embeddings_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_embedding_55_embeddings_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_embedding_58_embeddings_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_embedding_59_embeddings_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_34AssignVariableOp2assignvariableop_34_adam_embedding_50_embeddings_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adam_dcn_5_cross_5_dense_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_36AssignVariableOp3assignvariableop_36_adam_dcn_5_cross_5_dense_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_37AssignVariableOp0assignvariableop_37_adam_dcn_5_dense_15_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adam_dcn_5_dense_15_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_39AssignVariableOp0assignvariableop_39_adam_dcn_5_dense_16_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp.assignvariableop_40_adam_dcn_5_dense_16_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_dcn_5_dense_17_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_dcn_5_dense_17_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_43AssignVariableOp2assignvariableop_43_adam_embedding_52_embeddings_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_embedding_57_embeddings_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_45AssignVariableOp2assignvariableop_45_adam_embedding_56_embeddings_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_embedding_53_embeddings_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_47AssignVariableOp2assignvariableop_47_adam_embedding_51_embeddings_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_48AssignVariableOp2assignvariableop_48_adam_embedding_54_embeddings_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_49AssignVariableOp2assignvariableop_49_adam_embedding_55_embeddings_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_embedding_58_embeddings_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_51AssignVariableOp2assignvariableop_51_adam_embedding_59_embeddings_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_52AssignVariableOp2assignvariableop_52_adam_embedding_50_embeddings_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_dcn_5_cross_5_dense_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_dcn_5_cross_5_dense_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_55AssignVariableOp0assignvariableop_55_adam_dcn_5_dense_15_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp.assignvariableop_56_adam_dcn_5_dense_15_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_57AssignVariableOp0assignvariableop_57_adam_dcn_5_dense_16_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp.assignvariableop_58_adam_dcn_5_dense_16_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_59AssignVariableOp0assignvariableop_59_adam_dcn_5_dense_17_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adam_dcn_5_dense_17_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_62IdentityIdentity_61:output:0^NoOp_1*
T0*
_output_shapes
: ú

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_62Identity_62:output:0*
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¯

6__inference_mode_sequential_layer_layer_call_fn_535000

inputs	
unknown: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
À
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_532753

inputs	%
embedding_57_532749: 
identity¢$embedding_57/StatefulPartitionedCallì
$embedding_57/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_57_532749*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_57_layer_call_and_return_conditional_losses_532748|
IdentityIdentity-embedding_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_57/StatefulPartitionedCall$embedding_57/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

C__inference_cross_5_layer_call_and_return_conditional_losses_534439
x08
$dense_matmul_readvariableop_resource:
ÀÀ4
%dense_biasadd_readvariableop_resource:	À
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0r
dense/MatMulMatMulx0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
mulMulx0dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀL
addAddV2mul:z:0x0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀW
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:L H
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ

_user_specified_namex0
³X
ü
A__inference_dcn_5_layer_call_and_return_conditional_losses_534054
age

c_type
	character

gender
interacted_id
language

login_time
mode
ranking
user_id3
user_id_sequential_layer_534001:
øÉ 9
%interacted_id_sequential_layer_534004:
÷É -
age_sequential_layer_534007:4 0
gender_sequential_layer_534010: 2
 language_sequential_layer_534013:4 5
"login_time_sequential_layer_534016:	¡ 3
!character_sequential_layer_534019:! 0
c_type_sequential_layer_534022: .
mode_sequential_layer_534025: 2
ranking_sequential_layer_534028:	À "
cross_5_534033:
ÀÀ
cross_5_534035:	À#
dense_15_534038:
ÀÀ
dense_15_534040:	À#
dense_16_534043:
ÀÀ
dense_16_534045:	À"
dense_17_534048:	À
dense_17_534050:
identity¢,age_sequential_layer/StatefulPartitionedCall¢/c_type_sequential_layer/StatefulPartitionedCall¢2character_sequential_layer/StatefulPartitionedCall¢cross_5/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/gender_sequential_layer/StatefulPartitionedCall¢6interacted_id_sequential_layer/StatefulPartitionedCall¢1language_sequential_layer/StatefulPartitionedCall¢3login_time_sequential_layer/StatefulPartitionedCall¢-mode_sequential_layer/StatefulPartitionedCall¢0ranking_sequential_layer/StatefulPartitionedCall¢0user_id_sequential_layer/StatefulPartitionedCall
0user_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCalluser_iduser_id_sequential_layer_534001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533704©
6interacted_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallinteracted_id%interacted_id_sequential_layer_534004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533680
,age_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallageage_sequential_layer_534007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533656
/gender_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallgendergender_sequential_layer_534010*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533632
1language_sequential_layer/StatefulPartitionedCallStatefulPartitionedCalllanguage language_sequential_layer_534013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533608
3login_time_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
login_time"login_time_sequential_layer_534016*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533584
2character_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall	character!character_sequential_layer_534019*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533560
/c_type_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallc_typec_type_sequential_layer_534022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533536
-mode_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallmodemode_sequential_layer_534025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533512
0ranking_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallrankingranking_sequential_layer_534028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533488M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
concatConcatV29user_id_sequential_layer/StatefulPartitionedCall:output:0?interacted_id_sequential_layer/StatefulPartitionedCall:output:05age_sequential_layer/StatefulPartitionedCall:output:08gender_sequential_layer/StatefulPartitionedCall:output:0:language_sequential_layer/StatefulPartitionedCall:output:0<login_time_sequential_layer/StatefulPartitionedCall:output:0;character_sequential_layer/StatefulPartitionedCall:output:08c_type_sequential_layer/StatefulPartitionedCall:output:06mode_sequential_layer/StatefulPartitionedCall:output:09ranking_sequential_layer/StatefulPartitionedCall:output:0concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀù
cross_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0cross_5_534033cross_5_534035*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_cross_5_layer_call_and_return_conditional_losses_533333
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(cross_5/StatefulPartitionedCall:output:0dense_15_534038dense_15_534040*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_533350
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_534043dense_16_534045*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_533367
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_534048dense_17_534050*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_533383x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp-^age_sequential_layer/StatefulPartitionedCall0^c_type_sequential_layer/StatefulPartitionedCall3^character_sequential_layer/StatefulPartitionedCall ^cross_5/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^gender_sequential_layer/StatefulPartitionedCall7^interacted_id_sequential_layer/StatefulPartitionedCall2^language_sequential_layer/StatefulPartitionedCall4^login_time_sequential_layer/StatefulPartitionedCall.^mode_sequential_layer/StatefulPartitionedCall1^ranking_sequential_layer/StatefulPartitionedCall1^user_id_sequential_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2\
,age_sequential_layer/StatefulPartitionedCall,age_sequential_layer/StatefulPartitionedCall2b
/c_type_sequential_layer/StatefulPartitionedCall/c_type_sequential_layer/StatefulPartitionedCall2h
2character_sequential_layer/StatefulPartitionedCall2character_sequential_layer/StatefulPartitionedCall2B
cross_5/StatefulPartitionedCallcross_5/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/gender_sequential_layer/StatefulPartitionedCall/gender_sequential_layer/StatefulPartitionedCall2p
6interacted_id_sequential_layer/StatefulPartitionedCall6interacted_id_sequential_layer/StatefulPartitionedCall2f
1language_sequential_layer/StatefulPartitionedCall1language_sequential_layer/StatefulPartitionedCall2j
3login_time_sequential_layer/StatefulPartitionedCall3login_time_sequential_layer/StatefulPartitionedCall2^
-mode_sequential_layer/StatefulPartitionedCall-mode_sequential_layer/StatefulPartitionedCall2d
0ranking_sequential_layer/StatefulPartitionedCall0ranking_sequential_layer/StatefulPartitionedCall2d
0user_id_sequential_layer/StatefulPartitionedCall0user_id_sequential_layer/StatefulPartitionedCall:H D
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameage:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namec_type:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	character:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namegender:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinteracted_id:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
language:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
login_time:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namemode:LH
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	ranking:L	H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	user_id
º
Á
&__inference_dcn_5_layer_call_fn_534212
features_age
features_c_type
features_character
features_gender
features_interacted_id
features_language
features_login_time
features_mode
features_ranking
features_user_id
unknown:
øÉ 
	unknown_0:
÷É 
	unknown_1:4 
	unknown_2: 
	unknown_3:4 
	unknown_4:	¡ 
	unknown_5:! 
	unknown_6: 
	unknown_7: 
	unknown_8:	À 
	unknown_9:
ÀÀ

unknown_10:	À

unknown_11:
ÀÀ

unknown_12:	À

unknown_13:
ÀÀ

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallfeatures_agefeatures_c_typefeatures_characterfeatures_genderfeatures_interacted_idfeatures_languagefeatures_login_timefeatures_modefeatures_rankingfeatures_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dcn_5_layer_call_and_return_conditional_losses_533835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namefeatures/age:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/c_type:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namefeatures/character:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/gender:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namefeatures/interacted_id:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/language:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/login_time:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namefeatures/mode:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/ranking:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/user_id
§

ø
D__inference_dense_15_layer_call_and_return_conditional_losses_533350

inputs2
matmul_readvariableop_resource:
ÀÀ.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
õ	
Ê
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534966

inputs	6
$embedding_57_embedding_lookup_534960: 
identity¢embedding_57/embedding_lookupÜ
embedding_57/embedding_lookupResourceGather$embedding_57_embedding_lookup_534960inputs*
Tindices0	*7
_class-
+)loc:@embedding_57/embedding_lookup/534960*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_57/embedding_lookup/534960*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_57/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_57/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_57/embedding_lookupembedding_57/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
¦
H__inference_embedding_55_layer_call_and_return_conditional_losses_535254

inputs	*
embedding_lookup_535248:	¡ 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535248inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535248*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535248*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó	
È
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535032

inputs	6
$embedding_58_embedding_lookup_535026: 
identity¢embedding_58/embedding_lookupÜ
embedding_58/embedding_lookupResourceGather$embedding_58_embedding_lookup_535026inputs*
Tindices0	*7
_class-
+)loc:@embedding_58/embedding_lookup/535026*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_58/embedding_lookup/535026*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_58/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_58/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_58/embedding_lookupembedding_58/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_54_layer_call_and_return_conditional_losses_535238

inputs	)
embedding_lookup_535232:4 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535232inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535232*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535232*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
¾
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533063

inputs	%
embedding_58_533059: 
identity¢$embedding_58/StatefulPartitionedCallì
$embedding_58/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_58_533059*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_58_layer_call_and_return_conditional_losses_533036|
IdentityIdentity-embedding_58/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_58/StatefulPartitionedCall$embedding_58/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_58_layer_call_fn_535293

inputs	
unknown: 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_58_layer_call_and_return_conditional_losses_533036o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_54_layer_call_fn_535229

inputs	
unknown:4 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_54_layer_call_and_return_conditional_losses_532940o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

:__inference_language_sequential_layer_layer_call_fn_534750

inputs
unknown:4 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
½
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_532727

inputs	%
embedding_52_532723:4 
identity¢$embedding_52/StatefulPartitionedCallì
$embedding_52/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_52_532723*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_52_layer_call_and_return_conditional_losses_532700|
IdentityIdentity-embedding_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_52/StatefulPartitionedCall$embedding_52/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

:__inference_language_sequential_layer_layer_call_fn_534729

inputs	
unknown:4 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_532945o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_c_type_sequential_layer_layer_call_fn_534927

inputs	
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_532753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_c_type_sequential_layer_layer_call_fn_534934

inputs	
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_532775o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535118

inputs7
$embedding_59_embedding_lookup_535112:	À 
identity¢embedding_59/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_59/embedding_lookupResourceGather$embedding_59_embedding_lookup_535112Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_59/embedding_lookup/535112*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_59/embedding_lookup/535112*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_59/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_59/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_59/embedding_lookupembedding_59/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

)__inference_dense_16_layer_call_fn_535147

inputs
unknown:
ÀÀ
	unknown_0:	À
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_533367p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¯

6__inference_mode_sequential_layer_layer_call_fn_535014

inputs
unknown: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533512o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534910

inputs6
$embedding_56_embedding_lookup_534904:! 
identity¢embedding_56/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_56/embedding_lookupResourceGather$embedding_56_embedding_lookup_534904Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_56/embedding_lookup/534904*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_56/embedding_lookup/534904*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_56/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_56/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_56/embedding_lookupembedding_56/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

?__inference_interacted_id_sequential_layer_layer_call_fn_534531

inputs	
unknown:
÷É 
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_532897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Áy
º
__inference__traced_save_535533
file_prefix6
2savev2_embedding_52_embeddings_read_readvariableop6
2savev2_embedding_57_embeddings_read_readvariableop6
2savev2_embedding_56_embeddings_read_readvariableop6
2savev2_embedding_53_embeddings_read_readvariableop6
2savev2_embedding_51_embeddings_read_readvariableop6
2savev2_embedding_54_embeddings_read_readvariableop6
2savev2_embedding_55_embeddings_read_readvariableop6
2savev2_embedding_58_embeddings_read_readvariableop6
2savev2_embedding_59_embeddings_read_readvariableop6
2savev2_embedding_50_embeddings_read_readvariableop9
5savev2_dcn_5_cross_5_dense_kernel_read_readvariableop7
3savev2_dcn_5_cross_5_dense_bias_read_readvariableop4
0savev2_dcn_5_dense_15_kernel_read_readvariableop2
.savev2_dcn_5_dense_15_bias_read_readvariableop4
0savev2_dcn_5_dense_16_kernel_read_readvariableop2
.savev2_dcn_5_dense_16_bias_read_readvariableop4
0savev2_dcn_5_dense_17_kernel_read_readvariableop2
.savev2_dcn_5_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_embedding_52_embeddings_m_read_readvariableop=
9savev2_adam_embedding_57_embeddings_m_read_readvariableop=
9savev2_adam_embedding_56_embeddings_m_read_readvariableop=
9savev2_adam_embedding_53_embeddings_m_read_readvariableop=
9savev2_adam_embedding_51_embeddings_m_read_readvariableop=
9savev2_adam_embedding_54_embeddings_m_read_readvariableop=
9savev2_adam_embedding_55_embeddings_m_read_readvariableop=
9savev2_adam_embedding_58_embeddings_m_read_readvariableop=
9savev2_adam_embedding_59_embeddings_m_read_readvariableop=
9savev2_adam_embedding_50_embeddings_m_read_readvariableop@
<savev2_adam_dcn_5_cross_5_dense_kernel_m_read_readvariableop>
:savev2_adam_dcn_5_cross_5_dense_bias_m_read_readvariableop;
7savev2_adam_dcn_5_dense_15_kernel_m_read_readvariableop9
5savev2_adam_dcn_5_dense_15_bias_m_read_readvariableop;
7savev2_adam_dcn_5_dense_16_kernel_m_read_readvariableop9
5savev2_adam_dcn_5_dense_16_bias_m_read_readvariableop;
7savev2_adam_dcn_5_dense_17_kernel_m_read_readvariableop9
5savev2_adam_dcn_5_dense_17_bias_m_read_readvariableop=
9savev2_adam_embedding_52_embeddings_v_read_readvariableop=
9savev2_adam_embedding_57_embeddings_v_read_readvariableop=
9savev2_adam_embedding_56_embeddings_v_read_readvariableop=
9savev2_adam_embedding_53_embeddings_v_read_readvariableop=
9savev2_adam_embedding_51_embeddings_v_read_readvariableop=
9savev2_adam_embedding_54_embeddings_v_read_readvariableop=
9savev2_adam_embedding_55_embeddings_v_read_readvariableop=
9savev2_adam_embedding_58_embeddings_v_read_readvariableop=
9savev2_adam_embedding_59_embeddings_v_read_readvariableop=
9savev2_adam_embedding_50_embeddings_v_read_readvariableop@
<savev2_adam_dcn_5_cross_5_dense_kernel_v_read_readvariableop>
:savev2_adam_dcn_5_cross_5_dense_bias_v_read_readvariableop;
7savev2_adam_dcn_5_dense_15_kernel_v_read_readvariableop9
5savev2_adam_dcn_5_dense_15_bias_v_read_readvariableop;
7savev2_adam_dcn_5_dense_16_kernel_v_read_readvariableop9
5savev2_adam_dcn_5_dense_16_bias_v_read_readvariableop;
7savev2_adam_dcn_5_dense_17_kernel_v_read_readvariableop9
5savev2_adam_dcn_5_dense_17_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ó
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*ü
valueòBï>B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHì
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*
valueB>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_52_embeddings_read_readvariableop2savev2_embedding_57_embeddings_read_readvariableop2savev2_embedding_56_embeddings_read_readvariableop2savev2_embedding_53_embeddings_read_readvariableop2savev2_embedding_51_embeddings_read_readvariableop2savev2_embedding_54_embeddings_read_readvariableop2savev2_embedding_55_embeddings_read_readvariableop2savev2_embedding_58_embeddings_read_readvariableop2savev2_embedding_59_embeddings_read_readvariableop2savev2_embedding_50_embeddings_read_readvariableop5savev2_dcn_5_cross_5_dense_kernel_read_readvariableop3savev2_dcn_5_cross_5_dense_bias_read_readvariableop0savev2_dcn_5_dense_15_kernel_read_readvariableop.savev2_dcn_5_dense_15_bias_read_readvariableop0savev2_dcn_5_dense_16_kernel_read_readvariableop.savev2_dcn_5_dense_16_bias_read_readvariableop0savev2_dcn_5_dense_17_kernel_read_readvariableop.savev2_dcn_5_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_embedding_52_embeddings_m_read_readvariableop9savev2_adam_embedding_57_embeddings_m_read_readvariableop9savev2_adam_embedding_56_embeddings_m_read_readvariableop9savev2_adam_embedding_53_embeddings_m_read_readvariableop9savev2_adam_embedding_51_embeddings_m_read_readvariableop9savev2_adam_embedding_54_embeddings_m_read_readvariableop9savev2_adam_embedding_55_embeddings_m_read_readvariableop9savev2_adam_embedding_58_embeddings_m_read_readvariableop9savev2_adam_embedding_59_embeddings_m_read_readvariableop9savev2_adam_embedding_50_embeddings_m_read_readvariableop<savev2_adam_dcn_5_cross_5_dense_kernel_m_read_readvariableop:savev2_adam_dcn_5_cross_5_dense_bias_m_read_readvariableop7savev2_adam_dcn_5_dense_15_kernel_m_read_readvariableop5savev2_adam_dcn_5_dense_15_bias_m_read_readvariableop7savev2_adam_dcn_5_dense_16_kernel_m_read_readvariableop5savev2_adam_dcn_5_dense_16_bias_m_read_readvariableop7savev2_adam_dcn_5_dense_17_kernel_m_read_readvariableop5savev2_adam_dcn_5_dense_17_bias_m_read_readvariableop9savev2_adam_embedding_52_embeddings_v_read_readvariableop9savev2_adam_embedding_57_embeddings_v_read_readvariableop9savev2_adam_embedding_56_embeddings_v_read_readvariableop9savev2_adam_embedding_53_embeddings_v_read_readvariableop9savev2_adam_embedding_51_embeddings_v_read_readvariableop9savev2_adam_embedding_54_embeddings_v_read_readvariableop9savev2_adam_embedding_55_embeddings_v_read_readvariableop9savev2_adam_embedding_58_embeddings_v_read_readvariableop9savev2_adam_embedding_59_embeddings_v_read_readvariableop9savev2_adam_embedding_50_embeddings_v_read_readvariableop<savev2_adam_dcn_5_cross_5_dense_kernel_v_read_readvariableop:savev2_adam_dcn_5_cross_5_dense_bias_v_read_readvariableop7savev2_adam_dcn_5_dense_15_kernel_v_read_readvariableop5savev2_adam_dcn_5_dense_15_bias_v_read_readvariableop7savev2_adam_dcn_5_dense_16_kernel_v_read_readvariableop5savev2_adam_dcn_5_dense_16_bias_v_read_readvariableop7savev2_adam_dcn_5_dense_17_kernel_v_read_readvariableop5savev2_adam_dcn_5_dense_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ã
_input_shapes±
®: :4 : :! : :
÷É :4 :	¡ : :	À :
øÉ :
ÀÀ:À:
ÀÀ:À:
ÀÀ:À:	À:: : : : : : : :4 : :! : :
÷É :4 :	¡ : :	À :
øÉ :
ÀÀ:À:
ÀÀ:À:
ÀÀ:À:	À::4 : :! : :
÷É :4 :	¡ : :	À :
øÉ :
ÀÀ:À:
ÀÀ:À:
ÀÀ:À:	À:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:4 :$ 

_output_shapes

: :$ 

_output_shapes

:! :$ 

_output_shapes

: :&"
 
_output_shapes
:
÷É :$ 

_output_shapes

:4 :%!

_output_shapes
:	¡ :$ 

_output_shapes

: :%	!

_output_shapes
:	À :&
"
 
_output_shapes
:
øÉ :&"
 
_output_shapes
:
ÀÀ:!

_output_shapes	
:À:&"
 
_output_shapes
:
ÀÀ:!

_output_shapes	
:À:&"
 
_output_shapes
:
ÀÀ:!

_output_shapes	
:À:%!

_output_shapes
:	À: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:4 :$ 

_output_shapes

: :$ 

_output_shapes

:! :$ 

_output_shapes

: :&"
 
_output_shapes
:
÷É :$ 

_output_shapes

:4 :% !

_output_shapes
:	¡ :$! 

_output_shapes

: :%"!

_output_shapes
:	À :&#"
 
_output_shapes
:
øÉ :&$"
 
_output_shapes
:
ÀÀ:!%

_output_shapes	
:À:&&"
 
_output_shapes
:
ÀÀ:!'

_output_shapes	
:À:&("
 
_output_shapes
:
ÀÀ:!)

_output_shapes	
:À:%*!

_output_shapes
:	À: +

_output_shapes
::$, 

_output_shapes

:4 :$- 

_output_shapes

: :$. 

_output_shapes

:! :$/ 

_output_shapes

: :&0"
 
_output_shapes
:
÷É :$1 

_output_shapes

:4 :%2!

_output_shapes
:	¡ :$3 

_output_shapes

: :%4!

_output_shapes
:	À :&5"
 
_output_shapes
:
øÉ :&6"
 
_output_shapes
:
ÀÀ:!7

_output_shapes	
:À:&8"
 
_output_shapes
:
ÀÀ:!9

_output_shapes	
:À:&:"
 
_output_shapes
:
ÀÀ:!;

_output_shapes	
:À:%<!

_output_shapes
:	À: =

_output_shapes
::>

_output_shapes
: 
ìX

A__inference_dcn_5_layer_call_and_return_conditional_losses_533390
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_93
user_id_sequential_layer_533199:
øÉ 9
%interacted_id_sequential_layer_533212:
÷É -
age_sequential_layer_533225:4 0
gender_sequential_layer_533238: 2
 language_sequential_layer_533251:4 5
"login_time_sequential_layer_533264:	¡ 3
!character_sequential_layer_533277:! 0
c_type_sequential_layer_533290: .
mode_sequential_layer_533303: 2
ranking_sequential_layer_533316:	À "
cross_5_533334:
ÀÀ
cross_5_533336:	À#
dense_15_533351:
ÀÀ
dense_15_533353:	À#
dense_16_533368:
ÀÀ
dense_16_533370:	À"
dense_17_533384:	À
dense_17_533386:
identity¢,age_sequential_layer/StatefulPartitionedCall¢/c_type_sequential_layer/StatefulPartitionedCall¢2character_sequential_layer/StatefulPartitionedCall¢cross_5/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/gender_sequential_layer/StatefulPartitionedCall¢6interacted_id_sequential_layer/StatefulPartitionedCall¢1language_sequential_layer/StatefulPartitionedCall¢3login_time_sequential_layer/StatefulPartitionedCall¢-mode_sequential_layer/StatefulPartitionedCall¢0ranking_sequential_layer/StatefulPartitionedCall¢0user_id_sequential_layer/StatefulPartitionedCall
0user_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_9user_id_sequential_layer_533199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533198¦
6interacted_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_4%interacted_id_sequential_layer_533212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533211
,age_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallfeaturesage_sequential_layer_533225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533224
/gender_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_3gender_sequential_layer_533238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533237
1language_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_5 language_sequential_layer_533251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533250
3login_time_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_6"login_time_sequential_layer_533264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533263
2character_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_2!character_sequential_layer_533277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533276
/c_type_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_1c_type_sequential_layer_533290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533289
-mode_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_7mode_sequential_layer_533303*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533302
0ranking_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_8ranking_sequential_layer_533316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533315M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
concatConcatV29user_id_sequential_layer/StatefulPartitionedCall:output:0?interacted_id_sequential_layer/StatefulPartitionedCall:output:05age_sequential_layer/StatefulPartitionedCall:output:08gender_sequential_layer/StatefulPartitionedCall:output:0:language_sequential_layer/StatefulPartitionedCall:output:0<login_time_sequential_layer/StatefulPartitionedCall:output:0;character_sequential_layer/StatefulPartitionedCall:output:08c_type_sequential_layer/StatefulPartitionedCall:output:06mode_sequential_layer/StatefulPartitionedCall:output:09ranking_sequential_layer/StatefulPartitionedCall:output:0concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀù
cross_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0cross_5_533334cross_5_533336*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_cross_5_layer_call_and_return_conditional_losses_533333
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(cross_5/StatefulPartitionedCall:output:0dense_15_533351dense_15_533353*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_533350
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_533368dense_16_533370*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_533367
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_533384dense_17_533386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_533383x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp-^age_sequential_layer/StatefulPartitionedCall0^c_type_sequential_layer/StatefulPartitionedCall3^character_sequential_layer/StatefulPartitionedCall ^cross_5/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^gender_sequential_layer/StatefulPartitionedCall7^interacted_id_sequential_layer/StatefulPartitionedCall2^language_sequential_layer/StatefulPartitionedCall4^login_time_sequential_layer/StatefulPartitionedCall.^mode_sequential_layer/StatefulPartitionedCall1^ranking_sequential_layer/StatefulPartitionedCall1^user_id_sequential_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2\
,age_sequential_layer/StatefulPartitionedCall,age_sequential_layer/StatefulPartitionedCall2b
/c_type_sequential_layer/StatefulPartitionedCall/c_type_sequential_layer/StatefulPartitionedCall2h
2character_sequential_layer/StatefulPartitionedCall2character_sequential_layer/StatefulPartitionedCall2B
cross_5/StatefulPartitionedCallcross_5/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/gender_sequential_layer/StatefulPartitionedCall/gender_sequential_layer/StatefulPartitionedCall2p
6interacted_id_sequential_layer/StatefulPartitionedCall6interacted_id_sequential_layer/StatefulPartitionedCall2f
1language_sequential_layer/StatefulPartitionedCall1language_sequential_layer/StatefulPartitionedCall2j
3login_time_sequential_layer/StatefulPartitionedCall3login_time_sequential_layer/StatefulPartitionedCall2^
-mode_sequential_layer/StatefulPartitionedCall-mode_sequential_layer/StatefulPartitionedCall2d
0ranking_sequential_layer/StatefulPartitionedCall0ranking_sequential_layer/StatefulPartitionedCall2d
0user_id_sequential_layer/StatefulPartitionedCall0user_id_sequential_layer/StatefulPartitionedCall:M I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:M	I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features
ìX

A__inference_dcn_5_layer_call_and_return_conditional_losses_533835
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_93
user_id_sequential_layer_533782:
øÉ 9
%interacted_id_sequential_layer_533785:
÷É -
age_sequential_layer_533788:4 0
gender_sequential_layer_533791: 2
 language_sequential_layer_533794:4 5
"login_time_sequential_layer_533797:	¡ 3
!character_sequential_layer_533800:! 0
c_type_sequential_layer_533803: .
mode_sequential_layer_533806: 2
ranking_sequential_layer_533809:	À "
cross_5_533814:
ÀÀ
cross_5_533816:	À#
dense_15_533819:
ÀÀ
dense_15_533821:	À#
dense_16_533824:
ÀÀ
dense_16_533826:	À"
dense_17_533829:	À
dense_17_533831:
identity¢,age_sequential_layer/StatefulPartitionedCall¢/c_type_sequential_layer/StatefulPartitionedCall¢2character_sequential_layer/StatefulPartitionedCall¢cross_5/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/gender_sequential_layer/StatefulPartitionedCall¢6interacted_id_sequential_layer/StatefulPartitionedCall¢1language_sequential_layer/StatefulPartitionedCall¢3login_time_sequential_layer/StatefulPartitionedCall¢-mode_sequential_layer/StatefulPartitionedCall¢0ranking_sequential_layer/StatefulPartitionedCall¢0user_id_sequential_layer/StatefulPartitionedCall
0user_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_9user_id_sequential_layer_533782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533704¦
6interacted_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_4%interacted_id_sequential_layer_533785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533680
,age_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallfeaturesage_sequential_layer_533788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533656
/gender_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_3gender_sequential_layer_533791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533632
1language_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_5 language_sequential_layer_533794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533608
3login_time_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_6"login_time_sequential_layer_533797*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533584
2character_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_2!character_sequential_layer_533800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533560
/c_type_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_1c_type_sequential_layer_533803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533536
-mode_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_7mode_sequential_layer_533806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533512
0ranking_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
features_8ranking_sequential_layer_533809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533488M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
concatConcatV29user_id_sequential_layer/StatefulPartitionedCall:output:0?interacted_id_sequential_layer/StatefulPartitionedCall:output:05age_sequential_layer/StatefulPartitionedCall:output:08gender_sequential_layer/StatefulPartitionedCall:output:0:language_sequential_layer/StatefulPartitionedCall:output:0<login_time_sequential_layer/StatefulPartitionedCall:output:0;character_sequential_layer/StatefulPartitionedCall:output:08c_type_sequential_layer/StatefulPartitionedCall:output:06mode_sequential_layer/StatefulPartitionedCall:output:09ranking_sequential_layer/StatefulPartitionedCall:output:0concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀù
cross_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0cross_5_533814cross_5_533816*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_cross_5_layer_call_and_return_conditional_losses_533333
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(cross_5/StatefulPartitionedCall:output:0dense_15_533819dense_15_533821*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_533350
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_533824dense_16_533826*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_533367
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_533829dense_17_533831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_533383x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp-^age_sequential_layer/StatefulPartitionedCall0^c_type_sequential_layer/StatefulPartitionedCall3^character_sequential_layer/StatefulPartitionedCall ^cross_5/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^gender_sequential_layer/StatefulPartitionedCall7^interacted_id_sequential_layer/StatefulPartitionedCall2^language_sequential_layer/StatefulPartitionedCall4^login_time_sequential_layer/StatefulPartitionedCall.^mode_sequential_layer/StatefulPartitionedCall1^ranking_sequential_layer/StatefulPartitionedCall1^user_id_sequential_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2\
,age_sequential_layer/StatefulPartitionedCall,age_sequential_layer/StatefulPartitionedCall2b
/c_type_sequential_layer/StatefulPartitionedCall/c_type_sequential_layer/StatefulPartitionedCall2h
2character_sequential_layer/StatefulPartitionedCall2character_sequential_layer/StatefulPartitionedCall2B
cross_5/StatefulPartitionedCallcross_5/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/gender_sequential_layer/StatefulPartitionedCall/gender_sequential_layer/StatefulPartitionedCall2p
6interacted_id_sequential_layer/StatefulPartitionedCall6interacted_id_sequential_layer/StatefulPartitionedCall2f
1language_sequential_layer/StatefulPartitionedCall1language_sequential_layer/StatefulPartitionedCall2j
3login_time_sequential_layer/StatefulPartitionedCall3login_time_sequential_layer/StatefulPartitionedCall2^
-mode_sequential_layer/StatefulPartitionedCall-mode_sequential_layer/StatefulPartitionedCall2d
0ranking_sequential_layer/StatefulPartitionedCall0ranking_sequential_layer/StatefulPartitionedCall2d
0user_id_sequential_layer/StatefulPartitionedCall0user_id_sequential_layer/StatefulPartitionedCall:M I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features:M	I
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
features
Ì

Ì
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533315

inputs7
$embedding_59_embedding_lookup_533309:	À 
identity¢embedding_59/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_59/embedding_lookupResourceGather$embedding_59_embedding_lookup_533309Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_59/embedding_lookup/533309*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_59/embedding_lookup/533309*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_59/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_59/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_59/embedding_lookupembedding_59/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

<__inference_login_time_sequential_layer_layer_call_fn_534802

inputs	
unknown:	¡ 
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯

6__inference_mode_sequential_layer_layer_call_fn_535007

inputs
unknown: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533302o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

Ê
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533237

inputs6
$embedding_53_embedding_lookup_533231: 
identity¢embedding_53/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_53/embedding_lookupResourceGather$embedding_53_embedding_lookup_533231Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_53/embedding_lookup/533231*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_53/embedding_lookup/IdentityIdentity&embedding_53/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_53/embedding_lookup/533231*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_53/embedding_lookup/Identity_1Identity/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_53/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_53/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_53/embedding_lookupembedding_53/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_57_layer_call_and_return_conditional_losses_532748

inputs	)
embedding_lookup_532742: 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532742inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532742*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532742*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_c_type_sequential_layer_layer_call_fn_534948

inputs
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_58_layer_call_and_return_conditional_losses_535302

inputs	)
embedding_lookup_535296: 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535296inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535296*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535296*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

9__inference_ranking_sequential_layer_layer_call_fn_535059

inputs	
unknown:	À 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

9__inference_user_id_sequential_layer_layer_call_fn_534465

inputs	
unknown:
øÉ 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_53_layer_call_and_return_conditional_losses_532844

inputs	)
embedding_lookup_532838: 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532838inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532838*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532838*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533560

inputs6
$embedding_56_embedding_lookup_533554:! 
identity¢embedding_56/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_56/embedding_lookupResourceGather$embedding_56_embedding_lookup_533554Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_56/embedding_lookup/533554*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_56/embedding_lookup/533554*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_56/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_56/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_56/embedding_lookupembedding_56/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_52_layer_call_and_return_conditional_losses_532700

inputs	)
embedding_lookup_532694:4 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532694inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532694*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532694*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Â
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_532945

inputs	%
embedding_54_532941:4 
identity¢$embedding_54/StatefulPartitionedCallì
$embedding_54/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_54_532941*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_54_layer_call_and_return_conditional_losses_532940|
IdentityIdentity-embedding_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_54/StatefulPartitionedCall$embedding_54/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
Ó
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534570

inputs	8
$embedding_51_embedding_lookup_534564:
÷É 
identity¢embedding_51/embedding_lookupÜ
embedding_51/embedding_lookupResourceGather$embedding_51_embedding_lookup_534564inputs*
Tindices0	*7
_class-
+)loc:@embedding_51/embedding_lookup/534564*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_51/embedding_lookup/IdentityIdentity&embedding_51/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_51/embedding_lookup/534564*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_51/embedding_lookup/Identity_1Identity/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_51/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_51/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_51/embedding_lookupembedding_51/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø	
Í
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534891

inputs	6
$embedding_56_embedding_lookup_534885:! 
identity¢embedding_56/embedding_lookupÜ
embedding_56/embedding_lookupResourceGather$embedding_56_embedding_lookup_534885inputs*
Tindices0	*7
_class-
+)loc:@embedding_56/embedding_lookup/534885*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_56/embedding_lookup/534885*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_56/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_56/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_56/embedding_lookupembedding_56/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó

Ó
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533680

inputs8
$embedding_51_embedding_lookup_533674:
÷É 
identity¢embedding_51/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_51/embedding_lookupResourceGather$embedding_51_embedding_lookup_533674Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_51/embedding_lookup/533674*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_51/embedding_lookup/IdentityIdentity&embedding_51/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_51/embedding_lookup/533674*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_51/embedding_lookup/Identity_1Identity/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_51/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_51/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_51/embedding_lookupembedding_51/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

?__inference_interacted_id_sequential_layer_layer_call_fn_534545

inputs
unknown:
÷É 
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533211o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

(__inference_cross_5_layer_call_fn_534427
x0
unknown:
ÀÀ
	unknown_0:	À
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallx0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_cross_5_layer_call_and_return_conditional_losses_533333p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ

_user_specified_namex0
Ó

Ó
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534580

inputs8
$embedding_51_embedding_lookup_534574:
÷É 
identity¢embedding_51/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_51/embedding_lookupResourceGather$embedding_51_embedding_lookup_534574Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_51/embedding_lookup/534574*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_51/embedding_lookup/IdentityIdentity&embedding_51/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_51/embedding_lookup/534574*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_51/embedding_lookup/Identity_1Identity/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_51/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_51/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_51/embedding_lookupembedding_51/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_16_layer_call_and_return_conditional_losses_533367

inputs2
matmul_readvariableop_resource:
ÀÀ.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ú	
Ï
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534825

inputs	7
$embedding_55_embedding_lookup_534819:	¡ 
identity¢embedding_55/embedding_lookupÜ
embedding_55/embedding_lookupResourceGather$embedding_55_embedding_lookup_534819inputs*
Tindices0	*7
_class-
+)loc:@embedding_55/embedding_lookup/534819*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_55/embedding_lookup/IdentityIdentity&embedding_55/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_55/embedding_lookup/534819*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_55/embedding_lookup/Identity_1Identity/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_55/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_55/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_55/embedding_lookupembedding_55/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_52_layer_call_fn_535197

inputs	
unknown:4 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_52_layer_call_and_return_conditional_losses_532700o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

:__inference_language_sequential_layer_layer_call_fn_534736

inputs	
unknown:4 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_532967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

<__inference_login_time_sequential_layer_layer_call_fn_534795

inputs	
unknown:	¡ 
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_532993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
Ã
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_532801

inputs	%
embedding_56_532797:! 
identity¢$embedding_56/StatefulPartitionedCallì
$embedding_56/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_56_532797*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_56_layer_call_and_return_conditional_losses_532796|
IdentityIdentity-embedding_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_56/StatefulPartitionedCall$embedding_56/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_57_layer_call_fn_535277

inputs	
unknown: 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_57_layer_call_and_return_conditional_losses_532748o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
¦
H__inference_embedding_59_layer_call_and_return_conditional_losses_535318

inputs	*
embedding_lookup_535312:	À 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535312inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535312*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535312*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Ì
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534759

inputs	6
$embedding_54_embedding_lookup_534753:4 
identity¢embedding_54/embedding_lookupÜ
embedding_54/embedding_lookupResourceGather$embedding_54_embedding_lookup_534753inputs*
Tindices0	*7
_class-
+)loc:@embedding_54/embedding_lookup/534753*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_54/embedding_lookup/IdentityIdentity&embedding_54/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_54/embedding_lookup/534753*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_54/embedding_lookup/Identity_1Identity/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_54/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_54/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_54/embedding_lookupembedding_54/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ	
Ê
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534957

inputs	6
$embedding_57_embedding_lookup_534951: 
identity¢embedding_57/embedding_lookupÜ
embedding_57/embedding_lookupResourceGather$embedding_57_embedding_lookup_534951inputs*
Tindices0	*7
_class-
+)loc:@embedding_57/embedding_lookup/534951*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_57/embedding_lookup/534951*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_57/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_57/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_57/embedding_lookupembedding_57/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
Ã
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533159

inputs	'
embedding_50_533155:
øÉ 
identity¢$embedding_50/StatefulPartitionedCallì
$embedding_50/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_50_533155*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_50_layer_call_and_return_conditional_losses_533132|
IdentityIdentity-embedding_50/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_50/StatefulPartitionedCall$embedding_50/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
ç
&__inference_dcn_5_layer_call_fn_533429
age

c_type
	character

gender
interacted_id
language

login_time
mode
ranking
user_id
unknown:
øÉ 
	unknown_0:
÷É 
	unknown_1:4 
	unknown_2: 
	unknown_3:4 
	unknown_4:	¡ 
	unknown_5:! 
	unknown_6: 
	unknown_7: 
	unknown_8:	À 
	unknown_9:
ÀÀ

unknown_10:	À

unknown_11:
ÀÀ

unknown_12:	À

unknown_13:
ÀÀ

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallagec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dcn_5_layer_call_and_return_conditional_losses_533390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameage:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namec_type:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	character:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namegender:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinteracted_id:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
language:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
login_time:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namemode:LH
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	ranking:L	H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	user_id
ø	
Í
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534900

inputs	6
$embedding_56_embedding_lookup_534894:! 
identity¢embedding_56/embedding_lookupÜ
embedding_56/embedding_lookupResourceGather$embedding_56_embedding_lookup_534894inputs*
Tindices0	*7
_class-
+)loc:@embedding_56/embedding_lookup/534894*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_56/embedding_lookup/534894*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_56/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_56/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_56/embedding_lookupembedding_56/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

5__inference_age_sequential_layer_layer_call_fn_534611

inputs
unknown:4 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹

;__inference_character_sequential_layer_layer_call_fn_534875

inputs
unknown:! 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533276o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

C__inference_cross_5_layer_call_and_return_conditional_losses_533333
x08
$dense_matmul_readvariableop_resource:
ÀÀ4
%dense_biasadd_readvariableop_resource:	À
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0r
dense/MatMulMatMulx0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
mulMulx0dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀL
addAddV2mul:z:0x0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀW
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:L H
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ

_user_specified_namex0
Í

Í
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534920

inputs6
$embedding_56_embedding_lookup_534914:! 
identity¢embedding_56/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_56/embedding_lookupResourceGather$embedding_56_embedding_lookup_534914Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_56/embedding_lookup/534914*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_56/embedding_lookup/534914*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_56/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_56/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_56/embedding_lookupembedding_56/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

9__inference_ranking_sequential_layer_layer_call_fn_535080

inputs
unknown:	À 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533488o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
§
H__inference_embedding_51_layer_call_and_return_conditional_losses_535190

inputs	+
embedding_lookup_535184:
÷É 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535184inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535184*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535184*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_15_layer_call_and_return_conditional_losses_535138

inputs2
matmul_readvariableop_resource:
ÀÀ.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs


-__inference_embedding_53_layer_call_fn_535213

inputs	
unknown: 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_53_layer_call_and_return_conditional_losses_532844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

?__inference_interacted_id_sequential_layer_layer_call_fn_534552

inputs
unknown:
÷É 
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹

;__inference_character_sequential_layer_layer_call_fn_534868

inputs	
unknown:! 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_532823o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_51_layer_call_fn_535181

inputs	
unknown:
÷É 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_51_layer_call_and_return_conditional_losses_532892o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534788

inputs6
$embedding_54_embedding_lookup_534782:4 
identity¢embedding_54/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_54/embedding_lookupResourceGather$embedding_54_embedding_lookup_534782Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_54/embedding_lookup/534782*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_54/embedding_lookup/IdentityIdentity&embedding_54/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_54/embedding_lookup/534782*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_54/embedding_lookup/Identity_1Identity/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_54/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_54/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_54/embedding_lookupembedding_54/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë	
ö
D__inference_dense_17_layer_call_and_return_conditional_losses_534458

inputs1
matmul_readvariableop_resource:	À-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
Ê

Ê
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533632

inputs6
$embedding_53_embedding_lookup_533626: 
identity¢embedding_53/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_53/embedding_lookupResourceGather$embedding_53_embedding_lookup_533626Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_53/embedding_lookup/533626*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_53/embedding_lookup/IdentityIdentity&embedding_53/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_53/embedding_lookup/533626*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_53/embedding_lookup/Identity_1Identity/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_53/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_53/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_53/embedding_lookupembedding_53/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯

6__inference_mode_sequential_layer_layer_call_fn_534993

inputs	
unknown: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533041o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

Ç
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533656

inputs6
$embedding_52_embedding_lookup_533650:4 
identity¢embedding_52/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_52/embedding_lookupResourceGather$embedding_52_embedding_lookup_533650Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_52/embedding_lookup/533650*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_52/embedding_lookup/IdentityIdentity&embedding_52/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_52/embedding_lookup/533650*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_52/embedding_lookup/Identity_1Identity/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_52/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_52/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_52/embedding_lookupembedding_52/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

9__inference_user_id_sequential_layer_layer_call_fn_534486

inputs
unknown:
øÉ 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533704o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

Ï
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534844

inputs7
$embedding_55_embedding_lookup_534838:	¡ 
identity¢embedding_55/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_55/embedding_lookupResourceGather$embedding_55_embedding_lookup_534838Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_55/embedding_lookup/534838*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_55/embedding_lookup/IdentityIdentity&embedding_55/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_55/embedding_lookup/534838*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_55/embedding_lookup/Identity_1Identity/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_55/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_55/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_55/embedding_lookupembedding_55/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó	
È
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535023

inputs	6
$embedding_58_embedding_lookup_535017: 
identity¢embedding_58/embedding_lookupÜ
embedding_58/embedding_lookupResourceGather$embedding_58_embedding_lookup_535017inputs*
Tindices0	*7
_class-
+)loc:@embedding_58/embedding_lookup/535017*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_58/embedding_lookup/535017*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_58/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_58/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_58/embedding_lookupembedding_58/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

Ç
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534646

inputs6
$embedding_52_embedding_lookup_534640:4 
identity¢embedding_52/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_52/embedding_lookupResourceGather$embedding_52_embedding_lookup_534640Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_52/embedding_lookup/534640*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_52/embedding_lookup/IdentityIdentity&embedding_52/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_52/embedding_lookup/534640*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_52/embedding_lookup/Identity_1Identity/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_52/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_52/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_52/embedding_lookupembedding_52/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
Å
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533015

inputs	&
embedding_55_533011:	¡ 
identity¢$embedding_55/StatefulPartitionedCallì
$embedding_55/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_55_533011*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_55_layer_call_and_return_conditional_losses_532988|
IdentityIdentity-embedding_55/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_55/StatefulPartitionedCall$embedding_55/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò	
Ç
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534627

inputs	6
$embedding_52_embedding_lookup_534621:4 
identity¢embedding_52/embedding_lookupÜ
embedding_52/embedding_lookupResourceGather$embedding_52_embedding_lookup_534621inputs*
Tindices0	*7
_class-
+)loc:@embedding_52/embedding_lookup/534621*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_52/embedding_lookup/IdentityIdentity&embedding_52/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_52/embedding_lookup/534621*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_52/embedding_lookup/Identity_1Identity/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_52/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_52/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_52/embedding_lookupembedding_52/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

Ê
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534976

inputs6
$embedding_57_embedding_lookup_534970: 
identity¢embedding_57/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_57/embedding_lookupResourceGather$embedding_57_embedding_lookup_534970Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_57/embedding_lookup/534970*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_57/embedding_lookup/534970*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_57/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_57/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_57/embedding_lookupembedding_57/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534778

inputs6
$embedding_54_embedding_lookup_534772:4 
identity¢embedding_54/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_54/embedding_lookupResourceGather$embedding_54_embedding_lookup_534772Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_54/embedding_lookup/534772*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_54/embedding_lookup/IdentityIdentity&embedding_54/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_54/embedding_lookup/534772*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_54/embedding_lookup/Identity_1Identity/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_54/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_54/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_54/embedding_lookupembedding_54/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

È
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533512

inputs6
$embedding_58_embedding_lookup_533506: 
identity¢embedding_58/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_58/embedding_lookupResourceGather$embedding_58_embedding_lookup_533506Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_58/embedding_lookup/533506*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_58/embedding_lookup/533506*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_58/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_58/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_58/embedding_lookupembedding_58/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

9__inference_user_id_sequential_layer_layer_call_fn_534479

inputs
unknown:
øÉ 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533198o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë	
ö
D__inference_dense_17_layer_call_and_return_conditional_losses_533383

inputs1
matmul_readvariableop_resource:	À-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
²
É
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_532897

inputs	'
embedding_51_532893:
÷É 
identity¢$embedding_51/StatefulPartitionedCallì
$embedding_51/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_51_532893*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_51_layer_call_and_return_conditional_losses_532892|
IdentityIdentity-embedding_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_51/StatefulPartitionedCall$embedding_51/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
§
H__inference_embedding_50_layer_call_and_return_conditional_losses_535174

inputs	+
embedding_lookup_535168:
øÉ 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535168inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535168*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535168*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Ì
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534768

inputs	6
$embedding_54_embedding_lookup_534762:4 
identity¢embedding_54/embedding_lookupÜ
embedding_54/embedding_lookupResourceGather$embedding_54_embedding_lookup_534762inputs*
Tindices0	*7
_class-
+)loc:@embedding_54/embedding_lookup/534762*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_54/embedding_lookup/IdentityIdentity&embedding_54/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_54/embedding_lookup/534762*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_54/embedding_lookup/Identity_1Identity/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_54/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_54/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_54/embedding_lookupembedding_54/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_gender_sequential_layer_layer_call_fn_534677

inputs
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³X
ü
A__inference_dcn_5_layer_call_and_return_conditional_losses_533989
age

c_type
	character

gender
interacted_id
language

login_time
mode
ranking
user_id3
user_id_sequential_layer_533936:
øÉ 9
%interacted_id_sequential_layer_533939:
÷É -
age_sequential_layer_533942:4 0
gender_sequential_layer_533945: 2
 language_sequential_layer_533948:4 5
"login_time_sequential_layer_533951:	¡ 3
!character_sequential_layer_533954:! 0
c_type_sequential_layer_533957: .
mode_sequential_layer_533960: 2
ranking_sequential_layer_533963:	À "
cross_5_533968:
ÀÀ
cross_5_533970:	À#
dense_15_533973:
ÀÀ
dense_15_533975:	À#
dense_16_533978:
ÀÀ
dense_16_533980:	À"
dense_17_533983:	À
dense_17_533985:
identity¢,age_sequential_layer/StatefulPartitionedCall¢/c_type_sequential_layer/StatefulPartitionedCall¢2character_sequential_layer/StatefulPartitionedCall¢cross_5/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/gender_sequential_layer/StatefulPartitionedCall¢6interacted_id_sequential_layer/StatefulPartitionedCall¢1language_sequential_layer/StatefulPartitionedCall¢3login_time_sequential_layer/StatefulPartitionedCall¢-mode_sequential_layer/StatefulPartitionedCall¢0ranking_sequential_layer/StatefulPartitionedCall¢0user_id_sequential_layer/StatefulPartitionedCall
0user_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCalluser_iduser_id_sequential_layer_533936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533198©
6interacted_id_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallinteracted_id%interacted_id_sequential_layer_533939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533211
,age_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallageage_sequential_layer_533942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533224
/gender_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallgendergender_sequential_layer_533945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533237
1language_sequential_layer/StatefulPartitionedCallStatefulPartitionedCalllanguage language_sequential_layer_533948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533250
3login_time_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall
login_time"login_time_sequential_layer_533951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533263
2character_sequential_layer/StatefulPartitionedCallStatefulPartitionedCall	character!character_sequential_layer_533954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533276
/c_type_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallc_typec_type_sequential_layer_533957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533289
-mode_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallmodemode_sequential_layer_533960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533302
0ranking_sequential_layer/StatefulPartitionedCallStatefulPartitionedCallrankingranking_sequential_layer_533963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533315M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
concatConcatV29user_id_sequential_layer/StatefulPartitionedCall:output:0?interacted_id_sequential_layer/StatefulPartitionedCall:output:05age_sequential_layer/StatefulPartitionedCall:output:08gender_sequential_layer/StatefulPartitionedCall:output:0:language_sequential_layer/StatefulPartitionedCall:output:0<login_time_sequential_layer/StatefulPartitionedCall:output:0;character_sequential_layer/StatefulPartitionedCall:output:08c_type_sequential_layer/StatefulPartitionedCall:output:06mode_sequential_layer/StatefulPartitionedCall:output:09ranking_sequential_layer/StatefulPartitionedCall:output:0concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀù
cross_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0cross_5_533968cross_5_533970*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_cross_5_layer_call_and_return_conditional_losses_533333
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(cross_5/StatefulPartitionedCall:output:0dense_15_533973dense_15_533975*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_533350
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_533978dense_16_533980*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_533367
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_533983dense_17_533985*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_533383x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp-^age_sequential_layer/StatefulPartitionedCall0^c_type_sequential_layer/StatefulPartitionedCall3^character_sequential_layer/StatefulPartitionedCall ^cross_5/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^gender_sequential_layer/StatefulPartitionedCall7^interacted_id_sequential_layer/StatefulPartitionedCall2^language_sequential_layer/StatefulPartitionedCall4^login_time_sequential_layer/StatefulPartitionedCall.^mode_sequential_layer/StatefulPartitionedCall1^ranking_sequential_layer/StatefulPartitionedCall1^user_id_sequential_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2\
,age_sequential_layer/StatefulPartitionedCall,age_sequential_layer/StatefulPartitionedCall2b
/c_type_sequential_layer/StatefulPartitionedCall/c_type_sequential_layer/StatefulPartitionedCall2h
2character_sequential_layer/StatefulPartitionedCall2character_sequential_layer/StatefulPartitionedCall2B
cross_5/StatefulPartitionedCallcross_5/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/gender_sequential_layer/StatefulPartitionedCall/gender_sequential_layer/StatefulPartitionedCall2p
6interacted_id_sequential_layer/StatefulPartitionedCall6interacted_id_sequential_layer/StatefulPartitionedCall2f
1language_sequential_layer/StatefulPartitionedCall1language_sequential_layer/StatefulPartitionedCall2j
3login_time_sequential_layer/StatefulPartitionedCall3login_time_sequential_layer/StatefulPartitionedCall2^
-mode_sequential_layer/StatefulPartitionedCall-mode_sequential_layer/StatefulPartitionedCall2d
0ranking_sequential_layer/StatefulPartitionedCall0ranking_sequential_layer/StatefulPartitionedCall2d
0user_id_sequential_layer/StatefulPartitionedCall0user_id_sequential_layer/StatefulPartitionedCall:H D
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameage:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namec_type:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	character:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namegender:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinteracted_id:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
language:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
login_time:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namemode:LH
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	ranking:L	H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	user_id
²
¥
H__inference_embedding_57_layer_call_and_return_conditional_losses_535286

inputs	)
embedding_lookup_535280: 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535280inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535280*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535280*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_50_layer_call_fn_535165

inputs	
unknown:
øÉ 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_50_layer_call_and_return_conditional_losses_533132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_56_layer_call_and_return_conditional_losses_535270

inputs	)
embedding_lookup_535264:! 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535264inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535264*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535264*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
¾
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_533041

inputs	%
embedding_58_533037: 
identity¢$embedding_58/StatefulPartitionedCallì
$embedding_58/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_58_533037*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_58_layer_call_and_return_conditional_losses_533036|
IdentityIdentity-embedding_58/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_58/StatefulPartitionedCall$embedding_58/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
§
H__inference_embedding_50_layer_call_and_return_conditional_losses_533132

inputs	+
embedding_lookup_533126:
øÉ 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_533126inputs*
Tindices0	**
_class 
loc:@embedding_lookup/533126*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/533126*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Ì
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535089

inputs	7
$embedding_59_embedding_lookup_535083:	À 
identity¢embedding_59/embedding_lookupÜ
embedding_59/embedding_lookupResourceGather$embedding_59_embedding_lookup_535083inputs*
Tindices0	*7
_class-
+)loc:@embedding_59/embedding_lookup/535083*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_59/embedding_lookup/535083*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_59/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_59/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_59/embedding_lookupembedding_59/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò	
Ç
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534636

inputs	6
$embedding_52_embedding_lookup_534630:4 
identity¢embedding_52/embedding_lookupÜ
embedding_52/embedding_lookupResourceGather$embedding_52_embedding_lookup_534630inputs*
Tindices0	*7
_class-
+)loc:@embedding_52/embedding_lookup/534630*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_52/embedding_lookup/IdentityIdentity&embedding_52/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_52/embedding_lookup/534630*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_52/embedding_lookup/Identity_1Identity/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_52/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_52/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_52/embedding_lookupembedding_52/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_52_layer_call_and_return_conditional_losses_535206

inputs	)
embedding_lookup_535200:4 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_535200inputs*
Tindices0	**
_class 
loc:@embedding_lookup/535200*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/535200*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_59_layer_call_fn_535309

inputs	
unknown:	À 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_59_layer_call_and_return_conditional_losses_533084o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

Ç
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533224

inputs6
$embedding_52_embedding_lookup_533218:4 
identity¢embedding_52/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_52/embedding_lookupResourceGather$embedding_52_embedding_lookup_533218Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_52/embedding_lookup/533218*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_52/embedding_lookup/IdentityIdentity&embedding_52/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_52/embedding_lookup/533218*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_52/embedding_lookup/Identity_1Identity/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_52/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_52/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_52/embedding_lookupembedding_52/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533198

inputs8
$embedding_50_embedding_lookup_533192:
øÉ 
identity¢embedding_50/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_50/embedding_lookupResourceGather$embedding_50_embedding_lookup_533192Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_50/embedding_lookup/533192*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_50/embedding_lookup/IdentityIdentity&embedding_50/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_50/embedding_lookup/533192*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_50/embedding_lookup/Identity_1Identity/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_50/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_50/embedding_lookupembedding_50/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_533276

inputs6
$embedding_56_embedding_lookup_533270:! 
identity¢embedding_56/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_56/embedding_lookupResourceGather$embedding_56_embedding_lookup_533270Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_56/embedding_lookup/533270*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_56/embedding_lookup/533270*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_56/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_56/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_56/embedding_lookupembedding_56/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

)__inference_dense_15_layer_call_fn_535127

inputs
unknown:
ÀÀ
	unknown_0:	À
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_533350p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
È

È
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535042

inputs6
$embedding_58_embedding_lookup_535036: 
identity¢embedding_58/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_58/embedding_lookupResourceGather$embedding_58_embedding_lookup_535036Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_58/embedding_lookup/535036*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_58/embedding_lookup/535036*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_58/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_58/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_58/embedding_lookupembedding_58/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ

A__inference_dcn_5_layer_call_and_return_conditional_losses_534418
features_age
features_c_type
features_character
features_gender
features_interacted_id
features_language
features_login_time
features_mode
features_ranking
features_user_idQ
=user_id_sequential_layer_embedding_50_embedding_lookup_534328:
øÉ W
Cinteracted_id_sequential_layer_embedding_51_embedding_lookup_534334:
÷É K
9age_sequential_layer_embedding_52_embedding_lookup_534340:4 N
<gender_sequential_layer_embedding_53_embedding_lookup_534346: P
>language_sequential_layer_embedding_54_embedding_lookup_534352:4 S
@login_time_sequential_layer_embedding_55_embedding_lookup_534358:	¡ Q
?character_sequential_layer_embedding_56_embedding_lookup_534364:! N
<c_type_sequential_layer_embedding_57_embedding_lookup_534370: L
:mode_sequential_layer_embedding_58_embedding_lookup_534376: P
=ranking_sequential_layer_embedding_59_embedding_lookup_534382:	À @
,cross_5_dense_matmul_readvariableop_resource:
ÀÀ<
-cross_5_dense_biasadd_readvariableop_resource:	À;
'dense_15_matmul_readvariableop_resource:
ÀÀ7
(dense_15_biasadd_readvariableop_resource:	À;
'dense_16_matmul_readvariableop_resource:
ÀÀ7
(dense_16_biasadd_readvariableop_resource:	À:
'dense_17_matmul_readvariableop_resource:	À6
(dense_17_biasadd_readvariableop_resource:
identity¢2age_sequential_layer/embedding_52/embedding_lookup¢5c_type_sequential_layer/embedding_57/embedding_lookup¢8character_sequential_layer/embedding_56/embedding_lookup¢$cross_5/dense/BiasAdd/ReadVariableOp¢#cross_5/dense/MatMul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢5gender_sequential_layer/embedding_53/embedding_lookup¢<interacted_id_sequential_layer/embedding_51/embedding_lookup¢7language_sequential_layer/embedding_54/embedding_lookup¢9login_time_sequential_layer/embedding_55/embedding_lookup¢3mode_sequential_layer/embedding_58/embedding_lookup¢6ranking_sequential_layer/embedding_59/embedding_lookup¢6user_id_sequential_layer/embedding_50/embedding_lookupt
user_id_sequential_layer/CastCastfeatures_user_id*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
6user_id_sequential_layer/embedding_50/embedding_lookupResourceGather=user_id_sequential_layer_embedding_50_embedding_lookup_534328!user_id_sequential_layer/Cast:y:0*
Tindices0	*P
_classF
DBloc:@user_id_sequential_layer/embedding_50/embedding_lookup/534328*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
?user_id_sequential_layer/embedding_50/embedding_lookup/IdentityIdentity?user_id_sequential_layer/embedding_50/embedding_lookup:output:0*
T0*P
_classF
DBloc:@user_id_sequential_layer/embedding_50/embedding_lookup/534328*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
Auser_id_sequential_layer/embedding_50/embedding_lookup/Identity_1IdentityHuser_id_sequential_layer/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#interacted_id_sequential_layer/CastCastfeatures_interacted_id*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
<interacted_id_sequential_layer/embedding_51/embedding_lookupResourceGatherCinteracted_id_sequential_layer_embedding_51_embedding_lookup_534334'interacted_id_sequential_layer/Cast:y:0*
Tindices0	*V
_classL
JHloc:@interacted_id_sequential_layer/embedding_51/embedding_lookup/534334*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¢
Einteracted_id_sequential_layer/embedding_51/embedding_lookup/IdentityIdentityEinteracted_id_sequential_layer/embedding_51/embedding_lookup:output:0*
T0*V
_classL
JHloc:@interacted_id_sequential_layer/embedding_51/embedding_lookup/534334*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Õ
Ginteracted_id_sequential_layer/embedding_51/embedding_lookup/Identity_1IdentityNinteracted_id_sequential_layer/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
age_sequential_layer/CastCastfeatures_age*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
2age_sequential_layer/embedding_52/embedding_lookupResourceGather9age_sequential_layer_embedding_52_embedding_lookup_534340age_sequential_layer/Cast:y:0*
Tindices0	*L
_classB
@>loc:@age_sequential_layer/embedding_52/embedding_lookup/534340*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
;age_sequential_layer/embedding_52/embedding_lookup/IdentityIdentity;age_sequential_layer/embedding_52/embedding_lookup:output:0*
T0*L
_classB
@>loc:@age_sequential_layer/embedding_52/embedding_lookup/534340*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
=age_sequential_layer/embedding_52/embedding_lookup/Identity_1IdentityDage_sequential_layer/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
gender_sequential_layer/CastCastfeatures_gender*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
5gender_sequential_layer/embedding_53/embedding_lookupResourceGather<gender_sequential_layer_embedding_53_embedding_lookup_534346 gender_sequential_layer/Cast:y:0*
Tindices0	*O
_classE
CAloc:@gender_sequential_layer/embedding_53/embedding_lookup/534346*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
>gender_sequential_layer/embedding_53/embedding_lookup/IdentityIdentity>gender_sequential_layer/embedding_53/embedding_lookup:output:0*
T0*O
_classE
CAloc:@gender_sequential_layer/embedding_53/embedding_lookup/534346*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ç
@gender_sequential_layer/embedding_53/embedding_lookup/Identity_1IdentityGgender_sequential_layer/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
language_sequential_layer/CastCastfeatures_language*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
7language_sequential_layer/embedding_54/embedding_lookupResourceGather>language_sequential_layer_embedding_54_embedding_lookup_534352"language_sequential_layer/Cast:y:0*
Tindices0	*Q
_classG
ECloc:@language_sequential_layer/embedding_54/embedding_lookup/534352*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
@language_sequential_layer/embedding_54/embedding_lookup/IdentityIdentity@language_sequential_layer/embedding_54/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@language_sequential_layer/embedding_54/embedding_lookup/534352*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ë
Blanguage_sequential_layer/embedding_54/embedding_lookup/Identity_1IdentityIlanguage_sequential_layer/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
 login_time_sequential_layer/CastCastfeatures_login_time*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
9login_time_sequential_layer/embedding_55/embedding_lookupResourceGather@login_time_sequential_layer_embedding_55_embedding_lookup_534358$login_time_sequential_layer/Cast:y:0*
Tindices0	*S
_classI
GEloc:@login_time_sequential_layer/embedding_55/embedding_lookup/534358*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Blogin_time_sequential_layer/embedding_55/embedding_lookup/IdentityIdentityBlogin_time_sequential_layer/embedding_55/embedding_lookup:output:0*
T0*S
_classI
GEloc:@login_time_sequential_layer/embedding_55/embedding_lookup/534358*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ï
Dlogin_time_sequential_layer/embedding_55/embedding_lookup/Identity_1IdentityKlogin_time_sequential_layer/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
character_sequential_layer/CastCastfeatures_character*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
8character_sequential_layer/embedding_56/embedding_lookupResourceGather?character_sequential_layer_embedding_56_embedding_lookup_534364#character_sequential_layer/Cast:y:0*
Tindices0	*R
_classH
FDloc:@character_sequential_layer/embedding_56/embedding_lookup/534364*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
Acharacter_sequential_layer/embedding_56/embedding_lookup/IdentityIdentityAcharacter_sequential_layer/embedding_56/embedding_lookup:output:0*
T0*R
_classH
FDloc:@character_sequential_layer/embedding_56/embedding_lookup/534364*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í
Ccharacter_sequential_layer/embedding_56/embedding_lookup/Identity_1IdentityJcharacter_sequential_layer/embedding_56/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
c_type_sequential_layer/CastCastfeatures_c_type*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
5c_type_sequential_layer/embedding_57/embedding_lookupResourceGather<c_type_sequential_layer_embedding_57_embedding_lookup_534370 c_type_sequential_layer/Cast:y:0*
Tindices0	*O
_classE
CAloc:@c_type_sequential_layer/embedding_57/embedding_lookup/534370*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
>c_type_sequential_layer/embedding_57/embedding_lookup/IdentityIdentity>c_type_sequential_layer/embedding_57/embedding_lookup:output:0*
T0*O
_classE
CAloc:@c_type_sequential_layer/embedding_57/embedding_lookup/534370*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ç
@c_type_sequential_layer/embedding_57/embedding_lookup/Identity_1IdentityGc_type_sequential_layer/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
mode_sequential_layer/CastCastfeatures_mode*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
3mode_sequential_layer/embedding_58/embedding_lookupResourceGather:mode_sequential_layer_embedding_58_embedding_lookup_534376mode_sequential_layer/Cast:y:0*
Tindices0	*M
_classC
A?loc:@mode_sequential_layer/embedding_58/embedding_lookup/534376*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
<mode_sequential_layer/embedding_58/embedding_lookup/IdentityIdentity<mode_sequential_layer/embedding_58/embedding_lookup:output:0*
T0*M
_classC
A?loc:@mode_sequential_layer/embedding_58/embedding_lookup/534376*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
>mode_sequential_layer/embedding_58/embedding_lookup/Identity_1IdentityEmode_sequential_layer/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
ranking_sequential_layer/CastCastfeatures_ranking*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
6ranking_sequential_layer/embedding_59/embedding_lookupResourceGather=ranking_sequential_layer_embedding_59_embedding_lookup_534382!ranking_sequential_layer/Cast:y:0*
Tindices0	*P
_classF
DBloc:@ranking_sequential_layer/embedding_59/embedding_lookup/534382*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
?ranking_sequential_layer/embedding_59/embedding_lookup/IdentityIdentity?ranking_sequential_layer/embedding_59/embedding_lookup:output:0*
T0*P
_classF
DBloc:@ranking_sequential_layer/embedding_59/embedding_lookup/534382*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
Aranking_sequential_layer/embedding_59/embedding_lookup/Identity_1IdentityHranking_sequential_layer/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ß
concatConcatV2Juser_id_sequential_layer/embedding_50/embedding_lookup/Identity_1:output:0Pinteracted_id_sequential_layer/embedding_51/embedding_lookup/Identity_1:output:0Fage_sequential_layer/embedding_52/embedding_lookup/Identity_1:output:0Igender_sequential_layer/embedding_53/embedding_lookup/Identity_1:output:0Klanguage_sequential_layer/embedding_54/embedding_lookup/Identity_1:output:0Mlogin_time_sequential_layer/embedding_55/embedding_lookup/Identity_1:output:0Lcharacter_sequential_layer/embedding_56/embedding_lookup/Identity_1:output:0Ic_type_sequential_layer/embedding_57/embedding_lookup/Identity_1:output:0Gmode_sequential_layer/embedding_58/embedding_lookup/Identity_1:output:0Jranking_sequential_layer/embedding_59/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N
*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#cross_5/dense/MatMul/ReadVariableOpReadVariableOp,cross_5_dense_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
cross_5/dense/MatMulMatMulconcat:output:0+cross_5/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
$cross_5/dense/BiasAdd/ReadVariableOpReadVariableOp-cross_5_dense_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0¡
cross_5/dense/BiasAddBiasAddcross_5/dense/MatMul:product:0,cross_5/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
cross_5/mulMulconcat:output:0cross_5/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
cross_5/addAddV2cross_5/mul:z:0concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
dense_15/MatMulMatMulcross_5/add:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
ÀÀ*
dtype0
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	À*
dtype0
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp3^age_sequential_layer/embedding_52/embedding_lookup6^c_type_sequential_layer/embedding_57/embedding_lookup9^character_sequential_layer/embedding_56/embedding_lookup%^cross_5/dense/BiasAdd/ReadVariableOp$^cross_5/dense/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp6^gender_sequential_layer/embedding_53/embedding_lookup=^interacted_id_sequential_layer/embedding_51/embedding_lookup8^language_sequential_layer/embedding_54/embedding_lookup:^login_time_sequential_layer/embedding_55/embedding_lookup4^mode_sequential_layer/embedding_58/embedding_lookup7^ranking_sequential_layer/embedding_59/embedding_lookup7^user_id_sequential_layer/embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2h
2age_sequential_layer/embedding_52/embedding_lookup2age_sequential_layer/embedding_52/embedding_lookup2n
5c_type_sequential_layer/embedding_57/embedding_lookup5c_type_sequential_layer/embedding_57/embedding_lookup2t
8character_sequential_layer/embedding_56/embedding_lookup8character_sequential_layer/embedding_56/embedding_lookup2L
$cross_5/dense/BiasAdd/ReadVariableOp$cross_5/dense/BiasAdd/ReadVariableOp2J
#cross_5/dense/MatMul/ReadVariableOp#cross_5/dense/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2n
5gender_sequential_layer/embedding_53/embedding_lookup5gender_sequential_layer/embedding_53/embedding_lookup2|
<interacted_id_sequential_layer/embedding_51/embedding_lookup<interacted_id_sequential_layer/embedding_51/embedding_lookup2r
7language_sequential_layer/embedding_54/embedding_lookup7language_sequential_layer/embedding_54/embedding_lookup2v
9login_time_sequential_layer/embedding_55/embedding_lookup9login_time_sequential_layer/embedding_55/embedding_lookup2j
3mode_sequential_layer/embedding_58/embedding_lookup3mode_sequential_layer/embedding_58/embedding_lookup2p
6ranking_sequential_layer/embedding_59/embedding_lookup6ranking_sequential_layer/embedding_59/embedding_lookup2p
6user_id_sequential_layer/embedding_50/embedding_lookup6user_id_sequential_layer/embedding_50/embedding_lookup:Q M
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namefeatures/age:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/c_type:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namefeatures/character:TP
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namefeatures/gender:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namefeatures/interacted_id:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefeatures/language:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namefeatures/login_time:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namefeatures/mode:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/ranking:U	Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namefeatures/user_id
¬
Ã
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533137

inputs	'
embedding_50_533133:
øÉ 
identity¢$embedding_50/StatefulPartitionedCallì
$embedding_50/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_50_533133*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_50_layer_call_and_return_conditional_losses_533132|
IdentityIdentity-embedding_50/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_50/StatefulPartitionedCall$embedding_50/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_gender_sequential_layer_layer_call_fn_534663

inputs	
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_532849o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

Ï
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533263

inputs7
$embedding_55_embedding_lookup_533257:	¡ 
identity¢embedding_55/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_55/embedding_lookupResourceGather$embedding_55_embedding_lookup_533257Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_55/embedding_lookup/533257*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_55/embedding_lookup/IdentityIdentity&embedding_55/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_55/embedding_lookup/533257*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_55/embedding_lookup/Identity_1Identity/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_55/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_55/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_55/embedding_lookupembedding_55/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ	
Ê
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534702

inputs	6
$embedding_53_embedding_lookup_534696: 
identity¢embedding_53/embedding_lookupÜ
embedding_53/embedding_lookupResourceGather$embedding_53_embedding_lookup_534696inputs*
Tindices0	*7
_class-
+)loc:@embedding_53/embedding_lookup/534696*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_53/embedding_lookup/IdentityIdentity&embedding_53/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_53/embedding_lookup/534696*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_53/embedding_lookup/Identity_1Identity/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_53/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_53/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_53/embedding_lookupembedding_53/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Â
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_532967

inputs	%
embedding_54_532963:4 
identity¢$embedding_54/StatefulPartitionedCallì
$embedding_54/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_54_532963*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_54_layer_call_and_return_conditional_losses_532940|
IdentityIdentity-embedding_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_54/StatefulPartitionedCall$embedding_54/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

9__inference_ranking_sequential_layer_layer_call_fn_535073

inputs
unknown:	À 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533315o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

È
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535052

inputs6
$embedding_58_embedding_lookup_535046: 
identity¢embedding_58/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_58/embedding_lookupResourceGather$embedding_58_embedding_lookup_535046Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_58/embedding_lookup/535046*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_58/embedding_lookup/535046*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_58/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_58/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_58/embedding_lookupembedding_58/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
À
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_532871

inputs	%
embedding_53_532867: 
identity¢$embedding_53/StatefulPartitionedCallì
$embedding_53/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_53_532867*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_53_layer_call_and_return_conditional_losses_532844|
IdentityIdentity-embedding_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_53/StatefulPartitionedCall$embedding_53/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_embedding_56_layer_call_fn_535261

inputs	
unknown:! 
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_56_layer_call_and_return_conditional_losses_532796o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø	
Í
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534504

inputs	8
$embedding_50_embedding_lookup_534498:
øÉ 
identity¢embedding_50/embedding_lookupÜ
embedding_50/embedding_lookupResourceGather$embedding_50_embedding_lookup_534498inputs*
Tindices0	*7
_class-
+)loc:@embedding_50/embedding_lookup/534498*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_50/embedding_lookup/IdentityIdentity&embedding_50/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_50/embedding_lookup/534498*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_50/embedding_lookup/Identity_1Identity/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_50/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_50/embedding_lookupembedding_50/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
Ã
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_532823

inputs	%
embedding_56_532819:! 
identity¢$embedding_56/StatefulPartitionedCallì
$embedding_56/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_56_532819*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_56_layer_call_and_return_conditional_losses_532796|
IdentityIdentity-embedding_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_56/StatefulPartitionedCall$embedding_56/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó

Ó
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_533211

inputs8
$embedding_51_embedding_lookup_533205:
÷É 
identity¢embedding_51/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_51/embedding_lookupResourceGather$embedding_51_embedding_lookup_533205Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_51/embedding_lookup/533205*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_51/embedding_lookup/IdentityIdentity&embedding_51/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_51/embedding_lookup/533205*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_51/embedding_lookup/Identity_1Identity/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_51/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_51/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_51/embedding_lookupembedding_51/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó

Ó
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534590

inputs8
$embedding_51_embedding_lookup_534584:
÷É 
identity¢embedding_51/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_51/embedding_lookupResourceGather$embedding_51_embedding_lookup_534584Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_51/embedding_lookup/534584*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_51/embedding_lookup/IdentityIdentity&embedding_51/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_51/embedding_lookup/534584*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_51/embedding_lookup/Identity_1Identity/embedding_51/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_51/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_51/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_51/embedding_lookupembedding_51/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535108

inputs7
$embedding_59_embedding_lookup_535102:	À 
identity¢embedding_59/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_59/embedding_lookupResourceGather$embedding_59_embedding_lookup_535102Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_59/embedding_lookup/535102*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_59/embedding_lookup/535102*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_59/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_59/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_59/embedding_lookupembedding_59/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533608

inputs6
$embedding_54_embedding_lookup_533602:4 
identity¢embedding_54/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_54/embedding_lookupResourceGather$embedding_54_embedding_lookup_533602Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_54/embedding_lookup/533602*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_54/embedding_lookup/IdentityIdentity&embedding_54/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_54/embedding_lookup/533602*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_54/embedding_lookup/Identity_1Identity/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_54/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_54/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_54/embedding_lookupembedding_54/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

<__inference_login_time_sequential_layer_layer_call_fn_534816

inputs
unknown:	¡ 
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_533584o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

Ç
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534656

inputs6
$embedding_52_embedding_lookup_534650:4 
identity¢embedding_52/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_52/embedding_lookupResourceGather$embedding_52_embedding_lookup_534650Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_52/embedding_lookup/534650*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_52/embedding_lookup/IdentityIdentity&embedding_52/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_52/embedding_lookup/534650*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_52/embedding_lookup/Identity_1Identity/embedding_52/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_52/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_52/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_52/embedding_lookupembedding_52/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

Ê
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534712

inputs6
$embedding_53_embedding_lookup_534706: 
identity¢embedding_53/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_53/embedding_lookupResourceGather$embedding_53_embedding_lookup_534706Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_53/embedding_lookup/534706*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_53/embedding_lookup/IdentityIdentity&embedding_53/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_53/embedding_lookup/534706*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_53/embedding_lookup/Identity_1Identity/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_53/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_53/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_53/embedding_lookupembedding_53/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

5__inference_age_sequential_layer_layer_call_fn_534618

inputs
unknown:4 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_533656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

å
$__inference_signature_wrapper_534112
age

c_type
	character

gender
interacted_id
language

login_time
mode
ranking
user_id
unknown:
øÉ 
	unknown_0:
÷É 
	unknown_1:4 
	unknown_2: 
	unknown_3:4 
	unknown_4:	¡ 
	unknown_5:! 
	unknown_6: 
	unknown_7: 
	unknown_8:	À 
	unknown_9:
ÀÀ

unknown_10:	À

unknown_11:
ÀÀ

unknown_12:	À

unknown_13:
ÀÀ

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallagec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_532684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ï
_input_shapes½
º:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameage:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namec_type:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	character:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namegender:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameinteracted_id:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
language:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
login_time:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namemode:LH
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	ranking:L	H
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	user_id
ú	
Ï
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534834

inputs	7
$embedding_55_embedding_lookup_534828:	¡ 
identity¢embedding_55/embedding_lookupÜ
embedding_55/embedding_lookupResourceGather$embedding_55_embedding_lookup_534828inputs*
Tindices0	*7
_class-
+)loc:@embedding_55/embedding_lookup/534828*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_55/embedding_lookup/IdentityIdentity&embedding_55/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_55/embedding_lookup/534828*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_55/embedding_lookup/Identity_1Identity/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_55/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_55/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_55/embedding_lookupembedding_55/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

Ê
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534722

inputs6
$embedding_53_embedding_lookup_534716: 
identity¢embedding_53/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_53/embedding_lookupResourceGather$embedding_53_embedding_lookup_534716Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_53/embedding_lookup/534716*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_53/embedding_lookup/IdentityIdentity&embedding_53/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_53/embedding_lookup/534716*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_53/embedding_lookup/Identity_1Identity/embedding_53/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_53/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_53/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_53/embedding_lookupembedding_53/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Â
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533111

inputs	&
embedding_59_533107:	À 
identity¢$embedding_59/StatefulPartitionedCallì
$embedding_59/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_59_533107*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_59_layer_call_and_return_conditional_losses_533084|
IdentityIdentity-embedding_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_59/StatefulPartitionedCall$embedding_59/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

Ê
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533289

inputs6
$embedding_57_embedding_lookup_533283: 
identity¢embedding_57/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_57/embedding_lookupResourceGather$embedding_57_embedding_lookup_533283Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_57/embedding_lookup/533283*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_57/embedding_lookup/533283*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_57/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_57/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_57/embedding_lookupembedding_57/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

?__inference_interacted_id_sequential_layer_layer_call_fn_534538

inputs	
unknown:
÷É 
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *c
f^R\
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_532919o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹

;__inference_character_sequential_layer_layer_call_fn_534861

inputs	
unknown:! 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_532801o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

Ï
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534854

inputs7
$embedding_55_embedding_lookup_534848:	¡ 
identity¢embedding_55/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_55/embedding_lookupResourceGather$embedding_55_embedding_lookup_534848Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_55/embedding_lookup/534848*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_55/embedding_lookup/IdentityIdentity&embedding_55/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_55/embedding_lookup/534848*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_55/embedding_lookup/Identity_1Identity/embedding_55/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_55/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_55/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_55/embedding_lookupembedding_55/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_533488

inputs7
$embedding_59_embedding_lookup_533482:	À 
identity¢embedding_59/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_59/embedding_lookupResourceGather$embedding_59_embedding_lookup_533482Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_59/embedding_lookup/533482*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_59/embedding_lookup/533482*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_59/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_59/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_59/embedding_lookupembedding_59/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
¦
H__inference_embedding_55_layer_call_and_return_conditional_losses_532988

inputs	*
embedding_lookup_532982:	¡ 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532982inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532982*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532982*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
§
H__inference_embedding_51_layer_call_and_return_conditional_losses_532892

inputs	+
embedding_lookup_532886:
÷É 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532886inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532886*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532886*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

Í
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_533704

inputs8
$embedding_50_embedding_lookup_533698:
øÉ 
identity¢embedding_50/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_50/embedding_lookupResourceGather$embedding_50_embedding_lookup_533698Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_50/embedding_lookup/533698*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_50/embedding_lookup/IdentityIdentity&embedding_50/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_50/embedding_lookup/533698*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_50/embedding_lookup/Identity_1Identity/embedding_50/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_50/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_50/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_50/embedding_lookupembedding_50/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_c_type_sequential_layer_layer_call_fn_534941

inputs
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_533289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

Ì
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_533250

inputs6
$embedding_54_embedding_lookup_533244:4 
identity¢embedding_54/embedding_lookupQ
CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
embedding_54/embedding_lookupResourceGather$embedding_54_embedding_lookup_533244Cast:y:0*
Tindices0	*7
_class-
+)loc:@embedding_54/embedding_lookup/533244*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Å
&embedding_54/embedding_lookup/IdentityIdentity&embedding_54/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_54/embedding_lookup/533244*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_54/embedding_lookup/Identity_1Identity/embedding_54/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
IdentityIdentity1embedding_54/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
NoOpNoOp^embedding_54/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2>
embedding_54/embedding_lookupembedding_54/embedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
H__inference_embedding_56_layer_call_and_return_conditional_losses_532796

inputs	)
embedding_lookup_532790:! 
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_532790inputs*
Tindices0	**
_class 
loc:@embedding_lookup/532790*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/532790*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
À
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_532775

inputs	%
embedding_57_532771: 
identity¢$embedding_57/StatefulPartitionedCallì
$embedding_57/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_57_532771*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_57_layer_call_and_return_conditional_losses_532748|
IdentityIdentity-embedding_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
NoOpNoOp%^embedding_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2L
$embedding_57/StatefulPartitionedCall$embedding_57/StatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

8__inference_gender_sequential_layer_layer_call_fn_534684

inputs
unknown: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_533632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*®
serving_default
/
age(
serving_default_age:0ÿÿÿÿÿÿÿÿÿ
5
c_type+
serving_default_c_type:0ÿÿÿÿÿÿÿÿÿ
;
	character.
serving_default_character:0ÿÿÿÿÿÿÿÿÿ
5
gender+
serving_default_gender:0ÿÿÿÿÿÿÿÿÿ
C
interacted_id2
serving_default_interacted_id:0ÿÿÿÿÿÿÿÿÿ
9
language-
serving_default_language:0ÿÿÿÿÿÿÿÿÿ
=

login_time/
serving_default_login_time:0ÿÿÿÿÿÿÿÿÿ
1
mode)
serving_default_mode:0ÿÿÿÿÿÿÿÿÿ
7
ranking,
serving_default_ranking:0ÿÿÿÿÿÿÿÿÿ
7
user_id,
serving_default_user_id:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¾ª
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
_all_features
	_embeddings

_cross_layer
_deep_layers
_logit_layer
task
	optimizer
loss

signatures"
_tf_keras_model
¦
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
!16
"17"
trackable_list_wrapper
¦
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
!16
"17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ã
(trace_0
)trace_1
*trace_2
+trace_32Ø
&__inference_dcn_5_layer_call_fn_533429
&__inference_dcn_5_layer_call_fn_534162
&__inference_dcn_5_layer_call_fn_534212
&__inference_dcn_5_layer_call_fn_533924µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z(trace_0z)trace_1z*trace_2z+trace_3
¯
,trace_0
-trace_1
.trace_2
/trace_32Ä
A__inference_dcn_5_layer_call_and_return_conditional_losses_534315
A__inference_dcn_5_layer_call_and_return_conditional_losses_534418
A__inference_dcn_5_layer_call_and_return_conditional_losses_533989
A__inference_dcn_5_layer_call_and_return_conditional_losses_534054µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z,trace_0z-trace_1z.trace_2z/trace_3
 B
!__inference__wrapped_model_532684agec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_id
"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
¥
0user_id
1interacted_id
2age

3gender
4language
5
login_time
6	character

7c_type
8mode
9ranking"
trackable_dict_wrapper
±
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@_dense"
_tf_keras_layer
.
A0
B1"
trackable_list_wrapper
»
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
û
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_ranking_metrics
P_prediction_metrics
Q_label_metrics
R_loss_metrics"
_tf_keras_layer
»
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratemàmámâmãmämåmæmçmèmémêmëmìmímî mï!mð"mñvòvóvôvõvöv÷vøvùvúvûvüvývþvÿv v!v"v"
	optimizer
 "
trackable_dict_wrapper
,
Xserving_default"
signature_map
):'4 2embedding_52/embeddings
):' 2embedding_57/embeddings
):'! 2embedding_56/embeddings
):' 2embedding_53/embeddings
+:)
÷É 2embedding_51/embeddings
):'4 2embedding_54/embeddings
*:(	¡ 2embedding_55/embeddings
):' 2embedding_58/embeddings
*:(	À 2embedding_59/embeddings
+:)
øÉ 2embedding_50/embeddings
.:,
ÀÀ2dcn_5/cross_5/dense/kernel
':%À2dcn_5/cross_5/dense/bias
):'
ÀÀ2dcn_5/dense_15/kernel
": À2dcn_5/dense_15/bias
):'
ÀÀ2dcn_5/dense_16/kernel
": À2dcn_5/dense_16/bias
(:&	À2dcn_5/dense_17/kernel
!:2dcn_5/dense_17/bias
 "
trackable_list_wrapper

20
71
62
33
14
45
56
87
98
09

10
A11
B12
13
14"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÂB¿
&__inference_dcn_5_layer_call_fn_533429agec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
&__inference_dcn_5_layer_call_fn_534162features/agefeatures/c_typefeatures/characterfeatures/genderfeatures/interacted_idfeatures/languagefeatures/login_timefeatures/modefeatures/rankingfeatures/user_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
&__inference_dcn_5_layer_call_fn_534212features/agefeatures/c_typefeatures/characterfeatures/genderfeatures/interacted_idfeatures/languagefeatures/login_timefeatures/modefeatures/rankingfeatures/user_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÂB¿
&__inference_dcn_5_layer_call_fn_533924agec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
·B´
A__inference_dcn_5_layer_call_and_return_conditional_losses_534315features/agefeatures/c_typefeatures/characterfeatures/genderfeatures/interacted_idfeatures/languagefeatures/login_timefeatures/modefeatures/rankingfeatures/user_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
·B´
A__inference_dcn_5_layer_call_and_return_conditional_losses_534418features/agefeatures/c_typefeatures/characterfeatures/genderfeatures/interacted_idfeatures/languagefeatures/login_timefeatures/modefeatures/rankingfeatures/user_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÝBÚ
A__inference_dcn_5_layer_call_and_return_conditional_losses_533989agec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÝBÚ
A__inference_dcn_5_layer_call_and_return_conditional_losses_534054agec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_id
"µ
¬²¨
FullArgSpec+
args# 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ
Zlayer_with_weights-0
Zlayer-0
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ñ
alayer_with_weights-0
alayer-0
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ñ
hlayer_with_weights-0
hlayer-0
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ñ
olayer_with_weights-0
olayer-0
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ñ
vlayer_with_weights-0
vlayer-0
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_sequential
Õ
}layer_with_weights-0
}layer-0
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ù
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ù
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ù
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ù
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ô
¥trace_02Õ
(__inference_cross_5_layer_call_fn_534427¨
²
FullArgSpec
args
jself
jx0
jx
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¥trace_0

¦trace_02ð
C__inference_cross_5_layer_call_and_return_conditional_losses_534439¨
²
FullArgSpec
args
jself
jx0
jx
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¦trace_0
Á
§	variables
¨trainable_variables
©regularization_losses
ª	keras_api
«__call__
+¬&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Á
­	variables
®trainable_variables
¯regularization_losses
°	keras_api
±__call__
+²&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Á
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ï
¾trace_02Ð
)__inference_dense_17_layer_call_fn_534448¢
²
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
annotationsª *
 z¾trace_0

¿trace_02ë
D__inference_dense_17_layer_call_and_return_conditional_losses_534458¢
²
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
annotationsª *
 z¿trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
õ2òï
æ²â
FullArgSpec\
argsTQ
jself
jlabels
jpredictions
jsample_weight

jtraining
jcompute_metrics
varargs
 
varkw
 
defaults

 
p 
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
õ2òï
æ²â
FullArgSpec\
argsTQ
jself
jlabels
jpredictions
jsample_weight

jtraining
jcompute_metrics
varargs
 
varkw
 
defaults

 
p 
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
B
$__inference_signature_wrapper_534112agec_type	charactergenderinteracted_idlanguage
login_timemoderankinguser_id"
²
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
annotationsª *
 
R
Å	variables
Æ	keras_api

Çtotal

Ècount"
_tf_keras_metric
»
É	variables
Êtrainable_variables
Ëregularization_losses
Ì	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
¢
Ôtrace_0
Õtrace_1
Ötrace_2
×trace_32¯
9__inference_user_id_sequential_layer_layer_call_fn_534465
9__inference_user_id_sequential_layer_layer_call_fn_534472
9__inference_user_id_sequential_layer_layer_call_fn_534479
9__inference_user_id_sequential_layer_layer_call_fn_534486À
·²³
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
kwonlydefaultsª 
annotationsª *
 zÔtrace_0zÕtrace_1zÖtrace_2z×trace_3

Øtrace_0
Ùtrace_1
Útrace_2
Ûtrace_32
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534495
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534504
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534514
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534524À
·²³
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
kwonlydefaultsª 
annotationsª *
 zØtrace_0zÙtrace_1zÚtrace_2zÛtrace_3
»
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
º
çtrace_0
ètrace_1
étrace_2
êtrace_32Ç
?__inference_interacted_id_sequential_layer_layer_call_fn_534531
?__inference_interacted_id_sequential_layer_layer_call_fn_534538
?__inference_interacted_id_sequential_layer_layer_call_fn_534545
?__inference_interacted_id_sequential_layer_layer_call_fn_534552À
·²³
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
kwonlydefaultsª 
annotationsª *
 zçtrace_0zètrace_1zétrace_2zêtrace_3
¦
ëtrace_0
ìtrace_1
ítrace_2
îtrace_32³
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534561
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534570
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534580
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534590À
·²³
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
kwonlydefaultsª 
annotationsª *
 zëtrace_0zìtrace_1zítrace_2zîtrace_3
»
ï	variables
ðtrainable_variables
ñregularization_losses
ò	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object

útrace_0
ûtrace_1
ütrace_2
ýtrace_32
5__inference_age_sequential_layer_layer_call_fn_534597
5__inference_age_sequential_layer_layer_call_fn_534604
5__inference_age_sequential_layer_layer_call_fn_534611
5__inference_age_sequential_layer_layer_call_fn_534618À
·²³
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
kwonlydefaultsª 
annotationsª *
 zútrace_0zûtrace_1zütrace_2zýtrace_3
þ
þtrace_0
ÿtrace_1
trace_2
trace_32
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534627
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534636
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534646
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534656À
·²³
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
kwonlydefaultsª 
annotationsª *
 zþtrace_0zÿtrace_1ztrace_2ztrace_3
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32«
8__inference_gender_sequential_layer_layer_call_fn_534663
8__inference_gender_sequential_layer_layer_call_fn_534670
8__inference_gender_sequential_layer_layer_call_fn_534677
8__inference_gender_sequential_layer_layer_call_fn_534684À
·²³
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
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3

trace_0
trace_1
trace_2
trace_32
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534693
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534702
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534712
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534722À
·²³
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
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
¦
 trace_0
¡trace_1
¢trace_2
£trace_32³
:__inference_language_sequential_layer_layer_call_fn_534729
:__inference_language_sequential_layer_layer_call_fn_534736
:__inference_language_sequential_layer_layer_call_fn_534743
:__inference_language_sequential_layer_layer_call_fn_534750À
·²³
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
kwonlydefaultsª 
annotationsª *
 z trace_0z¡trace_1z¢trace_2z£trace_3

¤trace_0
¥trace_1
¦trace_2
§trace_32
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534759
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534768
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534778
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534788À
·²³
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
kwonlydefaultsª 
annotationsª *
 z¤trace_0z¥trace_1z¦trace_2z§trace_3
»
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¶
®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
®
³trace_0
´trace_1
µtrace_2
¶trace_32»
<__inference_login_time_sequential_layer_layer_call_fn_534795
<__inference_login_time_sequential_layer_layer_call_fn_534802
<__inference_login_time_sequential_layer_layer_call_fn_534809
<__inference_login_time_sequential_layer_layer_call_fn_534816À
·²³
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
kwonlydefaultsª 
annotationsª *
 z³trace_0z´trace_1zµtrace_2z¶trace_3

·trace_0
¸trace_1
¹trace_2
ºtrace_32§
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534825
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534834
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534844
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534854À
·²³
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
kwonlydefaultsª 
annotationsª *
 z·trace_0z¸trace_1z¹trace_2zºtrace_3
»
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ª
Ætrace_0
Çtrace_1
Ètrace_2
Étrace_32·
;__inference_character_sequential_layer_layer_call_fn_534861
;__inference_character_sequential_layer_layer_call_fn_534868
;__inference_character_sequential_layer_layer_call_fn_534875
;__inference_character_sequential_layer_layer_call_fn_534882À
·²³
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
kwonlydefaultsª 
annotationsª *
 zÆtrace_0zÇtrace_1zÈtrace_2zÉtrace_3

Êtrace_0
Ëtrace_1
Ìtrace_2
Ítrace_32£
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534891
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534900
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534910
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534920À
·²³
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
kwonlydefaultsª 
annotationsª *
 zÊtrace_0zËtrace_1zÌtrace_2zÍtrace_3
»
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ñ	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

Ùtrace_0
Útrace_1
Ûtrace_2
Ütrace_32«
8__inference_c_type_sequential_layer_layer_call_fn_534927
8__inference_c_type_sequential_layer_layer_call_fn_534934
8__inference_c_type_sequential_layer_layer_call_fn_534941
8__inference_c_type_sequential_layer_layer_call_fn_534948À
·²³
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
kwonlydefaultsª 
annotationsª *
 zÙtrace_0zÚtrace_1zÛtrace_2zÜtrace_3

Ýtrace_0
Þtrace_1
ßtrace_2
àtrace_32
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534957
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534966
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534976
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534986À
·²³
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
kwonlydefaultsª 
annotationsª *
 zÝtrace_0zÞtrace_1zßtrace_2zàtrace_3
»
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
å__call__
+æ&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

ìtrace_0
ítrace_1
îtrace_2
ïtrace_32£
6__inference_mode_sequential_layer_layer_call_fn_534993
6__inference_mode_sequential_layer_layer_call_fn_535000
6__inference_mode_sequential_layer_layer_call_fn_535007
6__inference_mode_sequential_layer_layer_call_fn_535014À
·²³
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
kwonlydefaultsª 
annotationsª *
 zìtrace_0zítrace_1zîtrace_2zïtrace_3

ðtrace_0
ñtrace_1
òtrace_2
ótrace_32
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535023
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535032
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535042
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535052À
·²³
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
kwonlydefaultsª 
annotationsª *
 zðtrace_0zñtrace_1zòtrace_2zótrace_3
»
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¢
ÿtrace_0
trace_1
trace_2
trace_32¯
9__inference_ranking_sequential_layer_layer_call_fn_535059
9__inference_ranking_sequential_layer_layer_call_fn_535066
9__inference_ranking_sequential_layer_layer_call_fn_535073
9__inference_ranking_sequential_layer_layer_call_fn_535080À
·²³
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
kwonlydefaultsª 
annotationsª *
 zÿtrace_0ztrace_1ztrace_2ztrace_3

trace_0
trace_1
trace_2
trace_32
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535089
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535098
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535108
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535118À
·²³
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
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
 "
trackable_list_wrapper
'
@0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÞBÛ
(__inference_cross_5_layer_call_fn_534427x0"¨
²
FullArgSpec
args
jself
jx0
jx
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
C__inference_cross_5_layer_call_and_return_conditional_losses_534439x0"¨
²
FullArgSpec
args
jself
jx0
jx
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
§	variables
¨trainable_variables
©regularization_losses
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
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
annotationsª *
 
¨2¥¢
²
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
annotationsª *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
­	variables
®trainable_variables
¯regularization_losses
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_dense_15_layer_call_fn_535127¢
²
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
annotationsª *
 ztrace_0

trace_02ë
D__inference_dense_15_layer_call_and_return_conditional_losses_535138¢
²
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
annotationsª *
 ztrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_dense_16_layer_call_fn_535147¢
²
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
annotationsª *
 ztrace_0

trace_02ë
D__inference_dense_16_layer_call_and_return_conditional_losses_535158¢
²
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
annotationsª *
 ztrace_0
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
ÝBÚ
)__inference_dense_17_layer_call_fn_534448inputs"¢
²
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
annotationsª *
 
øBõ
D__inference_dense_17_layer_call_and_return_conditional_losses_534458inputs"¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
*
YRMSE"
trackable_dict_wrapper
0
Ç0
È1"
trackable_list_wrapper
.
Å	variables"
_generic_user_object
:  (2total
:  (2count
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
É	variables
Êtrainable_variables
Ëregularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
ó
trace_02Ô
-__inference_embedding_50_layer_call_fn_535165¢
²
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
annotationsª *
 ztrace_0

 trace_02ï
H__inference_embedding_50_layer_call_and_return_conditional_losses_535174¢
²
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
annotationsª *
 z trace_0
 "
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
9__inference_user_id_sequential_layer_layer_call_fn_534465inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
9__inference_user_id_sequential_layer_layer_call_fn_534472inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
9__inference_user_id_sequential_layer_layer_call_fn_534479inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
9__inference_user_id_sequential_layer_layer_call_fn_534486inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534495inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534504inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534514inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534524inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
ó
¦trace_02Ô
-__inference_embedding_51_layer_call_fn_535181¢
²
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
annotationsª *
 z¦trace_0

§trace_02ï
H__inference_embedding_51_layer_call_and_return_conditional_losses_535190¢
²
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
annotationsª *
 z§trace_0
 "
trackable_list_wrapper
'
a0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
?__inference_interacted_id_sequential_layer_layer_call_fn_534531inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
?__inference_interacted_id_sequential_layer_layer_call_fn_534538inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
?__inference_interacted_id_sequential_layer_layer_call_fn_534545inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
?__inference_interacted_id_sequential_layer_layer_call_fn_534552inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¬B©
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534561inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¬B©
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534570inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¬B©
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534580inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¬B©
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534590inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
ï	variables
ðtrainable_variables
ñregularization_losses
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses"
_generic_user_object
ó
­trace_02Ô
-__inference_embedding_52_layer_call_fn_535197¢
²
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
annotationsª *
 z­trace_0

®trace_02ï
H__inference_embedding_52_layer_call_and_return_conditional_losses_535206¢
²
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
annotationsª *
 z®trace_0
 "
trackable_list_wrapper
'
h0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
5__inference_age_sequential_layer_layer_call_fn_534597inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
5__inference_age_sequential_layer_layer_call_fn_534604inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
5__inference_age_sequential_layer_layer_call_fn_534611inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
5__inference_age_sequential_layer_layer_call_fn_534618inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¢B
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534627inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¢B
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534636inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¢B
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534646inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¢B
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534656inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ó
´trace_02Ô
-__inference_embedding_53_layer_call_fn_535213¢
²
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
annotationsª *
 z´trace_0

µtrace_02ï
H__inference_embedding_53_layer_call_and_return_conditional_losses_535222¢
²
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
annotationsª *
 zµtrace_0
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
8__inference_gender_sequential_layer_layer_call_fn_534663inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
8__inference_gender_sequential_layer_layer_call_fn_534670inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
8__inference_gender_sequential_layer_layer_call_fn_534677inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
8__inference_gender_sequential_layer_layer_call_fn_534684inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534693inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534702inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534712inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534722inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ó
»trace_02Ô
-__inference_embedding_54_layer_call_fn_535229¢
²
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
annotationsª *
 z»trace_0

¼trace_02ï
H__inference_embedding_54_layer_call_and_return_conditional_losses_535238¢
²
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
annotationsª *
 z¼trace_0
 "
trackable_list_wrapper
'
v0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
:__inference_language_sequential_layer_layer_call_fn_534729inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
:__inference_language_sequential_layer_layer_call_fn_534736inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
:__inference_language_sequential_layer_layer_call_fn_534743inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
:__inference_language_sequential_layer_layer_call_fn_534750inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
§B¤
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534759inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
§B¤
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534768inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
§B¤
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534778inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
§B¤
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534788inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
ó
Âtrace_02Ô
-__inference_embedding_55_layer_call_fn_535245¢
²
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
annotationsª *
 zÂtrace_0

Ãtrace_02ï
H__inference_embedding_55_layer_call_and_return_conditional_losses_535254¢
²
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
annotationsª *
 zÃtrace_0
 "
trackable_list_wrapper
'
}0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
<__inference_login_time_sequential_layer_layer_call_fn_534795inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
<__inference_login_time_sequential_layer_layer_call_fn_534802inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
<__inference_login_time_sequential_layer_layer_call_fn_534809inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
<__inference_login_time_sequential_layer_layer_call_fn_534816inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
©B¦
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534825inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
©B¦
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534834inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
©B¦
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534844inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
©B¦
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534854inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
ó
Étrace_02Ô
-__inference_embedding_56_layer_call_fn_535261¢
²
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
annotationsª *
 zÉtrace_0

Êtrace_02ï
H__inference_embedding_56_layer_call_and_return_conditional_losses_535270¢
²
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
annotationsª *
 zÊtrace_0
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
;__inference_character_sequential_layer_layer_call_fn_534861inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
;__inference_character_sequential_layer_layer_call_fn_534868inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
;__inference_character_sequential_layer_layer_call_fn_534875inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
;__inference_character_sequential_layer_layer_call_fn_534882inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¨B¥
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534891inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¨B¥
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534900inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¨B¥
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534910inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¨B¥
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534920inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
ó
Ðtrace_02Ô
-__inference_embedding_57_layer_call_fn_535277¢
²
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
annotationsª *
 zÐtrace_0

Ñtrace_02ï
H__inference_embedding_57_layer_call_and_return_conditional_losses_535286¢
²
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
annotationsª *
 zÑtrace_0
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
8__inference_c_type_sequential_layer_layer_call_fn_534927inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
8__inference_c_type_sequential_layer_layer_call_fn_534934inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
8__inference_c_type_sequential_layer_layer_call_fn_534941inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
8__inference_c_type_sequential_layer_layer_call_fn_534948inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534957inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534966inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534976inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¥B¢
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534986inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ònon_trainable_variables
Ólayers
Ômetrics
 Õlayer_regularization_losses
Ölayer_metrics
á	variables
âtrainable_variables
ãregularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
ó
×trace_02Ô
-__inference_embedding_58_layer_call_fn_535293¢
²
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
annotationsª *
 z×trace_0

Øtrace_02ï
H__inference_embedding_58_layer_call_and_return_conditional_losses_535302¢
²
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
annotationsª *
 zØtrace_0
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
6__inference_mode_sequential_layer_layer_call_fn_534993inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
6__inference_mode_sequential_layer_layer_call_fn_535000inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
6__inference_mode_sequential_layer_layer_call_fn_535007inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
6__inference_mode_sequential_layer_layer_call_fn_535014inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
£B 
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535023inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
£B 
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535032inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
£B 
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535042inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
£B 
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535052inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
ó
Þtrace_02Ô
-__inference_embedding_59_layer_call_fn_535309¢
²
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
annotationsª *
 zÞtrace_0

ßtrace_02ï
H__inference_embedding_59_layer_call_and_return_conditional_losses_535318¢
²
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
annotationsª *
 zßtrace_0
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
9__inference_ranking_sequential_layer_layer_call_fn_535059inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
9__inference_ranking_sequential_layer_layer_call_fn_535066inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
9__inference_ranking_sequential_layer_layer_call_fn_535073inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
B
9__inference_ranking_sequential_layer_layer_call_fn_535080inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535089inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535098inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535108inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦B£
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535118inputs"À
·²³
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
kwonlydefaultsª 
annotationsª *
 
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
ÝBÚ
)__inference_dense_15_layer_call_fn_535127inputs"¢
²
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
annotationsª *
 
øBõ
D__inference_dense_15_layer_call_and_return_conditional_losses_535138inputs"¢
²
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
annotationsª *
 
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
ÝBÚ
)__inference_dense_16_layer_call_fn_535147inputs"¢
²
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
annotationsª *
 
øBõ
D__inference_dense_16_layer_call_and_return_conditional_losses_535158inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_50_layer_call_fn_535165inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_50_layer_call_and_return_conditional_losses_535174inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_51_layer_call_fn_535181inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_51_layer_call_and_return_conditional_losses_535190inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_52_layer_call_fn_535197inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_52_layer_call_and_return_conditional_losses_535206inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_53_layer_call_fn_535213inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_53_layer_call_and_return_conditional_losses_535222inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_54_layer_call_fn_535229inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_54_layer_call_and_return_conditional_losses_535238inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_55_layer_call_fn_535245inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_55_layer_call_and_return_conditional_losses_535254inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_56_layer_call_fn_535261inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_56_layer_call_and_return_conditional_losses_535270inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_57_layer_call_fn_535277inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_57_layer_call_and_return_conditional_losses_535286inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_58_layer_call_fn_535293inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_58_layer_call_and_return_conditional_losses_535302inputs"¢
²
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
annotationsª *
 
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
áBÞ
-__inference_embedding_59_layer_call_fn_535309inputs"¢
²
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
annotationsª *
 
üBù
H__inference_embedding_59_layer_call_and_return_conditional_losses_535318inputs"¢
²
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
annotationsª *
 
.:,4 2Adam/embedding_52/embeddings/m
.:, 2Adam/embedding_57/embeddings/m
.:,! 2Adam/embedding_56/embeddings/m
.:, 2Adam/embedding_53/embeddings/m
0:.
÷É 2Adam/embedding_51/embeddings/m
.:,4 2Adam/embedding_54/embeddings/m
/:-	¡ 2Adam/embedding_55/embeddings/m
.:, 2Adam/embedding_58/embeddings/m
/:-	À 2Adam/embedding_59/embeddings/m
0:.
øÉ 2Adam/embedding_50/embeddings/m
3:1
ÀÀ2!Adam/dcn_5/cross_5/dense/kernel/m
,:*À2Adam/dcn_5/cross_5/dense/bias/m
.:,
ÀÀ2Adam/dcn_5/dense_15/kernel/m
':%À2Adam/dcn_5/dense_15/bias/m
.:,
ÀÀ2Adam/dcn_5/dense_16/kernel/m
':%À2Adam/dcn_5/dense_16/bias/m
-:+	À2Adam/dcn_5/dense_17/kernel/m
&:$2Adam/dcn_5/dense_17/bias/m
.:,4 2Adam/embedding_52/embeddings/v
.:, 2Adam/embedding_57/embeddings/v
.:,! 2Adam/embedding_56/embeddings/v
.:, 2Adam/embedding_53/embeddings/v
0:.
÷É 2Adam/embedding_51/embeddings/v
.:,4 2Adam/embedding_54/embeddings/v
/:-	¡ 2Adam/embedding_55/embeddings/v
.:, 2Adam/embedding_58/embeddings/v
/:-	À 2Adam/embedding_59/embeddings/v
0:.
øÉ 2Adam/embedding_50/embeddings/v
3:1
ÀÀ2!Adam/dcn_5/cross_5/dense/kernel/v
,:*À2Adam/dcn_5/cross_5/dense/bias/v
.:,
ÀÀ2Adam/dcn_5/dense_15/kernel/v
':%À2Adam/dcn_5/dense_15/bias/v
.:,
ÀÀ2Adam/dcn_5/dense_16/kernel/v
':%À2Adam/dcn_5/dense_16/bias/v
-:+	À2Adam/dcn_5/dense_17/kernel/v
&:$2Adam/dcn_5/dense_17/bias/v³
!__inference__wrapped_model_532684 !"Á¢½
µ¢±
®ªª
 
age
ageÿÿÿÿÿÿÿÿÿ
&
c_type
c_typeÿÿÿÿÿÿÿÿÿ
,
	character
	characterÿÿÿÿÿÿÿÿÿ
&
gender
genderÿÿÿÿÿÿÿÿÿ
4
interacted_id# 
interacted_idÿÿÿÿÿÿÿÿÿ
*
language
languageÿÿÿÿÿÿÿÿÿ
.

login_time 

login_timeÿÿÿÿÿÿÿÿÿ
"
mode
modeÿÿÿÿÿÿÿÿÿ
(
ranking
rankingÿÿÿÿÿÿÿÿÿ
(
user_id
user_idÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ³
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534627_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ³
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534636_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ³
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534646_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ³
P__inference_age_sequential_layer_layer_call_and_return_conditional_losses_534656_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
5__inference_age_sequential_layer_layer_call_fn_534597R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
5__inference_age_sequential_layer_layer_call_fn_534604R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
5__inference_age_sequential_layer_layer_call_fn_534611R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
5__inference_age_sequential_layer_layer_call_fn_534618R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ¶
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534957_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534966_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534976_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
S__inference_c_type_sequential_layer_layer_call_and_return_conditional_losses_534986_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
8__inference_c_type_sequential_layer_layer_call_fn_534927R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
8__inference_c_type_sequential_layer_layer_call_fn_534934R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
8__inference_c_type_sequential_layer_layer_call_fn_534941R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
8__inference_c_type_sequential_layer_layer_call_fn_534948R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ¹
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534891_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¹
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534900_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¹
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534910_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¹
V__inference_character_sequential_layer_layer_call_and_return_conditional_losses_534920_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
;__inference_character_sequential_layer_layer_call_fn_534861R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
;__inference_character_sequential_layer_layer_call_fn_534868R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
;__inference_character_sequential_layer_layer_call_fn_534875R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
;__inference_character_sequential_layer_layer_call_fn_534882R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ¥
C__inference_cross_5_layer_call_and_return_conditional_losses_534439^0¢-
&¢#

x0ÿÿÿÿÿÿÿÿÿÀ

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 }
(__inference_cross_5_layer_call_fn_534427Q0¢-
&¢#

x0ÿÿÿÿÿÿÿÿÿÀ

 
ª "ÿÿÿÿÿÿÿÿÿÀÉ
A__inference_dcn_5_layer_call_and_return_conditional_losses_533989 !"Å¢Á
¹¢µ
®ªª
 
age
ageÿÿÿÿÿÿÿÿÿ
&
c_type
c_typeÿÿÿÿÿÿÿÿÿ
,
	character
	characterÿÿÿÿÿÿÿÿÿ
&
gender
genderÿÿÿÿÿÿÿÿÿ
4
interacted_id# 
interacted_idÿÿÿÿÿÿÿÿÿ
*
language
languageÿÿÿÿÿÿÿÿÿ
.

login_time 

login_timeÿÿÿÿÿÿÿÿÿ
"
mode
modeÿÿÿÿÿÿÿÿÿ
(
ranking
rankingÿÿÿÿÿÿÿÿÿ
(
user_id
user_idÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
A__inference_dcn_5_layer_call_and_return_conditional_losses_534054 !"Å¢Á
¹¢µ
®ªª
 
age
ageÿÿÿÿÿÿÿÿÿ
&
c_type
c_typeÿÿÿÿÿÿÿÿÿ
,
	character
	characterÿÿÿÿÿÿÿÿÿ
&
gender
genderÿÿÿÿÿÿÿÿÿ
4
interacted_id# 
interacted_idÿÿÿÿÿÿÿÿÿ
*
language
languageÿÿÿÿÿÿÿÿÿ
.

login_time 

login_timeÿÿÿÿÿÿÿÿÿ
"
mode
modeÿÿÿÿÿÿÿÿÿ
(
ranking
rankingÿÿÿÿÿÿÿÿÿ
(
user_id
user_idÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 £
A__inference_dcn_5_layer_call_and_return_conditional_losses_534315Ý !"¢
¢
ª
)
age"
features/ageÿÿÿÿÿÿÿÿÿ
/
c_type%"
features/c_typeÿÿÿÿÿÿÿÿÿ
5
	character(%
features/characterÿÿÿÿÿÿÿÿÿ
/
gender%"
features/genderÿÿÿÿÿÿÿÿÿ
=
interacted_id,)
features/interacted_idÿÿÿÿÿÿÿÿÿ
3
language'$
features/languageÿÿÿÿÿÿÿÿÿ
7

login_time)&
features/login_timeÿÿÿÿÿÿÿÿÿ
+
mode# 
features/modeÿÿÿÿÿÿÿÿÿ
1
ranking&#
features/rankingÿÿÿÿÿÿÿÿÿ
1
user_id&#
features/user_idÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 £
A__inference_dcn_5_layer_call_and_return_conditional_losses_534418Ý !"¢
¢
ª
)
age"
features/ageÿÿÿÿÿÿÿÿÿ
/
c_type%"
features/c_typeÿÿÿÿÿÿÿÿÿ
5
	character(%
features/characterÿÿÿÿÿÿÿÿÿ
/
gender%"
features/genderÿÿÿÿÿÿÿÿÿ
=
interacted_id,)
features/interacted_idÿÿÿÿÿÿÿÿÿ
3
language'$
features/languageÿÿÿÿÿÿÿÿÿ
7

login_time)&
features/login_timeÿÿÿÿÿÿÿÿÿ
+
mode# 
features/modeÿÿÿÿÿÿÿÿÿ
1
ranking&#
features/rankingÿÿÿÿÿÿÿÿÿ
1
user_id&#
features/user_idÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
&__inference_dcn_5_layer_call_fn_533429ö !"Å¢Á
¹¢µ
®ªª
 
age
ageÿÿÿÿÿÿÿÿÿ
&
c_type
c_typeÿÿÿÿÿÿÿÿÿ
,
	character
	characterÿÿÿÿÿÿÿÿÿ
&
gender
genderÿÿÿÿÿÿÿÿÿ
4
interacted_id# 
interacted_idÿÿÿÿÿÿÿÿÿ
*
language
languageÿÿÿÿÿÿÿÿÿ
.

login_time 

login_timeÿÿÿÿÿÿÿÿÿ
"
mode
modeÿÿÿÿÿÿÿÿÿ
(
ranking
rankingÿÿÿÿÿÿÿÿÿ
(
user_id
user_idÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ¡
&__inference_dcn_5_layer_call_fn_533924ö !"Å¢Á
¹¢µ
®ªª
 
age
ageÿÿÿÿÿÿÿÿÿ
&
c_type
c_typeÿÿÿÿÿÿÿÿÿ
,
	character
	characterÿÿÿÿÿÿÿÿÿ
&
gender
genderÿÿÿÿÿÿÿÿÿ
4
interacted_id# 
interacted_idÿÿÿÿÿÿÿÿÿ
*
language
languageÿÿÿÿÿÿÿÿÿ
.

login_time 

login_timeÿÿÿÿÿÿÿÿÿ
"
mode
modeÿÿÿÿÿÿÿÿÿ
(
ranking
rankingÿÿÿÿÿÿÿÿÿ
(
user_id
user_idÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿû
&__inference_dcn_5_layer_call_fn_534162Ð !"¢
¢
ª
)
age"
features/ageÿÿÿÿÿÿÿÿÿ
/
c_type%"
features/c_typeÿÿÿÿÿÿÿÿÿ
5
	character(%
features/characterÿÿÿÿÿÿÿÿÿ
/
gender%"
features/genderÿÿÿÿÿÿÿÿÿ
=
interacted_id,)
features/interacted_idÿÿÿÿÿÿÿÿÿ
3
language'$
features/languageÿÿÿÿÿÿÿÿÿ
7

login_time)&
features/login_timeÿÿÿÿÿÿÿÿÿ
+
mode# 
features/modeÿÿÿÿÿÿÿÿÿ
1
ranking&#
features/rankingÿÿÿÿÿÿÿÿÿ
1
user_id&#
features/user_idÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿû
&__inference_dcn_5_layer_call_fn_534212Ð !"¢
¢
ª
)
age"
features/ageÿÿÿÿÿÿÿÿÿ
/
c_type%"
features/c_typeÿÿÿÿÿÿÿÿÿ
5
	character(%
features/characterÿÿÿÿÿÿÿÿÿ
/
gender%"
features/genderÿÿÿÿÿÿÿÿÿ
=
interacted_id,)
features/interacted_idÿÿÿÿÿÿÿÿÿ
3
language'$
features/languageÿÿÿÿÿÿÿÿÿ
7

login_time)&
features/login_timeÿÿÿÿÿÿÿÿÿ
+
mode# 
features/modeÿÿÿÿÿÿÿÿÿ
1
ranking&#
features/rankingÿÿÿÿÿÿÿÿÿ
1
user_id&#
features/user_idÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¦
D__inference_dense_15_layer_call_and_return_conditional_losses_535138^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 ~
)__inference_dense_15_layer_call_fn_535127Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿÀ¦
D__inference_dense_16_layer_call_and_return_conditional_losses_535158^ 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 ~
)__inference_dense_16_layer_call_fn_535147Q 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿÀ¥
D__inference_dense_17_layer_call_and_return_conditional_losses_534458]!"0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_17_layer_call_fn_534448P!"0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ£
H__inference_embedding_50_layer_call_and_return_conditional_losses_535174W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_50_layer_call_fn_535165J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_51_layer_call_and_return_conditional_losses_535190W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_51_layer_call_fn_535181J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_52_layer_call_and_return_conditional_losses_535206W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_52_layer_call_fn_535197J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_53_layer_call_and_return_conditional_losses_535222W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_53_layer_call_fn_535213J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_54_layer_call_and_return_conditional_losses_535238W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_54_layer_call_fn_535229J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_55_layer_call_and_return_conditional_losses_535254W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_55_layer_call_fn_535245J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_56_layer_call_and_return_conditional_losses_535270W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_56_layer_call_fn_535261J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_57_layer_call_and_return_conditional_losses_535286W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_57_layer_call_fn_535277J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_58_layer_call_and_return_conditional_losses_535302W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_58_layer_call_fn_535293J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ £
H__inference_embedding_59_layer_call_and_return_conditional_losses_535318W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
-__inference_embedding_59_layer_call_fn_535309J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ ¶
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534693_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534702_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534712_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
S__inference_gender_sequential_layer_layer_call_and_return_conditional_losses_534722_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
8__inference_gender_sequential_layer_layer_call_fn_534663R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
8__inference_gender_sequential_layer_layer_call_fn_534670R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
8__inference_gender_sequential_layer_layer_call_fn_534677R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
8__inference_gender_sequential_layer_layer_call_fn_534684R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ½
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534561_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ½
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534570_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ½
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534580_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ½
Z__inference_interacted_id_sequential_layer_layer_call_and_return_conditional_losses_534590_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
?__inference_interacted_id_sequential_layer_layer_call_fn_534531R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
?__inference_interacted_id_sequential_layer_layer_call_fn_534538R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
?__inference_interacted_id_sequential_layer_layer_call_fn_534545R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
?__inference_interacted_id_sequential_layer_layer_call_fn_534552R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ¸
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534759_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¸
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534768_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¸
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534778_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¸
U__inference_language_sequential_layer_layer_call_and_return_conditional_losses_534788_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
:__inference_language_sequential_layer_layer_call_fn_534729R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
:__inference_language_sequential_layer_layer_call_fn_534736R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
:__inference_language_sequential_layer_layer_call_fn_534743R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
:__inference_language_sequential_layer_layer_call_fn_534750R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ º
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534825_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 º
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534834_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 º
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534844_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 º
W__inference_login_time_sequential_layer_layer_call_and_return_conditional_losses_534854_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
<__inference_login_time_sequential_layer_layer_call_fn_534795R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
<__inference_login_time_sequential_layer_layer_call_fn_534802R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
<__inference_login_time_sequential_layer_layer_call_fn_534809R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
<__inference_login_time_sequential_layer_layer_call_fn_534816R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ´
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535023_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535032_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535042_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
Q__inference_mode_sequential_layer_layer_call_and_return_conditional_losses_535052_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
6__inference_mode_sequential_layer_layer_call_fn_534993R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
6__inference_mode_sequential_layer_layer_call_fn_535000R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
6__inference_mode_sequential_layer_layer_call_fn_535007R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
6__inference_mode_sequential_layer_layer_call_fn_535014R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ·
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535089_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ·
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535098_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ·
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535108_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ·
T__inference_ranking_sequential_layer_layer_call_and_return_conditional_losses_535118_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
9__inference_ranking_sequential_layer_layer_call_fn_535059R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_ranking_sequential_layer_layer_call_fn_535066R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_ranking_sequential_layer_layer_call_fn_535073R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_ranking_sequential_layer_layer_call_fn_535080R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ ¯
$__inference_signature_wrapper_534112 !"º¢¶
¢ 
®ªª
 
age
ageÿÿÿÿÿÿÿÿÿ
&
c_type
c_typeÿÿÿÿÿÿÿÿÿ
,
	character
	characterÿÿÿÿÿÿÿÿÿ
&
gender
genderÿÿÿÿÿÿÿÿÿ
4
interacted_id# 
interacted_idÿÿÿÿÿÿÿÿÿ
*
language
languageÿÿÿÿÿÿÿÿÿ
.

login_time 

login_timeÿÿÿÿÿÿÿÿÿ
"
mode
modeÿÿÿÿÿÿÿÿÿ
(
ranking
rankingÿÿÿÿÿÿÿÿÿ
(
user_id
user_idÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ·
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534495_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ·
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534504_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ·
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534514_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ·
T__inference_user_id_sequential_layer_layer_call_and_return_conditional_losses_534524_3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
9__inference_user_id_sequential_layer_layer_call_fn_534465R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_user_id_sequential_layer_layer_call_fn_534472R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_user_id_sequential_layer_layer_call_fn_534479R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
9__inference_user_id_sequential_layer_layer_call_fn_534486R3¢0
)¢&

inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ 