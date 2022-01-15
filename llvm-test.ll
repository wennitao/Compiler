%class.Edge = type { i32, i32, i32 }
%class.EdgeList = type { %class.Edge**, i32*, i32*, i32, i32, %class.Edge* }
%class.Array_Node = type { %class.Node**, i32, %class.Node*, %class.Node**, i32 }
%class.Heap_Node = type { %class.Array_Node*, i32, i32, %class.Node*, i32, i32, i32 }
@fuckLLVM_n = global i32 0
@fuckLLVM_m = global i32 0
@fuckLLVM_g = global %class.EdgeList* null
@fuckLLVM_INF = global i32 10000000
%class.Node = type { i32, i32 }
@fuckLLVM_.str.0 = private constant [3 x i8] c"-1\00"
@fuckLLVM_.str.1 = private constant [2 x i8] c" \00"
@fuckLLVM_.str.2 = private constant [1 x i8] c"\00"

declare void @print(i8* %fuckLLVM_0)
declare void @println(i8* %fuckLLVM_0)
declare void @printInt(i32 %fuckLLVM_0)
declare void @printlnInt(i32 %fuckLLVM_0)
declare i8* @getString()
declare i32 @getInt()
declare i8* @toString(i32 %fuckLLVM_0)
declare i32 @size(i8* %fuckLLVM_0)
declare i32 @length(i8* %fuckLLVM_0)
declare i8* @substring(i8* %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2)
declare i32 @parseInt(i8* %fuckLLVM_0)
declare i32 @ord(i8* %fuckLLVM_0, i32 %fuckLLVM_1)
declare i8* @string_add(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_equal(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_notEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_less(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_lessEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greater(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greaterEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i8* @malloc(i64 %fuckLLVM_0)
define void @__init() {
__init_entry: 
  br label %__init_return

__init_return: 
  ret void
}
define void @Edge(%class.Edge* %fuckLLVM_0) {
Edge: 
  %fuckLLVM_1 = alloca %class.Edge*
  store %class.Edge* %fuckLLVM_0, %class.Edge** %fuckLLVM_1
  br label %Edge_return

Edge_return: 
  ret void
}
define void @EdgeList(%class.EdgeList* %fuckLLVM_0) {
EdgeList: 
  %fuckLLVM_1 = alloca %class.EdgeList*
  store %class.EdgeList* %fuckLLVM_0, %class.EdgeList** %fuckLLVM_1
  br label %EdgeList_return

EdgeList_return: 
  ret void
}
define void @classEdgeList_init(%class.EdgeList* %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2) {
init_entry: 
  %fuckLLVM_3 = alloca %class.EdgeList*
  store %class.EdgeList* %fuckLLVM_0, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_4
  %fuckLLVM_5 = alloca i32
  store i32 %fuckLLVM_2, i32* %fuckLLVM_5
  %fuckLLVM_7 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_8 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_7, i32 0, i32 0
  %fuckLLVM_9 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_10 = zext i32 %fuckLLVM_9 to i64
  %fuckLLVM_11 = mul i64 %fuckLLVM_10, 12
  %fuckLLVM_12 = add i64 %fuckLLVM_11, 4
  %fuckLLVM_13 = call i8* @malloc(i64 %fuckLLVM_12)
  %fuckLLVM_14 = bitcast i8* %fuckLLVM_13 to i32*
  store i32 %fuckLLVM_9, i32* %fuckLLVM_14
  %fuckLLVM_15 = getelementptr inbounds i32, i32* %fuckLLVM_14, i32 1
  %fuckLLVM_16 = bitcast i32* %fuckLLVM_15 to %class.Edge**
  %fuckLLVM_17 = bitcast %class.Edge** %fuckLLVM_16 to %class.Edge**
  store %class.Edge** %fuckLLVM_17, %class.Edge*** %fuckLLVM_8
  %fuckLLVM_18 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_19 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_18, i32 0, i32 1
  %fuckLLVM_20 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_21 = zext i32 %fuckLLVM_20 to i64
  %fuckLLVM_22 = mul i64 %fuckLLVM_21, 4
  %fuckLLVM_23 = add i64 %fuckLLVM_22, 4
  %fuckLLVM_24 = call i8* @malloc(i64 %fuckLLVM_23)
  %fuckLLVM_25 = bitcast i8* %fuckLLVM_24 to i32*
  store i32 %fuckLLVM_20, i32* %fuckLLVM_25
  %fuckLLVM_26 = getelementptr inbounds i32, i32* %fuckLLVM_25, i32 1
  %fuckLLVM_27 = bitcast i32* %fuckLLVM_26 to i32*
  %fuckLLVM_28 = bitcast i32* %fuckLLVM_27 to i32*
  store i32* %fuckLLVM_28, i32** %fuckLLVM_19
  %fuckLLVM_29 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_30 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_29, i32 0, i32 2
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_32 = zext i32 %fuckLLVM_31 to i64
  %fuckLLVM_33 = mul i64 %fuckLLVM_32, 4
  %fuckLLVM_34 = add i64 %fuckLLVM_33, 4
  %fuckLLVM_35 = call i8* @malloc(i64 %fuckLLVM_34)
  %fuckLLVM_36 = bitcast i8* %fuckLLVM_35 to i32*
  store i32 %fuckLLVM_31, i32* %fuckLLVM_36
  %fuckLLVM_37 = getelementptr inbounds i32, i32* %fuckLLVM_36, i32 1
  %fuckLLVM_38 = bitcast i32* %fuckLLVM_37 to i32*
  %fuckLLVM_39 = bitcast i32* %fuckLLVM_38 to i32*
  store i32* %fuckLLVM_39, i32** %fuckLLVM_30
  %fuckLLVM_40 = alloca i32
  store i32 0, i32* %fuckLLVM_40
  br label %ID40_for_condition

ID40_for_condition: 
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_40
  %fuckLLVM_42 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_43 = icmp slt i32 %fuckLLVM_41, %fuckLLVM_42
  br i1 %fuckLLVM_43, label %ID40_for_suite, label %ID40_for_out

ID40_for_suite: 
  %fuckLLVM_44 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_45 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_44, i32 0, i32 1
  %fuckLLVM_46 = load i32*, i32** %fuckLLVM_45
  %fuckLLVM_47 = load i32, i32* %fuckLLVM_40
  %fuckLLVM_48 = getelementptr inbounds i32, i32* %fuckLLVM_46, i32 %fuckLLVM_47
  %fuckLLVM_49 = sub i32 0, 1
  store i32 %fuckLLVM_49, i32* %fuckLLVM_48
  br label %ID40_for_incr

ID40_for_incr: 
  %fuckLLVM_50 = load i32, i32* %fuckLLVM_40
  %fuckLLVM_51 = add i32 %fuckLLVM_50, 1
  store i32 %fuckLLVM_51, i32* %fuckLLVM_40
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_40
  br label %ID40_for_condition

ID40_for_out: 
  store i32 0, i32* %fuckLLVM_40
  br label %ID52_for_condition

ID52_for_condition: 
  %fuckLLVM_53 = load i32, i32* %fuckLLVM_40
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_55 = icmp slt i32 %fuckLLVM_53, %fuckLLVM_54
  br i1 %fuckLLVM_55, label %ID52_for_suite, label %ID52_for_out

ID52_for_suite: 
  %fuckLLVM_56 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_57 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_56, i32 0, i32 2
  %fuckLLVM_58 = load i32*, i32** %fuckLLVM_57
  %fuckLLVM_59 = load i32, i32* %fuckLLVM_40
  %fuckLLVM_60 = getelementptr inbounds i32, i32* %fuckLLVM_58, i32 %fuckLLVM_59
  %fuckLLVM_61 = sub i32 0, 1
  store i32 %fuckLLVM_61, i32* %fuckLLVM_60
  br label %ID52_for_incr

ID52_for_incr: 
  %fuckLLVM_62 = load i32, i32* %fuckLLVM_40
  %fuckLLVM_63 = add i32 %fuckLLVM_62, 1
  store i32 %fuckLLVM_63, i32* %fuckLLVM_40
  %fuckLLVM_64 = load i32, i32* %fuckLLVM_40
  br label %ID52_for_condition

ID52_for_out: 
  %fuckLLVM_65 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_3
  %fuckLLVM_66 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_65, i32 0, i32 3
  store i32 0, i32* %fuckLLVM_66
  br label %classEdgeList_init_return

classEdgeList_init_return: 
  ret void
}
define void @classEdgeList_addEdge(%class.EdgeList* %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2, i32 %fuckLLVM_3) {
addEdge_entry: 
  %fuckLLVM_4 = alloca %class.EdgeList*
  store %class.EdgeList* %fuckLLVM_0, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_5 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_5
  %fuckLLVM_6 = alloca i32
  store i32 %fuckLLVM_2, i32* %fuckLLVM_6
  %fuckLLVM_7 = alloca i32
  store i32 %fuckLLVM_3, i32* %fuckLLVM_7
  %fuckLLVM_9 = alloca %class.Edge*
  %fuckLLVM_10 = call i8* @malloc(i64 12)
  %fuckLLVM_11 = bitcast i8* %fuckLLVM_10 to %class.Edge*
  call void @Edge(%class.Edge* %fuckLLVM_11)
  %fuckLLVM_12 = bitcast %class.Edge* %fuckLLVM_11 to %class.Edge*
  store %class.Edge* %fuckLLVM_12, %class.Edge** %fuckLLVM_9
  %fuckLLVM_13 = load %class.Edge*, %class.Edge** %fuckLLVM_9
  %fuckLLVM_14 = getelementptr inbounds %class.Edge, %class.Edge* %fuckLLVM_13, i32 0, i32 0
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_5
  store i32 %fuckLLVM_15, i32* %fuckLLVM_14
  %fuckLLVM_16 = load %class.Edge*, %class.Edge** %fuckLLVM_9
  %fuckLLVM_17 = getelementptr inbounds %class.Edge, %class.Edge* %fuckLLVM_16, i32 0, i32 1
  %fuckLLVM_18 = load i32, i32* %fuckLLVM_6
  store i32 %fuckLLVM_18, i32* %fuckLLVM_17
  %fuckLLVM_19 = load %class.Edge*, %class.Edge** %fuckLLVM_9
  %fuckLLVM_20 = getelementptr inbounds %class.Edge, %class.Edge* %fuckLLVM_19, i32 0, i32 2
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_7
  store i32 %fuckLLVM_21, i32* %fuckLLVM_20
  %fuckLLVM_22 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_23 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_22, i32 0, i32 0
  %fuckLLVM_24 = load %class.Edge**, %class.Edge*** %fuckLLVM_23
  %fuckLLVM_25 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_26 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_25, i32 0, i32 3
  %fuckLLVM_27 = load i32, i32* %fuckLLVM_26
  %fuckLLVM_28 = getelementptr inbounds %class.Edge*, %class.Edge** %fuckLLVM_24, i32 %fuckLLVM_27
  %fuckLLVM_29 = load %class.Edge*, %class.Edge** %fuckLLVM_9
  %fuckLLVM_30 = bitcast %class.Edge* %fuckLLVM_29 to %class.Edge*
  store %class.Edge* %fuckLLVM_30, %class.Edge** %fuckLLVM_28
  %fuckLLVM_31 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_32 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_31, i32 0, i32 1
  %fuckLLVM_33 = load i32*, i32** %fuckLLVM_32
  %fuckLLVM_34 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_35 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_34, i32 0, i32 3
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_35
  %fuckLLVM_37 = getelementptr inbounds i32, i32* %fuckLLVM_33, i32 %fuckLLVM_36
  %fuckLLVM_38 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_39 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_38, i32 0, i32 2
  %fuckLLVM_40 = load i32*, i32** %fuckLLVM_39
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_42 = getelementptr inbounds i32, i32* %fuckLLVM_40, i32 %fuckLLVM_41
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_42
  store i32 %fuckLLVM_43, i32* %fuckLLVM_37
  %fuckLLVM_44 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_45 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_44, i32 0, i32 2
  %fuckLLVM_46 = load i32*, i32** %fuckLLVM_45
  %fuckLLVM_47 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_48 = getelementptr inbounds i32, i32* %fuckLLVM_46, i32 %fuckLLVM_47
  %fuckLLVM_49 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_50 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_49, i32 0, i32 3
  %fuckLLVM_51 = load i32, i32* %fuckLLVM_50
  store i32 %fuckLLVM_51, i32* %fuckLLVM_48
  %fuckLLVM_52 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_4
  %fuckLLVM_53 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_52, i32 0, i32 3
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_53
  %fuckLLVM_55 = add i32 %fuckLLVM_54, 1
  store i32 %fuckLLVM_55, i32* %fuckLLVM_53
  %fuckLLVM_56 = load i32, i32* %fuckLLVM_53
  br label %classEdgeList_addEdge_return

classEdgeList_addEdge_return: 
  ret void
}
define i32 @classEdgeList_nVertices(%class.EdgeList* %fuckLLVM_0) {
nVertices_entry: 
  %fuckLLVM_1 = alloca %class.EdgeList*
  store %class.EdgeList* %fuckLLVM_0, %class.EdgeList** %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_3, i32 0, i32 2
  %fuckLLVM_5 = load i32*, i32** %fuckLLVM_4
  %fuckLLVM_6 = bitcast i32* %fuckLLVM_5 to i32*
  %fuckLLVM_7 = getelementptr inbounds i32, i32* %fuckLLVM_6, i8 -1
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_7
  store i32 %fuckLLVM_8, i32* %fuckLLVM_2
  br label %classEdgeList_nVertices_return
  br label %classEdgeList_nVertices_return

classEdgeList_nVertices_return: 
  %fuckLLVM_9 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_9
}
define i32 @classEdgeList_nEdges(%class.EdgeList* %fuckLLVM_0) {
nEdges_entry: 
  %fuckLLVM_1 = alloca %class.EdgeList*
  store %class.EdgeList* %fuckLLVM_0, %class.EdgeList** %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load %class.EdgeList*, %class.EdgeList** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_3, i32 0, i32 0
  %fuckLLVM_5 = load %class.Edge**, %class.Edge*** %fuckLLVM_4
  %fuckLLVM_6 = bitcast %class.Edge** %fuckLLVM_5 to i32*
  %fuckLLVM_7 = getelementptr inbounds i32, i32* %fuckLLVM_6, i8 -1
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_7
  store i32 %fuckLLVM_8, i32* %fuckLLVM_2
  br label %classEdgeList_nEdges_return
  br label %classEdgeList_nEdges_return

classEdgeList_nEdges_return: 
  %fuckLLVM_9 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_9
}
define void @Array_Node(%class.Array_Node* %fuckLLVM_0) {
Array_Node: 
  %fuckLLVM_1 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_2 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_3 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_2, i32 0, i32 1
  store i32 0, i32* %fuckLLVM_3
  %fuckLLVM_4 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_5 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_4, i32 0, i32 0
  %fuckLLVM_6 = mul i64 16, 8
  %fuckLLVM_7 = add i64 %fuckLLVM_6, 4
  %fuckLLVM_8 = call i8* @malloc(i64 %fuckLLVM_7)
  %fuckLLVM_9 = bitcast i8* %fuckLLVM_8 to i32*
  store i32 16, i32* %fuckLLVM_9
  %fuckLLVM_10 = getelementptr inbounds i32, i32* %fuckLLVM_9, i32 1
  %fuckLLVM_11 = bitcast i32* %fuckLLVM_10 to %class.Node**
  %fuckLLVM_12 = bitcast %class.Node** %fuckLLVM_11 to %class.Node**
  store %class.Node** %fuckLLVM_12, %class.Node*** %fuckLLVM_5
  br label %Array_Node_return

Array_Node_return: 
  ret void
}
define void @classArray_Node_push_back(%class.Array_Node* %fuckLLVM_0, %class.Node* %fuckLLVM_1) {
push_back_entry: 
  %fuckLLVM_2 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca %class.Node*
  store %class.Node* %fuckLLVM_1, %class.Node** %fuckLLVM_3
  %fuckLLVM_5 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_6 = call i32 @classArray_Node_size(%class.Array_Node* %fuckLLVM_5)
  %fuckLLVM_7 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_7, i32 0, i32 0
  %fuckLLVM_9 = load %class.Node**, %class.Node*** %fuckLLVM_8
  %fuckLLVM_10 = bitcast %class.Node** %fuckLLVM_9 to i32*
  %fuckLLVM_11 = getelementptr inbounds i32, i32* %fuckLLVM_10, i8 -1
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_13 = icmp eq i32 %fuckLLVM_6, %fuckLLVM_12
  br i1 %fuckLLVM_13, label %ID13_if_true, label %ID13_if_out

ID13_if_true: 
  %fuckLLVM_14 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  call void @classArray_Node_doubleStorage(%class.Array_Node* %fuckLLVM_14)
  br label %ID13_if_out

ID13_if_out: 
  %fuckLLVM_16 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_17 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_16, i32 0, i32 0
  %fuckLLVM_18 = load %class.Node**, %class.Node*** %fuckLLVM_17
  %fuckLLVM_19 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_20 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_19, i32 0, i32 1
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_20
  %fuckLLVM_22 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_18, i32 %fuckLLVM_21
  %fuckLLVM_23 = load %class.Node*, %class.Node** %fuckLLVM_3
  %fuckLLVM_24 = bitcast %class.Node* %fuckLLVM_23 to %class.Node*
  store %class.Node* %fuckLLVM_24, %class.Node** %fuckLLVM_22
  %fuckLLVM_25 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_26 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_25, i32 0, i32 1
  %fuckLLVM_27 = load i32, i32* %fuckLLVM_26
  %fuckLLVM_28 = add i32 %fuckLLVM_27, 1
  store i32 %fuckLLVM_28, i32* %fuckLLVM_26
  %fuckLLVM_29 = load i32, i32* %fuckLLVM_26
  br label %classArray_Node_push_back_return

classArray_Node_push_back_return: 
  ret void
}
define %class.Node* @classArray_Node_pop_back(%class.Array_Node* %fuckLLVM_0) {
pop_back_entry: 
  %fuckLLVM_1 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca %class.Node*
  %fuckLLVM_3 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_3, i32 0, i32 1
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_6 = sub i32 %fuckLLVM_5, 1
  store i32 %fuckLLVM_6, i32* %fuckLLVM_4
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_8 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_9 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_8, i32 0, i32 0
  %fuckLLVM_10 = load %class.Node**, %class.Node*** %fuckLLVM_9
  %fuckLLVM_11 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_12 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_11, i32 0, i32 1
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_12
  %fuckLLVM_14 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_10, i32 %fuckLLVM_13
  %fuckLLVM_15 = load %class.Node*, %class.Node** %fuckLLVM_14
  %fuckLLVM_16 = bitcast %class.Node* %fuckLLVM_15 to %class.Node*
  store %class.Node* %fuckLLVM_16, %class.Node** %fuckLLVM_2
  br label %classArray_Node_pop_back_return
  br label %classArray_Node_pop_back_return

classArray_Node_pop_back_return: 
  %fuckLLVM_17 = load %class.Node*, %class.Node** %fuckLLVM_2
  ret %class.Node* %fuckLLVM_17
}
define %class.Node* @classArray_Node_back(%class.Array_Node* %fuckLLVM_0) {
back_entry: 
  %fuckLLVM_1 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca %class.Node*
  %fuckLLVM_3 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_3, i32 0, i32 0
  %fuckLLVM_5 = load %class.Node**, %class.Node*** %fuckLLVM_4
  %fuckLLVM_6 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_7 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_6, i32 0, i32 1
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_9 = sub i32 %fuckLLVM_8, 1
  %fuckLLVM_10 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_5, i32 %fuckLLVM_9
  %fuckLLVM_11 = load %class.Node*, %class.Node** %fuckLLVM_10
  %fuckLLVM_12 = bitcast %class.Node* %fuckLLVM_11 to %class.Node*
  store %class.Node* %fuckLLVM_12, %class.Node** %fuckLLVM_2
  br label %classArray_Node_back_return
  br label %classArray_Node_back_return

classArray_Node_back_return: 
  %fuckLLVM_13 = load %class.Node*, %class.Node** %fuckLLVM_2
  ret %class.Node* %fuckLLVM_13
}
define %class.Node* @classArray_Node_front(%class.Array_Node* %fuckLLVM_0) {
front_entry: 
  %fuckLLVM_1 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca %class.Node*
  %fuckLLVM_3 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_3, i32 0, i32 0
  %fuckLLVM_5 = load %class.Node**, %class.Node*** %fuckLLVM_4
  %fuckLLVM_6 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_5, i32 0
  %fuckLLVM_7 = load %class.Node*, %class.Node** %fuckLLVM_6
  %fuckLLVM_8 = bitcast %class.Node* %fuckLLVM_7 to %class.Node*
  store %class.Node* %fuckLLVM_8, %class.Node** %fuckLLVM_2
  br label %classArray_Node_front_return
  br label %classArray_Node_front_return

classArray_Node_front_return: 
  %fuckLLVM_9 = load %class.Node*, %class.Node** %fuckLLVM_2
  ret %class.Node* %fuckLLVM_9
}
define i32 @classArray_Node_size(%class.Array_Node* %fuckLLVM_0) {
size_entry: 
  %fuckLLVM_1 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_3, i32 0, i32 1
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_4
  store i32 %fuckLLVM_5, i32* %fuckLLVM_2
  br label %classArray_Node_size_return
  br label %classArray_Node_size_return

classArray_Node_size_return: 
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_6
}
define void @classArray_Node_resize(%class.Array_Node* %fuckLLVM_0, i32 %fuckLLVM_1) {
resize_entry: 
  %fuckLLVM_2 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  br label %ID5_while_condition

ID5_while_condition: 
  %fuckLLVM_5 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_6 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_5, i32 0, i32 0
  %fuckLLVM_7 = load %class.Node**, %class.Node*** %fuckLLVM_6
  %fuckLLVM_8 = bitcast %class.Node** %fuckLLVM_7 to i32*
  %fuckLLVM_9 = getelementptr inbounds i32, i32* %fuckLLVM_8, i8 -1
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_9
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_12 = icmp slt i32 %fuckLLVM_10, %fuckLLVM_11
  br i1 %fuckLLVM_12, label %ID13_while_suite, label %ID13_while_out

ID13_while_suite: 
  %fuckLLVM_13 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  call void @classArray_Node_doubleStorage(%class.Array_Node* %fuckLLVM_13)
  br label %ID5_while_condition

ID13_while_out: 
  %fuckLLVM_15 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_16 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_15, i32 0, i32 1
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_3
  store i32 %fuckLLVM_17, i32* %fuckLLVM_16
  br label %classArray_Node_resize_return

classArray_Node_resize_return: 
  ret void
}
define %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_0, i32 %fuckLLVM_1) {
get_entry: 
  %fuckLLVM_2 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca %class.Node*
  %fuckLLVM_5 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_2
  %fuckLLVM_6 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_5, i32 0, i32 0
  %fuckLLVM_7 = load %class.Node**, %class.Node*** %fuckLLVM_6
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_9 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_7, i32 %fuckLLVM_8
  %fuckLLVM_10 = load %class.Node*, %class.Node** %fuckLLVM_9
  %fuckLLVM_11 = bitcast %class.Node* %fuckLLVM_10 to %class.Node*
  store %class.Node* %fuckLLVM_11, %class.Node** %fuckLLVM_4
  br label %classArray_Node_get_return
  br label %classArray_Node_get_return

classArray_Node_get_return: 
  %fuckLLVM_12 = load %class.Node*, %class.Node** %fuckLLVM_4
  ret %class.Node* %fuckLLVM_12
}
define void @classArray_Node_set(%class.Array_Node* %fuckLLVM_0, i32 %fuckLLVM_1, %class.Node* %fuckLLVM_2) {
set_entry: 
  %fuckLLVM_3 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_4
  %fuckLLVM_5 = alloca %class.Node*
  store %class.Node* %fuckLLVM_2, %class.Node** %fuckLLVM_5
  %fuckLLVM_7 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_8 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_7, i32 0, i32 0
  %fuckLLVM_9 = load %class.Node**, %class.Node*** %fuckLLVM_8
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_11 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_9, i32 %fuckLLVM_10
  %fuckLLVM_12 = load %class.Node*, %class.Node** %fuckLLVM_5
  %fuckLLVM_13 = bitcast %class.Node* %fuckLLVM_12 to %class.Node*
  store %class.Node* %fuckLLVM_13, %class.Node** %fuckLLVM_11
  br label %classArray_Node_set_return

classArray_Node_set_return: 
  ret void
}
define void @classArray_Node_swap(%class.Array_Node* %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2) {
swap_entry: 
  %fuckLLVM_3 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_4
  %fuckLLVM_5 = alloca i32
  store i32 %fuckLLVM_2, i32* %fuckLLVM_5
  %fuckLLVM_7 = alloca %class.Node*
  %fuckLLVM_8 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_9 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_8, i32 0, i32 0
  %fuckLLVM_10 = load %class.Node**, %class.Node*** %fuckLLVM_9
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_12 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_10, i32 %fuckLLVM_11
  %fuckLLVM_13 = load %class.Node*, %class.Node** %fuckLLVM_12
  %fuckLLVM_14 = bitcast %class.Node* %fuckLLVM_13 to %class.Node*
  store %class.Node* %fuckLLVM_14, %class.Node** %fuckLLVM_7
  %fuckLLVM_15 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_16 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_15, i32 0, i32 0
  %fuckLLVM_17 = load %class.Node**, %class.Node*** %fuckLLVM_16
  %fuckLLVM_18 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_19 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_17, i32 %fuckLLVM_18
  %fuckLLVM_20 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_21 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_20, i32 0, i32 0
  %fuckLLVM_22 = load %class.Node**, %class.Node*** %fuckLLVM_21
  %fuckLLVM_23 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_24 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_22, i32 %fuckLLVM_23
  %fuckLLVM_25 = load %class.Node*, %class.Node** %fuckLLVM_24
  %fuckLLVM_26 = bitcast %class.Node* %fuckLLVM_25 to %class.Node*
  store %class.Node* %fuckLLVM_26, %class.Node** %fuckLLVM_19
  %fuckLLVM_27 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_3
  %fuckLLVM_28 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_27, i32 0, i32 0
  %fuckLLVM_29 = load %class.Node**, %class.Node*** %fuckLLVM_28
  %fuckLLVM_30 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_31 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_29, i32 %fuckLLVM_30
  %fuckLLVM_32 = load %class.Node*, %class.Node** %fuckLLVM_7
  %fuckLLVM_33 = bitcast %class.Node* %fuckLLVM_32 to %class.Node*
  store %class.Node* %fuckLLVM_33, %class.Node** %fuckLLVM_31
  br label %classArray_Node_swap_return

classArray_Node_swap_return: 
  ret void
}
define void @classArray_Node_doubleStorage(%class.Array_Node* %fuckLLVM_0) {
doubleStorage_entry: 
  %fuckLLVM_1 = alloca %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_0, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_3 = alloca %class.Node**
  %fuckLLVM_4 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_5 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_4, i32 0, i32 0
  %fuckLLVM_6 = load %class.Node**, %class.Node*** %fuckLLVM_5
  %fuckLLVM_7 = bitcast %class.Node** %fuckLLVM_6 to %class.Node**
  store %class.Node** %fuckLLVM_7, %class.Node*** %fuckLLVM_3
  %fuckLLVM_8 = alloca i32
  %fuckLLVM_9 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_10 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_9, i32 0, i32 1
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_10
  store i32 %fuckLLVM_11, i32* %fuckLLVM_8
  %fuckLLVM_12 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_13 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_12, i32 0, i32 0
  %fuckLLVM_14 = load %class.Node**, %class.Node*** %fuckLLVM_3
  %fuckLLVM_15 = bitcast %class.Node** %fuckLLVM_14 to i32*
  %fuckLLVM_16 = getelementptr inbounds i32, i32* %fuckLLVM_15, i8 -1
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_18 = mul i32 %fuckLLVM_17, 2
  %fuckLLVM_19 = zext i32 %fuckLLVM_18 to i64
  %fuckLLVM_20 = mul i64 %fuckLLVM_19, 8
  %fuckLLVM_21 = add i64 %fuckLLVM_20, 4
  %fuckLLVM_22 = call i8* @malloc(i64 %fuckLLVM_21)
  %fuckLLVM_23 = bitcast i8* %fuckLLVM_22 to i32*
  store i32 %fuckLLVM_18, i32* %fuckLLVM_23
  %fuckLLVM_24 = getelementptr inbounds i32, i32* %fuckLLVM_23, i32 1
  %fuckLLVM_25 = bitcast i32* %fuckLLVM_24 to %class.Node**
  %fuckLLVM_26 = bitcast %class.Node** %fuckLLVM_25 to %class.Node**
  store %class.Node** %fuckLLVM_26, %class.Node*** %fuckLLVM_13
  %fuckLLVM_27 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_28 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_27, i32 0, i32 1
  store i32 0, i32* %fuckLLVM_28
  br label %ID28_for_condition

ID28_for_condition: 
  %fuckLLVM_29 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_30 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_29, i32 0, i32 1
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_30
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_8
  %fuckLLVM_33 = icmp ne i32 %fuckLLVM_31, %fuckLLVM_32
  br i1 %fuckLLVM_33, label %ID28_for_suite, label %ID28_for_out

ID28_for_suite: 
  %fuckLLVM_34 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_35 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_34, i32 0, i32 0
  %fuckLLVM_36 = load %class.Node**, %class.Node*** %fuckLLVM_35
  %fuckLLVM_37 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_38 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_37, i32 0, i32 1
  %fuckLLVM_39 = load i32, i32* %fuckLLVM_38
  %fuckLLVM_40 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_36, i32 %fuckLLVM_39
  %fuckLLVM_41 = load %class.Node**, %class.Node*** %fuckLLVM_3
  %fuckLLVM_42 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_43 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_42, i32 0, i32 1
  %fuckLLVM_44 = load i32, i32* %fuckLLVM_43
  %fuckLLVM_45 = getelementptr inbounds %class.Node*, %class.Node** %fuckLLVM_41, i32 %fuckLLVM_44
  %fuckLLVM_46 = load %class.Node*, %class.Node** %fuckLLVM_45
  %fuckLLVM_47 = bitcast %class.Node* %fuckLLVM_46 to %class.Node*
  store %class.Node* %fuckLLVM_47, %class.Node** %fuckLLVM_40
  br label %ID28_for_incr

ID28_for_incr: 
  %fuckLLVM_48 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_1
  %fuckLLVM_49 = getelementptr inbounds %class.Array_Node, %class.Array_Node* %fuckLLVM_48, i32 0, i32 1
  %fuckLLVM_50 = load i32, i32* %fuckLLVM_49
  %fuckLLVM_51 = add i32 %fuckLLVM_50, 1
  store i32 %fuckLLVM_51, i32* %fuckLLVM_49
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_49
  br label %ID28_for_condition

ID28_for_out: 
  br label %classArray_Node_doubleStorage_return

classArray_Node_doubleStorage_return: 
  ret void
}
define void @Heap_Node(%class.Heap_Node* %fuckLLVM_0) {
Heap_Node: 
  %fuckLLVM_1 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_2 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_3 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_2, i32 0, i32 0
  %fuckLLVM_4 = call i8* @malloc(i64 12)
  %fuckLLVM_5 = bitcast i8* %fuckLLVM_4 to %class.Array_Node*
  call void @Array_Node(%class.Array_Node* %fuckLLVM_5)
  %fuckLLVM_6 = bitcast %class.Array_Node* %fuckLLVM_5 to %class.Array_Node*
  store %class.Array_Node* %fuckLLVM_6, %class.Array_Node** %fuckLLVM_3
  br label %Heap_Node_return

Heap_Node_return: 
  ret void
}
define void @classHeap_Node_push(%class.Heap_Node* %fuckLLVM_0, %class.Node* %fuckLLVM_1) {
push_entry: 
  %fuckLLVM_2 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca %class.Node*
  store %class.Node* %fuckLLVM_1, %class.Node** %fuckLLVM_3
  %fuckLLVM_5 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_6 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_5, i32 0, i32 0
  %fuckLLVM_7 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_6
  %fuckLLVM_8 = load %class.Node*, %class.Node** %fuckLLVM_3
  %fuckLLVM_9 = bitcast %class.Node* %fuckLLVM_8 to %class.Node*
  call void @classArray_Node_push_back(%class.Array_Node* %fuckLLVM_7, %class.Node* %fuckLLVM_9)
  %fuckLLVM_11 = alloca i32
  %fuckLLVM_12 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_13 = call i32 @classHeap_Node_size(%class.Heap_Node* %fuckLLVM_12)
  %fuckLLVM_14 = sub i32 %fuckLLVM_13, 1
  store i32 %fuckLLVM_14, i32* %fuckLLVM_11
  br label %ID15_while_condition

ID15_while_condition: 
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_16 = icmp sgt i32 %fuckLLVM_15, 0
  br i1 %fuckLLVM_16, label %ID17_while_suite, label %ID17_while_out

ID33_if_true: 
  br label %ID17_while_out
  br label %ID33_if_out

ID33_if_out: 
  %fuckLLVM_34 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_35 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_34, i32 0, i32 0
  %fuckLLVM_36 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_35
  %fuckLLVM_37 = load i32, i32* %fuckLLVM_17
  %fuckLLVM_38 = load i32, i32* %fuckLLVM_11
  call void @classArray_Node_swap(%class.Array_Node* %fuckLLVM_36, i32 %fuckLLVM_37, i32 %fuckLLVM_38)
  %fuckLLVM_40 = load i32, i32* %fuckLLVM_17
  store i32 %fuckLLVM_40, i32* %fuckLLVM_11
  br label %ID15_while_condition

ID17_while_suite: 
  %fuckLLVM_17 = alloca i32
  %fuckLLVM_18 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_19 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_20 = call i32 @classHeap_Node_pnt(%class.Heap_Node* %fuckLLVM_18, i32 %fuckLLVM_19)
  store i32 %fuckLLVM_20, i32* %fuckLLVM_17
  %fuckLLVM_21 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_22 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_21, i32 0, i32 0
  %fuckLLVM_23 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_22
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_17
  %fuckLLVM_25 = call %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_23, i32 %fuckLLVM_24)
  %fuckLLVM_26 = call i32 @classNode_key_(%class.Node* %fuckLLVM_25)
  %fuckLLVM_27 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_28 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_27, i32 0, i32 0
  %fuckLLVM_29 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_28
  %fuckLLVM_30 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_31 = call %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_29, i32 %fuckLLVM_30)
  %fuckLLVM_32 = call i32 @classNode_key_(%class.Node* %fuckLLVM_31)
  %fuckLLVM_33 = icmp sge i32 %fuckLLVM_26, %fuckLLVM_32
  br i1 %fuckLLVM_33, label %ID33_if_true, label %ID33_if_out

ID17_while_out: 
  br label %classHeap_Node_push_return

classHeap_Node_push_return: 
  ret void
}
define %class.Node* @classHeap_Node_pop(%class.Heap_Node* %fuckLLVM_0) {
pop_entry: 
  %fuckLLVM_1 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca %class.Node*
  %fuckLLVM_3 = alloca %class.Node*
  %fuckLLVM_4 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_5 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_4, i32 0, i32 0
  %fuckLLVM_6 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_5
  %fuckLLVM_7 = call %class.Node* @classArray_Node_front(%class.Array_Node* %fuckLLVM_6)
  %fuckLLVM_8 = bitcast %class.Node* %fuckLLVM_7 to %class.Node*
  store %class.Node* %fuckLLVM_8, %class.Node** %fuckLLVM_3
  %fuckLLVM_9 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_10 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_9, i32 0, i32 0
  %fuckLLVM_11 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_10
  %fuckLLVM_12 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_13 = call i32 @classHeap_Node_size(%class.Heap_Node* %fuckLLVM_12)
  %fuckLLVM_14 = sub i32 %fuckLLVM_13, 1
  call void @classArray_Node_swap(%class.Array_Node* %fuckLLVM_11, i32 0, i32 %fuckLLVM_14)
  %fuckLLVM_16 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_17 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_16, i32 0, i32 0
  %fuckLLVM_18 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_17
  %fuckLLVM_19 = call %class.Node* @classArray_Node_pop_back(%class.Array_Node* %fuckLLVM_18)
  %fuckLLVM_20 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  call void @classHeap_Node_maxHeapify(%class.Heap_Node* %fuckLLVM_20, i32 0)
  %fuckLLVM_22 = load %class.Node*, %class.Node** %fuckLLVM_3
  %fuckLLVM_23 = bitcast %class.Node* %fuckLLVM_22 to %class.Node*
  store %class.Node* %fuckLLVM_23, %class.Node** %fuckLLVM_2
  br label %classHeap_Node_pop_return
  br label %classHeap_Node_pop_return

classHeap_Node_pop_return: 
  %fuckLLVM_24 = load %class.Node*, %class.Node** %fuckLLVM_2
  ret %class.Node* %fuckLLVM_24
}
define %class.Node* @classHeap_Node_top(%class.Heap_Node* %fuckLLVM_0) {
top_entry: 
  %fuckLLVM_1 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca %class.Node*
  %fuckLLVM_3 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_3, i32 0, i32 0
  %fuckLLVM_5 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_4
  %fuckLLVM_6 = call %class.Node* @classArray_Node_front(%class.Array_Node* %fuckLLVM_5)
  %fuckLLVM_7 = bitcast %class.Node* %fuckLLVM_6 to %class.Node*
  store %class.Node* %fuckLLVM_7, %class.Node** %fuckLLVM_2
  br label %classHeap_Node_top_return
  br label %classHeap_Node_top_return

classHeap_Node_top_return: 
  %fuckLLVM_8 = load %class.Node*, %class.Node** %fuckLLVM_2
  ret %class.Node* %fuckLLVM_8
}
define i32 @classHeap_Node_size(%class.Heap_Node* %fuckLLVM_0) {
size_entry: 
  %fuckLLVM_1 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_3, i32 0, i32 0
  %fuckLLVM_5 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_4
  %fuckLLVM_6 = call i32 @classArray_Node_size(%class.Array_Node* %fuckLLVM_5)
  store i32 %fuckLLVM_6, i32* %fuckLLVM_2
  br label %classHeap_Node_size_return
  br label %classHeap_Node_size_return

classHeap_Node_size_return: 
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_7
}
define i32 @classHeap_Node_lchild(%class.Heap_Node* %fuckLLVM_0, i32 %fuckLLVM_1) {
lchild_entry: 
  %fuckLLVM_2 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_6 = mul i32 %fuckLLVM_5, 2
  %fuckLLVM_7 = add i32 %fuckLLVM_6, 1
  store i32 %fuckLLVM_7, i32* %fuckLLVM_4
  br label %classHeap_Node_lchild_return
  br label %classHeap_Node_lchild_return

classHeap_Node_lchild_return: 
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_4
  ret i32 %fuckLLVM_8
}
define i32 @classHeap_Node_rchild(%class.Heap_Node* %fuckLLVM_0, i32 %fuckLLVM_1) {
rchild_entry: 
  %fuckLLVM_2 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_6 = mul i32 %fuckLLVM_5, 2
  %fuckLLVM_7 = add i32 %fuckLLVM_6, 2
  store i32 %fuckLLVM_7, i32* %fuckLLVM_4
  br label %classHeap_Node_rchild_return
  br label %classHeap_Node_rchild_return

classHeap_Node_rchild_return: 
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_4
  ret i32 %fuckLLVM_8
}
define i32 @classHeap_Node_pnt(%class.Heap_Node* %fuckLLVM_0, i32 %fuckLLVM_1) {
pnt_entry: 
  %fuckLLVM_2 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_6 = sub i32 %fuckLLVM_5, 1
  %fuckLLVM_7 = sdiv i32 %fuckLLVM_6, 2
  store i32 %fuckLLVM_7, i32* %fuckLLVM_4
  br label %classHeap_Node_pnt_return
  br label %classHeap_Node_pnt_return

classHeap_Node_pnt_return: 
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_4
  ret i32 %fuckLLVM_8
}
define void @classHeap_Node_maxHeapify(%class.Heap_Node* %fuckLLVM_0, i32 %fuckLLVM_1) {
maxHeapify_entry: 
  %fuckLLVM_2 = alloca %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_0, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_5 = alloca i32
  %fuckLLVM_6 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_8 = call i32 @classHeap_Node_lchild(%class.Heap_Node* %fuckLLVM_6, i32 %fuckLLVM_7)
  store i32 %fuckLLVM_8, i32* %fuckLLVM_5
  %fuckLLVM_9 = alloca i32
  %fuckLLVM_10 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_12 = call i32 @classHeap_Node_rchild(%class.Heap_Node* %fuckLLVM_10, i32 %fuckLLVM_11)
  store i32 %fuckLLVM_12, i32* %fuckLLVM_9
  %fuckLLVM_13 = alloca i32
  %fuckLLVM_14 = load i32, i32* %fuckLLVM_3
  store i32 %fuckLLVM_14, i32* %fuckLLVM_13
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_16 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_17 = call i32 @classHeap_Node_size(%class.Heap_Node* %fuckLLVM_16)
  %fuckLLVM_18 = icmp slt i32 %fuckLLVM_15, %fuckLLVM_17
  br i1 %fuckLLVM_18, label %ID18_AndAnd_true, label %ID18_AndAnd_out

ID18_AndAnd_true: 
  %fuckLLVM_19 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_20 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_19, i32 0, i32 0
  %fuckLLVM_21 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_20
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_23 = call %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_21, i32 %fuckLLVM_22)
  %fuckLLVM_24 = call i32 @classNode_key_(%class.Node* %fuckLLVM_23)
  %fuckLLVM_25 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_26 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_25, i32 0, i32 0
  %fuckLLVM_27 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_26
  %fuckLLVM_28 = load i32, i32* %fuckLLVM_13
  %fuckLLVM_29 = call %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_27, i32 %fuckLLVM_28)
  %fuckLLVM_30 = call i32 @classNode_key_(%class.Node* %fuckLLVM_29)
  %fuckLLVM_31 = icmp sgt i32 %fuckLLVM_24, %fuckLLVM_30
  br label %ID18_AndAnd_out

ID18_AndAnd_out: 
  %fuckLLVM_32 = phi i1 [ false, %maxHeapify_entry ], [ %fuckLLVM_31, %ID18_AndAnd_true ]
  br i1 %fuckLLVM_32, label %ID32_if_true, label %ID32_if_out

ID32_if_true: 
  %fuckLLVM_33 = load i32, i32* %fuckLLVM_5
  store i32 %fuckLLVM_33, i32* %fuckLLVM_13
  br label %ID32_if_out

ID32_if_out: 
  %fuckLLVM_34 = load i32, i32* %fuckLLVM_9
  %fuckLLVM_35 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_36 = call i32 @classHeap_Node_size(%class.Heap_Node* %fuckLLVM_35)
  %fuckLLVM_37 = icmp slt i32 %fuckLLVM_34, %fuckLLVM_36
  br i1 %fuckLLVM_37, label %ID37_AndAnd_true, label %ID37_AndAnd_out

ID37_AndAnd_true: 
  %fuckLLVM_38 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_39 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_38, i32 0, i32 0
  %fuckLLVM_40 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_39
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_9
  %fuckLLVM_42 = call %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_40, i32 %fuckLLVM_41)
  %fuckLLVM_43 = call i32 @classNode_key_(%class.Node* %fuckLLVM_42)
  %fuckLLVM_44 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_45 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_44, i32 0, i32 0
  %fuckLLVM_46 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_45
  %fuckLLVM_47 = load i32, i32* %fuckLLVM_13
  %fuckLLVM_48 = call %class.Node* @classArray_Node_get(%class.Array_Node* %fuckLLVM_46, i32 %fuckLLVM_47)
  %fuckLLVM_49 = call i32 @classNode_key_(%class.Node* %fuckLLVM_48)
  %fuckLLVM_50 = icmp sgt i32 %fuckLLVM_43, %fuckLLVM_49
  br label %ID37_AndAnd_out

ID37_AndAnd_out: 
  %fuckLLVM_51 = phi i1 [ false, %ID32_if_out ], [ %fuckLLVM_50, %ID37_AndAnd_true ]
  br i1 %fuckLLVM_51, label %ID51_if_true, label %ID51_if_out

ID51_if_true: 
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_9
  store i32 %fuckLLVM_52, i32* %fuckLLVM_13
  br label %ID51_if_out

ID51_if_out: 
  %fuckLLVM_53 = load i32, i32* %fuckLLVM_13
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_55 = icmp eq i32 %fuckLLVM_53, %fuckLLVM_54
  br i1 %fuckLLVM_55, label %ID55_if_true, label %ID55_if_out

ID55_if_true: 
  br label %classHeap_Node_maxHeapify_return
  br label %ID55_if_out

ID55_if_out: 
  %fuckLLVM_56 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_57 = getelementptr inbounds %class.Heap_Node, %class.Heap_Node* %fuckLLVM_56, i32 0, i32 0
  %fuckLLVM_58 = load %class.Array_Node*, %class.Array_Node** %fuckLLVM_57
  %fuckLLVM_59 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_60 = load i32, i32* %fuckLLVM_13
  call void @classArray_Node_swap(%class.Array_Node* %fuckLLVM_58, i32 %fuckLLVM_59, i32 %fuckLLVM_60)
  %fuckLLVM_62 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_2
  %fuckLLVM_63 = load i32, i32* %fuckLLVM_13
  call void @classHeap_Node_maxHeapify(%class.Heap_Node* %fuckLLVM_62, i32 %fuckLLVM_63)
  br label %classHeap_Node_maxHeapify_return

classHeap_Node_maxHeapify_return: 
  ret void
}
define void @init() {
init_entry: 
  %fuckLLVM_1 = call i32 @getInt()
  store i32 %fuckLLVM_1, i32* @fuckLLVM_n
  %fuckLLVM_2 = call i32 @getInt()
  store i32 %fuckLLVM_2, i32* @fuckLLVM_m
  %fuckLLVM_3 = call i8* @malloc(i64 28)
  %fuckLLVM_4 = bitcast i8* %fuckLLVM_3 to %class.EdgeList*
  call void @EdgeList(%class.EdgeList* %fuckLLVM_4)
  %fuckLLVM_5 = bitcast %class.EdgeList* %fuckLLVM_4 to %class.EdgeList*
  store %class.EdgeList* %fuckLLVM_5, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_6 = load %class.EdgeList*, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_7 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_8 = load i32, i32* @fuckLLVM_m
  call void @classEdgeList_init(%class.EdgeList* %fuckLLVM_6, i32 %fuckLLVM_7, i32 %fuckLLVM_8)
  %fuckLLVM_10 = alloca i32
  store i32 0, i32* %fuckLLVM_10
  br label %ID10_for_condition

ID10_for_condition: 
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_10
  %fuckLLVM_12 = load i32, i32* @fuckLLVM_m
  %fuckLLVM_13 = icmp slt i32 %fuckLLVM_11, %fuckLLVM_12
  br i1 %fuckLLVM_13, label %ID10_for_suite, label %ID10_for_out

ID10_for_suite: 
  %fuckLLVM_14 = alloca i32
  %fuckLLVM_15 = call i32 @getInt()
  store i32 %fuckLLVM_15, i32* %fuckLLVM_14
  %fuckLLVM_16 = alloca i32
  %fuckLLVM_17 = call i32 @getInt()
  store i32 %fuckLLVM_17, i32* %fuckLLVM_16
  %fuckLLVM_18 = alloca i32
  %fuckLLVM_19 = call i32 @getInt()
  store i32 %fuckLLVM_19, i32* %fuckLLVM_18
  %fuckLLVM_20 = load %class.EdgeList*, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_14
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_23 = load i32, i32* %fuckLLVM_18
  call void @classEdgeList_addEdge(%class.EdgeList* %fuckLLVM_20, i32 %fuckLLVM_21, i32 %fuckLLVM_22, i32 %fuckLLVM_23)
  br label %ID10_for_incr

ID10_for_incr: 
  %fuckLLVM_25 = load i32, i32* %fuckLLVM_10
  %fuckLLVM_26 = add i32 %fuckLLVM_25, 1
  store i32 %fuckLLVM_26, i32* %fuckLLVM_10
  %fuckLLVM_27 = load i32, i32* %fuckLLVM_10
  br label %ID10_for_condition

ID10_for_out: 
  br label %init_return

init_return: 
  ret void
}
define void @Node(%class.Node* %fuckLLVM_0) {
Node: 
  %fuckLLVM_1 = alloca %class.Node*
  store %class.Node* %fuckLLVM_0, %class.Node** %fuckLLVM_1
  br label %Node_return

Node_return: 
  ret void
}
define i32 @classNode_key_(%class.Node* %fuckLLVM_0) {
key__entry: 
  %fuckLLVM_1 = alloca %class.Node*
  store %class.Node* %fuckLLVM_0, %class.Node** %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load %class.Node*, %class.Node** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.Node, %class.Node* %fuckLLVM_3, i32 0, i32 1
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_6 = sub i32 0, %fuckLLVM_5
  store i32 %fuckLLVM_6, i32* %fuckLLVM_2
  br label %classNode_key__return
  br label %classNode_key__return

classNode_key__return: 
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_7
}
define i32* @dijkstra(i32 %fuckLLVM_0) {
dijkstra_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  %fuckLLVM_2 = alloca i32*
  %fuckLLVM_3 = alloca i32*
  %fuckLLVM_4 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_5 = zext i32 %fuckLLVM_4 to i64
  %fuckLLVM_6 = mul i64 %fuckLLVM_5, 4
  %fuckLLVM_7 = add i64 %fuckLLVM_6, 4
  %fuckLLVM_8 = call i8* @malloc(i64 %fuckLLVM_7)
  %fuckLLVM_9 = bitcast i8* %fuckLLVM_8 to i32*
  store i32 %fuckLLVM_4, i32* %fuckLLVM_9
  %fuckLLVM_10 = getelementptr inbounds i32, i32* %fuckLLVM_9, i32 1
  %fuckLLVM_11 = bitcast i32* %fuckLLVM_10 to i32*
  %fuckLLVM_12 = bitcast i32* %fuckLLVM_11 to i32*
  store i32* %fuckLLVM_12, i32** %fuckLLVM_3
  %fuckLLVM_13 = alloca i32*
  %fuckLLVM_14 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_15 = zext i32 %fuckLLVM_14 to i64
  %fuckLLVM_16 = mul i64 %fuckLLVM_15, 4
  %fuckLLVM_17 = add i64 %fuckLLVM_16, 4
  %fuckLLVM_18 = call i8* @malloc(i64 %fuckLLVM_17)
  %fuckLLVM_19 = bitcast i8* %fuckLLVM_18 to i32*
  store i32 %fuckLLVM_14, i32* %fuckLLVM_19
  %fuckLLVM_20 = getelementptr inbounds i32, i32* %fuckLLVM_19, i32 1
  %fuckLLVM_21 = bitcast i32* %fuckLLVM_20 to i32*
  %fuckLLVM_22 = bitcast i32* %fuckLLVM_21 to i32*
  store i32* %fuckLLVM_22, i32** %fuckLLVM_13
  %fuckLLVM_23 = alloca i32
  store i32 0, i32* %fuckLLVM_23
  br label %ID23_for_condition

ID23_for_condition: 
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_23
  %fuckLLVM_25 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_26 = icmp slt i32 %fuckLLVM_24, %fuckLLVM_25
  br i1 %fuckLLVM_26, label %ID23_for_suite, label %ID23_for_out

ID23_for_suite: 
  %fuckLLVM_27 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_28 = load i32, i32* %fuckLLVM_23
  %fuckLLVM_29 = getelementptr inbounds i32, i32* %fuckLLVM_27, i32 %fuckLLVM_28
  %fuckLLVM_30 = load i32, i32* @fuckLLVM_INF
  store i32 %fuckLLVM_30, i32* %fuckLLVM_29
  %fuckLLVM_31 = load i32*, i32** %fuckLLVM_3
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_23
  %fuckLLVM_33 = getelementptr inbounds i32, i32* %fuckLLVM_31, i32 %fuckLLVM_32
  store i32 0, i32* %fuckLLVM_33
  br label %ID23_for_incr

ID23_for_incr: 
  %fuckLLVM_34 = load i32, i32* %fuckLLVM_23
  %fuckLLVM_35 = add i32 %fuckLLVM_34, 1
  store i32 %fuckLLVM_35, i32* %fuckLLVM_23
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_23
  br label %ID23_for_condition

ID23_for_out: 
  %fuckLLVM_37 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_38 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_39 = getelementptr inbounds i32, i32* %fuckLLVM_37, i32 %fuckLLVM_38
  store i32 0, i32* %fuckLLVM_39
  %fuckLLVM_40 = alloca %class.Heap_Node*
  %fuckLLVM_41 = call i8* @malloc(i64 8)
  %fuckLLVM_42 = bitcast i8* %fuckLLVM_41 to %class.Heap_Node*
  call void @Heap_Node(%class.Heap_Node* %fuckLLVM_42)
  %fuckLLVM_43 = bitcast %class.Heap_Node* %fuckLLVM_42 to %class.Heap_Node*
  store %class.Heap_Node* %fuckLLVM_43, %class.Heap_Node** %fuckLLVM_40
  %fuckLLVM_44 = alloca %class.Node*
  %fuckLLVM_45 = call i8* @malloc(i64 8)
  %fuckLLVM_46 = bitcast i8* %fuckLLVM_45 to %class.Node*
  call void @Node(%class.Node* %fuckLLVM_46)
  %fuckLLVM_47 = bitcast %class.Node* %fuckLLVM_46 to %class.Node*
  store %class.Node* %fuckLLVM_47, %class.Node** %fuckLLVM_44
  %fuckLLVM_48 = load %class.Node*, %class.Node** %fuckLLVM_44
  %fuckLLVM_49 = getelementptr inbounds %class.Node, %class.Node* %fuckLLVM_48, i32 0, i32 1
  store i32 0, i32* %fuckLLVM_49
  %fuckLLVM_50 = load %class.Node*, %class.Node** %fuckLLVM_44
  %fuckLLVM_51 = getelementptr inbounds %class.Node, %class.Node* %fuckLLVM_50, i32 0, i32 0
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_1
  store i32 %fuckLLVM_52, i32* %fuckLLVM_51
  %fuckLLVM_53 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_40
  %fuckLLVM_54 = load %class.Node*, %class.Node** %fuckLLVM_44
  %fuckLLVM_55 = bitcast %class.Node* %fuckLLVM_54 to %class.Node*
  call void @classHeap_Node_push(%class.Heap_Node* %fuckLLVM_53, %class.Node* %fuckLLVM_55)
  br label %ID57_while_condition

ID57_while_condition: 
  %fuckLLVM_57 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_40
  %fuckLLVM_58 = call i32 @classHeap_Node_size(%class.Heap_Node* %fuckLLVM_57)
  %fuckLLVM_59 = icmp ne i32 %fuckLLVM_58, 0
  br i1 %fuckLLVM_59, label %ID60_while_suite, label %ID60_while_out

ID72_if_true: 
  br label %ID57_while_condition
  br label %ID72_if_out

ID72_if_out: 
  %fuckLLVM_73 = load i32*, i32** %fuckLLVM_3
  %fuckLLVM_74 = load i32, i32* %fuckLLVM_64
  %fuckLLVM_75 = getelementptr inbounds i32, i32* %fuckLLVM_73, i32 %fuckLLVM_74
  store i32 1, i32* %fuckLLVM_75
  %fuckLLVM_76 = alloca i32
  %fuckLLVM_77 = load %class.EdgeList*, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_78 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_77, i32 0, i32 2
  %fuckLLVM_79 = load i32*, i32** %fuckLLVM_78
  %fuckLLVM_80 = load i32, i32* %fuckLLVM_64
  %fuckLLVM_81 = getelementptr inbounds i32, i32* %fuckLLVM_79, i32 %fuckLLVM_80
  %fuckLLVM_82 = load i32, i32* %fuckLLVM_81
  store i32 %fuckLLVM_82, i32* %fuckLLVM_76
  br label %ID82_for_condition

ID82_for_condition: 
  %fuckLLVM_83 = load i32, i32* %fuckLLVM_76
  %fuckLLVM_84 = sub i32 0, 1
  %fuckLLVM_85 = icmp ne i32 %fuckLLVM_83, %fuckLLVM_84
  br i1 %fuckLLVM_85, label %ID82_for_suite, label %ID82_for_out

ID82_for_suite: 
  %fuckLLVM_86 = alloca i32
  %fuckLLVM_87 = load %class.EdgeList*, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_88 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_87, i32 0, i32 0
  %fuckLLVM_89 = load %class.Edge**, %class.Edge*** %fuckLLVM_88
  %fuckLLVM_90 = load i32, i32* %fuckLLVM_76
  %fuckLLVM_91 = getelementptr inbounds %class.Edge*, %class.Edge** %fuckLLVM_89, i32 %fuckLLVM_90
  %fuckLLVM_92 = load %class.Edge*, %class.Edge** %fuckLLVM_91
  %fuckLLVM_93 = getelementptr inbounds %class.Edge, %class.Edge* %fuckLLVM_92, i32 0, i32 1
  %fuckLLVM_94 = load i32, i32* %fuckLLVM_93
  store i32 %fuckLLVM_94, i32* %fuckLLVM_86
  %fuckLLVM_95 = alloca i32
  %fuckLLVM_96 = load %class.EdgeList*, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_97 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_96, i32 0, i32 0
  %fuckLLVM_98 = load %class.Edge**, %class.Edge*** %fuckLLVM_97
  %fuckLLVM_99 = load i32, i32* %fuckLLVM_76
  %fuckLLVM_100 = getelementptr inbounds %class.Edge*, %class.Edge** %fuckLLVM_98, i32 %fuckLLVM_99
  %fuckLLVM_101 = load %class.Edge*, %class.Edge** %fuckLLVM_100
  %fuckLLVM_102 = getelementptr inbounds %class.Edge, %class.Edge* %fuckLLVM_101, i32 0, i32 2
  %fuckLLVM_103 = load i32, i32* %fuckLLVM_102
  store i32 %fuckLLVM_103, i32* %fuckLLVM_95
  %fuckLLVM_104 = alloca i32
  %fuckLLVM_105 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_106 = load i32, i32* %fuckLLVM_64
  %fuckLLVM_107 = getelementptr inbounds i32, i32* %fuckLLVM_105, i32 %fuckLLVM_106
  %fuckLLVM_108 = load i32, i32* %fuckLLVM_107
  %fuckLLVM_109 = load i32, i32* %fuckLLVM_95
  %fuckLLVM_110 = add i32 %fuckLLVM_108, %fuckLLVM_109
  store i32 %fuckLLVM_110, i32* %fuckLLVM_104
  %fuckLLVM_111 = load i32, i32* %fuckLLVM_104
  %fuckLLVM_112 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_113 = load i32, i32* %fuckLLVM_86
  %fuckLLVM_114 = getelementptr inbounds i32, i32* %fuckLLVM_112, i32 %fuckLLVM_113
  %fuckLLVM_115 = load i32, i32* %fuckLLVM_114
  %fuckLLVM_116 = icmp sge i32 %fuckLLVM_111, %fuckLLVM_115
  br i1 %fuckLLVM_116, label %ID116_if_true, label %ID116_if_out

ID116_if_true: 
  br label %ID82_for_incr
  br label %ID116_if_out

ID116_if_out: 
  %fuckLLVM_117 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_118 = load i32, i32* %fuckLLVM_86
  %fuckLLVM_119 = getelementptr inbounds i32, i32* %fuckLLVM_117, i32 %fuckLLVM_118
  %fuckLLVM_120 = load i32, i32* %fuckLLVM_104
  store i32 %fuckLLVM_120, i32* %fuckLLVM_119
  %fuckLLVM_121 = call i8* @malloc(i64 8)
  %fuckLLVM_122 = bitcast i8* %fuckLLVM_121 to %class.Node*
  call void @Node(%class.Node* %fuckLLVM_122)
  %fuckLLVM_123 = bitcast %class.Node* %fuckLLVM_122 to %class.Node*
  store %class.Node* %fuckLLVM_123, %class.Node** %fuckLLVM_60
  %fuckLLVM_124 = load %class.Node*, %class.Node** %fuckLLVM_60
  %fuckLLVM_125 = getelementptr inbounds %class.Node, %class.Node* %fuckLLVM_124, i32 0, i32 0
  %fuckLLVM_126 = load i32, i32* %fuckLLVM_86
  store i32 %fuckLLVM_126, i32* %fuckLLVM_125
  %fuckLLVM_127 = load %class.Node*, %class.Node** %fuckLLVM_60
  %fuckLLVM_128 = getelementptr inbounds %class.Node, %class.Node* %fuckLLVM_127, i32 0, i32 1
  %fuckLLVM_129 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_130 = load i32, i32* %fuckLLVM_86
  %fuckLLVM_131 = getelementptr inbounds i32, i32* %fuckLLVM_129, i32 %fuckLLVM_130
  %fuckLLVM_132 = load i32, i32* %fuckLLVM_131
  store i32 %fuckLLVM_132, i32* %fuckLLVM_128
  %fuckLLVM_133 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_40
  %fuckLLVM_134 = load %class.Node*, %class.Node** %fuckLLVM_60
  %fuckLLVM_135 = bitcast %class.Node* %fuckLLVM_134 to %class.Node*
  call void @classHeap_Node_push(%class.Heap_Node* %fuckLLVM_133, %class.Node* %fuckLLVM_135)
  br label %ID82_for_incr

ID82_for_incr: 
  %fuckLLVM_137 = load %class.EdgeList*, %class.EdgeList** @fuckLLVM_g
  %fuckLLVM_138 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %fuckLLVM_137, i32 0, i32 1
  %fuckLLVM_139 = load i32*, i32** %fuckLLVM_138
  %fuckLLVM_140 = load i32, i32* %fuckLLVM_76
  %fuckLLVM_141 = getelementptr inbounds i32, i32* %fuckLLVM_139, i32 %fuckLLVM_140
  %fuckLLVM_142 = load i32, i32* %fuckLLVM_141
  store i32 %fuckLLVM_142, i32* %fuckLLVM_76
  br label %ID82_for_condition

ID82_for_out: 
  br label %ID57_while_condition

ID60_while_suite: 
  %fuckLLVM_60 = alloca %class.Node*
  %fuckLLVM_61 = load %class.Heap_Node*, %class.Heap_Node** %fuckLLVM_40
  %fuckLLVM_62 = call %class.Node* @classHeap_Node_pop(%class.Heap_Node* %fuckLLVM_61)
  %fuckLLVM_63 = bitcast %class.Node* %fuckLLVM_62 to %class.Node*
  store %class.Node* %fuckLLVM_63, %class.Node** %fuckLLVM_60
  %fuckLLVM_64 = alloca i32
  %fuckLLVM_65 = load %class.Node*, %class.Node** %fuckLLVM_60
  %fuckLLVM_66 = getelementptr inbounds %class.Node, %class.Node* %fuckLLVM_65, i32 0, i32 0
  %fuckLLVM_67 = load i32, i32* %fuckLLVM_66
  store i32 %fuckLLVM_67, i32* %fuckLLVM_64
  %fuckLLVM_68 = load i32*, i32** %fuckLLVM_3
  %fuckLLVM_69 = load i32, i32* %fuckLLVM_64
  %fuckLLVM_70 = getelementptr inbounds i32, i32* %fuckLLVM_68, i32 %fuckLLVM_69
  %fuckLLVM_71 = load i32, i32* %fuckLLVM_70
  %fuckLLVM_72 = icmp eq i32 %fuckLLVM_71, 1
  br i1 %fuckLLVM_72, label %ID72_if_true, label %ID72_if_out

ID60_while_out: 
  %fuckLLVM_143 = load i32*, i32** %fuckLLVM_13
  %fuckLLVM_144 = bitcast i32* %fuckLLVM_143 to i32*
  store i32* %fuckLLVM_144, i32** %fuckLLVM_2
  br label %dijkstra_return
  br label %dijkstra_return

dijkstra_return: 
  %fuckLLVM_145 = load i32*, i32** %fuckLLVM_2
  ret i32* %fuckLLVM_145
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  call void @init()
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = alloca i32
  store i32 0, i32* %fuckLLVM_2
  br label %ID3_for_condition

ID3_for_condition: 
  %fuckLLVM_4 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_5 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_6 = icmp slt i32 %fuckLLVM_4, %fuckLLVM_5
  br i1 %fuckLLVM_6, label %ID3_for_suite, label %ID3_for_out

ID3_for_suite: 
  %fuckLLVM_7 = alloca i32*
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_9 = call i32* @dijkstra(i32 %fuckLLVM_8)
  %fuckLLVM_10 = bitcast i32* %fuckLLVM_9 to i32*
  store i32* %fuckLLVM_10, i32** %fuckLLVM_7
  store i32 0, i32* %fuckLLVM_3
  br label %ID10_for_condition

ID10_for_condition: 
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_12 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_13 = icmp slt i32 %fuckLLVM_11, %fuckLLVM_12
  br i1 %fuckLLVM_13, label %ID10_for_suite, label %ID10_for_out

ID10_for_suite: 
  %fuckLLVM_14 = load i32*, i32** %fuckLLVM_7
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_16 = getelementptr inbounds i32, i32* %fuckLLVM_14, i32 %fuckLLVM_15
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_18 = load i32, i32* @fuckLLVM_INF
  %fuckLLVM_19 = icmp eq i32 %fuckLLVM_17, %fuckLLVM_18
  br i1 %fuckLLVM_19, label %ID19_if_true, label %ID19_if_false

ID19_if_true: 
  %fuckLLVM_20 = bitcast [3 x i8]* @fuckLLVM_.str.0 to i8*
  call void @print(i8* %fuckLLVM_20)
  br label %ID19_if_out

ID19_if_false: 
  %fuckLLVM_22 = load i32*, i32** %fuckLLVM_7
  %fuckLLVM_23 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_24 = getelementptr inbounds i32, i32* %fuckLLVM_22, i32 %fuckLLVM_23
  %fuckLLVM_25 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_26 = call i8* @toString(i32 %fuckLLVM_25)
  %fuckLLVM_27 = bitcast i8* %fuckLLVM_26 to i8*
  call void @print(i8* %fuckLLVM_27)
  br label %ID19_if_out

ID19_if_out: 
  %fuckLLVM_29 = bitcast [2 x i8]* @fuckLLVM_.str.1 to i8*
  call void @print(i8* %fuckLLVM_29)
  br label %ID10_for_incr

ID10_for_incr: 
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_32 = add i32 %fuckLLVM_31, 1
  store i32 %fuckLLVM_32, i32* %fuckLLVM_3
  %fuckLLVM_33 = load i32, i32* %fuckLLVM_3
  br label %ID10_for_condition

ID10_for_out: 
  %fuckLLVM_34 = bitcast [1 x i8]* @fuckLLVM_.str.2 to i8*
  call void @println(i8* %fuckLLVM_34)
  br label %ID3_for_incr

ID3_for_incr: 
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_37 = add i32 %fuckLLVM_36, 1
  store i32 %fuckLLVM_37, i32* %fuckLLVM_2
  %fuckLLVM_38 = load i32, i32* %fuckLLVM_2
  br label %ID3_for_condition

ID3_for_out: 
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_39 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_39
}
