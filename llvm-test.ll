@fuckLLVM_hashsize = global i32 100
%class.node = type { i32, i32, %class.node* }
@fuckLLVM_table = global %class.node** null
@fuckLLVM_.str.0 = private constant [2 x i8] c" \00"

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
define void @node(%class.node* %fuckLLVM_0) {
node: 
  %fuckLLVM_1 = alloca %class.node*
  store %class.node* %fuckLLVM_0, %class.node** %fuckLLVM_1
  br label %node_return

node_return: 
  ret void
}
define i32 @getHash(i32 %fuckLLVM_0) {
getHash_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_4 = mul i32 %fuckLLVM_3, 237
  %fuckLLVM_5 = load i32, i32* @fuckLLVM_hashsize
  %fuckLLVM_6 = srem i32 %fuckLLVM_4, %fuckLLVM_5
  store i32 %fuckLLVM_6, i32* %fuckLLVM_2
  br label %getHash_return
  br label %getHash_return

getHash_return: 
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_7
}
define void @put(i32 %fuckLLVM_0, i32 %fuckLLVM_1) {
put_entry: 
  %fuckLLVM_2 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_5 = alloca i32
  %fuckLLVM_6 = alloca %class.node*
  store %class.node* null, %class.node** %fuckLLVM_6
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_8 = call i32 @getHash(i32 %fuckLLVM_7)
  store i32 %fuckLLVM_8, i32* %fuckLLVM_5
  %fuckLLVM_9 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_11 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_9, i32 %fuckLLVM_10
  %fuckLLVM_12 = load %class.node*, %class.node** %fuckLLVM_11
  %fuckLLVM_13 = icmp eq %class.node* %fuckLLVM_12, null
  br i1 %fuckLLVM_13, label %put_ID13_if_true, label %put_ID13_if_out

put_ID13_if_true: 
  %fuckLLVM_14 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_16 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_14, i32 %fuckLLVM_15
  %fuckLLVM_17 = call i8* @malloc(i64 16)
  %fuckLLVM_18 = bitcast i8* %fuckLLVM_17 to %class.node*
  call void @node(%class.node* %fuckLLVM_18)
  %fuckLLVM_19 = bitcast %class.node* %fuckLLVM_18 to %class.node*
  store %class.node* %fuckLLVM_19, %class.node** %fuckLLVM_16
  %fuckLLVM_20 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_22 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_20, i32 %fuckLLVM_21
  %fuckLLVM_23 = load %class.node*, %class.node** %fuckLLVM_22
  %fuckLLVM_24 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_23, i32 0, i32 0
  %fuckLLVM_25 = load i32, i32* %fuckLLVM_2
  store i32 %fuckLLVM_25, i32* %fuckLLVM_24
  %fuckLLVM_26 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_27 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_28 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_26, i32 %fuckLLVM_27
  %fuckLLVM_29 = load %class.node*, %class.node** %fuckLLVM_28
  %fuckLLVM_30 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_29, i32 0, i32 1
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_3
  store i32 %fuckLLVM_31, i32* %fuckLLVM_30
  %fuckLLVM_32 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_33 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_34 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_32, i32 %fuckLLVM_33
  %fuckLLVM_35 = load %class.node*, %class.node** %fuckLLVM_34
  %fuckLLVM_36 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_35, i32 0, i32 2
  store %class.node* null, %class.node** %fuckLLVM_36
  br label %put_return
  br label %put_ID13_if_out

put_ID13_if_out: 
  %fuckLLVM_37 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_38 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_39 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_37, i32 %fuckLLVM_38
  %fuckLLVM_40 = load %class.node*, %class.node** %fuckLLVM_39
  %fuckLLVM_41 = bitcast %class.node* %fuckLLVM_40 to %class.node*
  store %class.node* %fuckLLVM_41, %class.node** %fuckLLVM_6
  br label %put_ID42_while_condition

put_ID42_while_condition: 
  %fuckLLVM_42 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_43 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_42, i32 0, i32 0
  %fuckLLVM_44 = load i32, i32* %fuckLLVM_43
  %fuckLLVM_45 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_46 = icmp ne i32 %fuckLLVM_44, %fuckLLVM_45
  br i1 %fuckLLVM_46, label %put_ID47_while_suite, label %put_ID47_while_out

put_ID50_if_true: 
  %fuckLLVM_51 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_52 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_51, i32 0, i32 2
  %fuckLLVM_53 = call i8* @malloc(i64 16)
  %fuckLLVM_54 = bitcast i8* %fuckLLVM_53 to %class.node*
  call void @node(%class.node* %fuckLLVM_54)
  %fuckLLVM_55 = bitcast %class.node* %fuckLLVM_54 to %class.node*
  store %class.node* %fuckLLVM_55, %class.node** %fuckLLVM_52
  %fuckLLVM_56 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_57 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_56, i32 0, i32 2
  %fuckLLVM_58 = load %class.node*, %class.node** %fuckLLVM_57
  %fuckLLVM_59 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_58, i32 0, i32 0
  %fuckLLVM_60 = load i32, i32* %fuckLLVM_2
  store i32 %fuckLLVM_60, i32* %fuckLLVM_59
  %fuckLLVM_61 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_62 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_61, i32 0, i32 2
  %fuckLLVM_63 = load %class.node*, %class.node** %fuckLLVM_62
  %fuckLLVM_64 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_63, i32 0, i32 2
  store %class.node* null, %class.node** %fuckLLVM_64
  br label %put_ID50_if_out

put_ID50_if_out: 
  %fuckLLVM_65 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_66 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_65, i32 0, i32 2
  %fuckLLVM_67 = load %class.node*, %class.node** %fuckLLVM_66
  %fuckLLVM_68 = bitcast %class.node* %fuckLLVM_67 to %class.node*
  store %class.node* %fuckLLVM_68, %class.node** %fuckLLVM_6
  br label %put_ID42_while_condition

put_ID47_while_suite: 
  %fuckLLVM_47 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_48 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_47, i32 0, i32 2
  %fuckLLVM_49 = load %class.node*, %class.node** %fuckLLVM_48
  %fuckLLVM_50 = icmp eq %class.node* %fuckLLVM_49, null
  br i1 %fuckLLVM_50, label %put_ID50_if_true, label %put_ID50_if_out

put_ID47_while_out: 
  %fuckLLVM_69 = load %class.node*, %class.node** %fuckLLVM_6
  %fuckLLVM_70 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_69, i32 0, i32 1
  %fuckLLVM_71 = load i32, i32* %fuckLLVM_3
  store i32 %fuckLLVM_71, i32* %fuckLLVM_70
  br label %put_return

put_return: 
  ret void
}
define i32 @get(i32 %fuckLLVM_0) {
get_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = alloca %class.node*
  store %class.node* null, %class.node** %fuckLLVM_3
  %fuckLLVM_4 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_6 = call i32 @getHash(i32 %fuckLLVM_5)
  %fuckLLVM_7 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_4, i32 %fuckLLVM_6
  %fuckLLVM_8 = load %class.node*, %class.node** %fuckLLVM_7
  %fuckLLVM_9 = bitcast %class.node* %fuckLLVM_8 to %class.node*
  store %class.node* %fuckLLVM_9, %class.node** %fuckLLVM_3
  br label %get_ID10_while_condition

get_ID10_while_condition: 
  %fuckLLVM_10 = load %class.node*, %class.node** %fuckLLVM_3
  %fuckLLVM_11 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_10, i32 0, i32 0
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_14 = icmp ne i32 %fuckLLVM_12, %fuckLLVM_13
  br i1 %fuckLLVM_14, label %get_ID15_while_suite, label %get_ID15_while_out

get_ID15_while_suite: 
  %fuckLLVM_15 = load %class.node*, %class.node** %fuckLLVM_3
  %fuckLLVM_16 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_15, i32 0, i32 2
  %fuckLLVM_17 = load %class.node*, %class.node** %fuckLLVM_16
  %fuckLLVM_18 = bitcast %class.node* %fuckLLVM_17 to %class.node*
  store %class.node* %fuckLLVM_18, %class.node** %fuckLLVM_3
  br label %get_ID10_while_condition

get_ID15_while_out: 
  %fuckLLVM_19 = load %class.node*, %class.node** %fuckLLVM_3
  %fuckLLVM_20 = getelementptr inbounds %class.node, %class.node* %fuckLLVM_19, i32 0, i32 1
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_20
  store i32 %fuckLLVM_21, i32* %fuckLLVM_2
  br label %get_return
  br label %get_return

get_return: 
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_22
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  store i32 0, i32* %fuckLLVM_0
  %fuckLLVM_1 = alloca i32
  %fuckLLVM_2 = mul i64 100, 16
  %fuckLLVM_3 = add i64 %fuckLLVM_2, 4
  %fuckLLVM_4 = call i8* @malloc(i64 %fuckLLVM_3)
  %fuckLLVM_5 = bitcast i8* %fuckLLVM_4 to i32*
  store i32 100, i32* %fuckLLVM_5
  %fuckLLVM_6 = getelementptr inbounds i32, i32* %fuckLLVM_5, i32 1
  %fuckLLVM_7 = bitcast i32* %fuckLLVM_6 to %class.node**
  %fuckLLVM_8 = bitcast %class.node** %fuckLLVM_7 to %class.node**
  store %class.node** %fuckLLVM_8, %class.node*** @fuckLLVM_table
  store i32 0, i32* %fuckLLVM_1
  br label %main_ID8_for_condition

main_ID8_for_condition: 
  %fuckLLVM_9 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_10 = load i32, i32* @fuckLLVM_hashsize
  %fuckLLVM_11 = icmp slt i32 %fuckLLVM_9, %fuckLLVM_10
  br i1 %fuckLLVM_11, label %main_ID8_for_suite, label %main_ID8_for_out

main_ID8_for_suite: 
  %fuckLLVM_12 = load %class.node**, %class.node*** @fuckLLVM_table
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_14 = getelementptr inbounds %class.node*, %class.node** %fuckLLVM_12, i32 %fuckLLVM_13
  store %class.node* null, %class.node** %fuckLLVM_14
  br label %main_ID8_for_incr

main_ID8_for_incr: 
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_16 = add i32 %fuckLLVM_15, 1
  store i32 %fuckLLVM_16, i32* %fuckLLVM_1
  br label %main_ID8_for_condition

main_ID8_for_out: 
  store i32 0, i32* %fuckLLVM_1
  br label %main_ID16_for_condition

main_ID16_for_condition: 
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_18 = icmp slt i32 %fuckLLVM_17, 1000
  br i1 %fuckLLVM_18, label %main_ID16_for_suite, label %main_ID16_for_out

main_ID16_for_suite: 
  %fuckLLVM_19 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_20 = load i32, i32* %fuckLLVM_1
  call void @put(i32 %fuckLLVM_19, i32 %fuckLLVM_20)
  br label %main_ID16_for_incr

main_ID16_for_incr: 
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_23 = add i32 %fuckLLVM_22, 1
  store i32 %fuckLLVM_23, i32* %fuckLLVM_1
  br label %main_ID16_for_condition

main_ID16_for_out: 
  store i32 0, i32* %fuckLLVM_1
  br label %main_ID23_for_condition

main_ID23_for_condition: 
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_25 = icmp slt i32 %fuckLLVM_24, 1000
  br i1 %fuckLLVM_25, label %main_ID23_for_suite, label %main_ID23_for_out

main_ID23_for_suite: 
  %fuckLLVM_26 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_27 = call i8* @toString(i32 %fuckLLVM_26)
  %fuckLLVM_28 = bitcast i8* %fuckLLVM_27 to i8*
  %fuckLLVM_29 = bitcast [2 x i8]* @fuckLLVM_.str.0 to i8*
  %fuckLLVM_30 = call i8* @string_add(i8* %fuckLLVM_28, i8* %fuckLLVM_29)
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_32 = call i32 @get(i32 %fuckLLVM_31)
  %fuckLLVM_33 = call i8* @toString(i32 %fuckLLVM_32)
  %fuckLLVM_34 = bitcast i8* %fuckLLVM_30 to i8*
  %fuckLLVM_35 = bitcast i8* %fuckLLVM_33 to i8*
  %fuckLLVM_36 = call i8* @string_add(i8* %fuckLLVM_34, i8* %fuckLLVM_35)
  %fuckLLVM_37 = bitcast i8* %fuckLLVM_36 to i8*
  call void @println(i8* %fuckLLVM_37)
  br label %main_ID23_for_incr

main_ID23_for_incr: 
  %fuckLLVM_39 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_40 = add i32 %fuckLLVM_39, 1
  store i32 %fuckLLVM_40, i32* %fuckLLVM_1
  br label %main_ID23_for_condition

main_ID23_for_out: 
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_41
}
