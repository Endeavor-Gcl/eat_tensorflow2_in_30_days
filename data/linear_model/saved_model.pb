��
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
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
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.1.02v2.1.0-rc2-17-ge5bf8de4108��
l
linear/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
linear/w
e
linear/w/Read/ReadVariableOpReadVariableOplinear/w*
_output_shapes

:*
dtype0
h
linear/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
linear/b
a
linear/b/Read/ReadVariableOpReadVariableOplinear/b*
_output_shapes
:*
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

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�

value�
B�
 B�

�
layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
`
	w

b
	variables
trainable_variables
regularization_losses
	keras_api
 

	0

1

	0

1
 
�
	variables
non_trainable_variables
trainable_variables
regularization_losses
metrics
layer_regularization_losses

layers
 
OM
VARIABLE_VALUElinear/w1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElinear/b1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUE

	0

1

	0

1
 
�
	variables
non_trainable_variables
trainable_variables
regularization_losses
metrics
layer_regularization_losses

layers
 

0
 

0
 
 
 
 
x
	total
	count

_fn_kwargs
	variables
trainable_variables
regularization_losses
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 
 
�
	variables
non_trainable_variables
trainable_variables
regularization_losses
 metrics
!layer_regularization_losses

"layers

0
1
 
 
 

serving_default_linear_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_linear_inputlinear/wlinear/b*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8**
f%R#
!__inference_signature_wrapper_484
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelinear/w/Read/ReadVariableOplinear/b/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin

2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*%
f R
__inference__traced_save_575
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelinear/wlinear/btotalcount*
Tin	
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*(
f#R!
__inference__traced_restore_599ش
�
�
__inference_call_137

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity��MatMul/ReadVariableOp�add/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
C__inference_sequential_layer_call_and_return_conditional_losses_447
linear_input)
%linear_statefulpartitionedcall_args_1)
%linear_statefulpartitionedcall_args_2
identity��linear/StatefulPartitionedCall�
linear/StatefulPartitionedCallStatefulPartitionedCalllinear_input%linear_statefulpartitionedcall_args_1%linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4272 
linear/StatefulPartitionedCall�
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:, (
&
_user_specified_namelinear_input
�
�
(__inference_sequential_layer_call_fn_505

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
C__inference_sequential_layer_call_and_return_conditional_losses_440
linear_input)
%linear_statefulpartitionedcall_args_1)
%linear_statefulpartitionedcall_args_2
identity��linear/StatefulPartitionedCall�
linear/StatefulPartitionedCallStatefulPartitionedCalllinear_input%linear_statefulpartitionedcall_args_1%linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4272 
linear/StatefulPartitionedCall�
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:, (
&
_user_specified_namelinear_input
�
�
C__inference_sequential_layer_call_and_return_conditional_losses_491

inputs)
%linear_statefulpartitionedcall_args_1)
%linear_statefulpartitionedcall_args_2
identity��linear/StatefulPartitionedCall�
linear/StatefulPartitionedCallStatefulPartitionedCallinputs%linear_statefulpartitionedcall_args_1%linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*
fR
__inference_call_1372 
linear/StatefulPartitionedCall�
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
(__inference_sequential_layer_call_fn_476
linear_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllinear_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:, (
&
_user_specified_namelinear_input
�
�
C__inference_sequential_layer_call_and_return_conditional_losses_498

inputs)
%linear_statefulpartitionedcall_args_1)
%linear_statefulpartitionedcall_args_2
identity��linear/StatefulPartitionedCall�
linear/StatefulPartitionedCallStatefulPartitionedCallinputs%linear_statefulpartitionedcall_args_1%linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*
fR
__inference_call_1372 
linear/StatefulPartitionedCall�
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
!__inference_signature_wrapper_484
linear_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllinear_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*'
f"R 
__inference__wrapped_model_4132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:, (
&
_user_specified_namelinear_input
�
�
C__inference_sequential_layer_call_and_return_conditional_losses_471

inputs)
%linear_statefulpartitionedcall_args_1)
%linear_statefulpartitionedcall_args_2
identity��linear/StatefulPartitionedCall�
linear/StatefulPartitionedCallStatefulPartitionedCallinputs%linear_statefulpartitionedcall_args_1%linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4272 
linear/StatefulPartitionedCall�
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
(__inference_sequential_layer_call_fn_462
linear_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllinear_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:, (
&
_user_specified_namelinear_input
�
�
__inference__traced_save_575
file_prefix'
#savev2_linear_w_read_readvariableop'
#savev2_linear_b_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_9169d78695924a00855f6b7e981e9bec/part2
StringJoin/inputs_1�

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_linear_w_read_readvariableop#savev2_linear_b_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2�
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1�
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names�
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity�

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
: ::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix
�
�
C__inference_sequential_layer_call_and_return_conditional_losses_457

inputs)
%linear_statefulpartitionedcall_args_1)
%linear_statefulpartitionedcall_args_2
identity��linear/StatefulPartitionedCall�
linear/StatefulPartitionedCallStatefulPartitionedCallinputs%linear_statefulpartitionedcall_args_1%linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4272 
linear/StatefulPartitionedCall�
IdentityIdentity'linear/StatefulPartitionedCall:output:0^linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2@
linear/StatefulPartitionedCalllinear/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
__inference_call_539

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity��MatMul/ReadVariableOp�add/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
__inference__traced_restore_599
file_prefix
assignvariableop_linear_w
assignvariableop_1_linear_b
assignvariableop_2_total
assignvariableop_3_count

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_linear_wIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_linear_bIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_totalIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_countIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3�
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names�
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4�

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*%
_input_shapes
: ::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix
�
�
__inference__wrapped_model_413
linear_input4
0sequential_linear_statefulpartitionedcall_args_14
0sequential_linear_statefulpartitionedcall_args_2
identity��)sequential/linear/StatefulPartitionedCall�
)sequential/linear/StatefulPartitionedCallStatefulPartitionedCalllinear_input0sequential_linear_statefulpartitionedcall_args_10sequential_linear_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*
fR
__inference_call_1372+
)sequential/linear/StatefulPartitionedCall�
IdentityIdentity2sequential/linear/StatefulPartitionedCall:output:0*^sequential/linear/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2V
)sequential/linear/StatefulPartitionedCall)sequential/linear/StatefulPartitionedCall:, (
&
_user_specified_namelinear_input
�
�
?__inference_linear_layer_call_and_return_conditional_losses_427

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity��MatMul/ReadVariableOp�add/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
?__inference_linear_layer_call_and_return_conditional_losses_522

inputs"
matmul_readvariableop_resource
add_readvariableop_resource
identity��MatMul/ReadVariableOp�add/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^MatMul/ReadVariableOp^add/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:& "
 
_user_specified_nameinputs
�
�
$__inference_linear_layer_call_fn_529

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_linear_layer_call_and_return_conditional_losses_4272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
�
�
(__inference_sequential_layer_call_fn_512

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:���������**
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_4712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
linear_input5
serving_default_linear_input:0���������:
linear0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�A
�	
layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
#__call__
$_default_save_signature
*%&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential", "layers": [{"class_name": "Linear", "config": {"name": "linear", "trainable": true, "batch_input_shape": [null, 2], "dtype": "float32", "units": 1}}]}, "is_graph_network": true, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "Linear", "config": {"name": "linear", "trainable": true, "batch_input_shape": [null, 2], "dtype": "float32", "units": 1}}]}}, "training_config": {"loss": "mse", "metrics": ["mae"], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.01, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "linear_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": [null, 2], "config": {"batch_input_shape": [null, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "linear_input"}}
�
	w

b
	variables
trainable_variables
regularization_losses
	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(call"�
_tf_keras_layer�{"class_name": "Linear", "name": "linear", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 2], "config": {"name": "linear", "trainable": true, "batch_input_shape": [null, 2], "dtype": "float32", "units": 1}}
"
	optimizer
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
non_trainable_variables
trainable_variables
regularization_losses
metrics
layer_regularization_losses

layers
#__call__
$_default_save_signature
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
,
)serving_default"
signature_map
:2linear/w
:2linear/b
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
non_trainable_variables
trainable_variables
regularization_losses
metrics
layer_regularization_losses

layers
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	total
	count

_fn_kwargs
	variables
trainable_variables
regularization_losses
	keras_api
*__call__
*+&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MeanMetricWrapper", "name": "mae", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "mae", "dtype": "float32"}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
non_trainable_variables
trainable_variables
regularization_losses
 metrics
!layer_regularization_losses

"layers
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
(__inference_sequential_layer_call_fn_512
(__inference_sequential_layer_call_fn_462
(__inference_sequential_layer_call_fn_505
(__inference_sequential_layer_call_fn_476�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference__wrapped_model_413�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *+�(
&�#
linear_input���������
�2�
C__inference_sequential_layer_call_and_return_conditional_losses_440
C__inference_sequential_layer_call_and_return_conditional_losses_498
C__inference_sequential_layer_call_and_return_conditional_losses_491
C__inference_sequential_layer_call_and_return_conditional_losses_447�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
$__inference_linear_layer_call_fn_529�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_linear_layer_call_and_return_conditional_losses_522�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_call_539�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5B3
!__inference_signature_wrapper_484linear_input
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 �
__inference__wrapped_model_413l	
5�2
+�(
&�#
linear_input���������
� "/�,
*
linear �
linear���������g
__inference_call_539O	
/�,
%�"
 �
inputs���������
� "�����������
?__inference_linear_layer_call_and_return_conditional_losses_522\	
/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� w
$__inference_linear_layer_call_fn_529O	
/�,
%�"
 �
inputs���������
� "�����������
C__inference_sequential_layer_call_and_return_conditional_losses_440j	
=�:
3�0
&�#
linear_input���������
p

 
� "%�"
�
0���������
� �
C__inference_sequential_layer_call_and_return_conditional_losses_447j	
=�:
3�0
&�#
linear_input���������
p 

 
� "%�"
�
0���������
� �
C__inference_sequential_layer_call_and_return_conditional_losses_491d	
7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
C__inference_sequential_layer_call_and_return_conditional_losses_498d	
7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
(__inference_sequential_layer_call_fn_462]	
=�:
3�0
&�#
linear_input���������
p

 
� "�����������
(__inference_sequential_layer_call_fn_476]	
=�:
3�0
&�#
linear_input���������
p 

 
� "�����������
(__inference_sequential_layer_call_fn_505W	
7�4
-�*
 �
inputs���������
p

 
� "�����������
(__inference_sequential_layer_call_fn_512W	
7�4
-�*
 �
inputs���������
p 

 
� "�����������
!__inference_signature_wrapper_484|	
E�B
� 
;�8
6
linear_input&�#
linear_input���������"/�,
*
linear �
linear���������