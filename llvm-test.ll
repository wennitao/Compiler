@fuckLLVM_N = global i32 0
@fuckLLVM_head = global i32 0
@fuckLLVM_startx = global i32 0
@fuckLLVM_starty = global i32 0
@fuckLLVM_targetx = global i32 0
@fuckLLVM_targety = global i32 0
@fuckLLVM_x = global i32 0
@fuckLLVM_y = global i32 0
@fuckLLVM_xlist = global i32* null
@fuckLLVM_ylist = global i32* null
@fuckLLVM_tail = global i32 0
@fuckLLVM_ok = global i32 0
@fuckLLVM_now = global i32 0
@fuckLLVM_dx = global i32* null
@fuckLLVM_dy = global i32* null
@fuckLLVM_step = global i32** null
@fuckLLVM_i = global i32 0
@fuckLLVM_j = global i32 0
@fuckLLVM_.str.0 = private constant [14 x i8] c"no solution!\0A\00"

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
  %fuckLLVM_0 = mul i64 12000, 4
  %fuckLLVM_1 = add i64 %fuckLLVM_0, 4
  %fuckLLVM_2 = call i8* @malloc(i64 %fuckLLVM_1)
  %fuckLLVM_3 = bitcast i8* %fuckLLVM_2 to i32*
  store i32 12000, i32* %fuckLLVM_3
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 1
  %fuckLLVM_5 = bitcast i32* %fuckLLVM_4 to i32*
  %fuckLLVM_6 = bitcast i32* %fuckLLVM_5 to i32*
  store i32* %fuckLLVM_6, i32** @fuckLLVM_xlist
  %fuckLLVM_7 = mul i64 12000, 4
  %fuckLLVM_8 = add i64 %fuckLLVM_7, 4
  %fuckLLVM_9 = call i8* @malloc(i64 %fuckLLVM_8)
  %fuckLLVM_10 = bitcast i8* %fuckLLVM_9 to i32*
  store i32 12000, i32* %fuckLLVM_10
  %fuckLLVM_11 = getelementptr inbounds i32, i32* %fuckLLVM_10, i32 1
  %fuckLLVM_12 = bitcast i32* %fuckLLVM_11 to i32*
  %fuckLLVM_13 = bitcast i32* %fuckLLVM_12 to i32*
  store i32* %fuckLLVM_13, i32** @fuckLLVM_ylist
  %fuckLLVM_14 = mul i64 8, 4
  %fuckLLVM_15 = add i64 %fuckLLVM_14, 4
  %fuckLLVM_16 = call i8* @malloc(i64 %fuckLLVM_15)
  %fuckLLVM_17 = bitcast i8* %fuckLLVM_16 to i32*
  store i32 8, i32* %fuckLLVM_17
  %fuckLLVM_18 = getelementptr inbounds i32, i32* %fuckLLVM_17, i32 1
  %fuckLLVM_19 = bitcast i32* %fuckLLVM_18 to i32*
  %fuckLLVM_20 = bitcast i32* %fuckLLVM_19 to i32*
  store i32* %fuckLLVM_20, i32** @fuckLLVM_dx
  %fuckLLVM_21 = mul i64 9, 4
  %fuckLLVM_22 = add i64 %fuckLLVM_21, 4
  %fuckLLVM_23 = call i8* @malloc(i64 %fuckLLVM_22)
  %fuckLLVM_24 = bitcast i8* %fuckLLVM_23 to i32*
  store i32 9, i32* %fuckLLVM_24
  %fuckLLVM_25 = getelementptr inbounds i32, i32* %fuckLLVM_24, i32 1
  %fuckLLVM_26 = bitcast i32* %fuckLLVM_25 to i32*
  %fuckLLVM_27 = bitcast i32* %fuckLLVM_26 to i32*
  store i32* %fuckLLVM_27, i32** @fuckLLVM_dy
  br label %__init_return

__init_return: 
  ret void
}
define void @origin(i32 %fuckLLVM_0) {
origin_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  store i32 0, i32* @fuckLLVM_head
  store i32 0, i32* @fuckLLVM_tail
  %fuckLLVM_3 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_4 = zext i32 %fuckLLVM_3 to i64
  %fuckLLVM_5 = mul i64 %fuckLLVM_4, 8
  %fuckLLVM_6 = add i64 %fuckLLVM_5, 4
  %fuckLLVM_7 = call i8* @malloc(i64 %fuckLLVM_6)
  %fuckLLVM_8 = bitcast i8* %fuckLLVM_7 to i32*
  store i32 %fuckLLVM_3, i32* %fuckLLVM_8
  %fuckLLVM_9 = getelementptr inbounds i32, i32* %fuckLLVM_8, i32 1
  %fuckLLVM_10 = bitcast i32* %fuckLLVM_9 to i32**
  %fuckLLVM_11 = bitcast i32** %fuckLLVM_10 to i32**
  store i32** %fuckLLVM_11, i32*** @fuckLLVM_step
  store i32 0, i32* @fuckLLVM_i
  br label %origin_ID11_for_condition

origin_ID11_for_condition: 
  %fuckLLVM_12 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_14 = icmp slt i32 %fuckLLVM_12, %fuckLLVM_13
  br i1 %fuckLLVM_14, label %origin_ID11_for_suite, label %origin_ID11_for_out

origin_ID11_for_suite: 
  %fuckLLVM_15 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_16 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_17 = getelementptr inbounds i32*, i32** %fuckLLVM_15, i32 %fuckLLVM_16
  %fuckLLVM_18 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_19 = zext i32 %fuckLLVM_18 to i64
  %fuckLLVM_20 = mul i64 %fuckLLVM_19, 4
  %fuckLLVM_21 = add i64 %fuckLLVM_20, 4
  %fuckLLVM_22 = call i8* @malloc(i64 %fuckLLVM_21)
  %fuckLLVM_23 = bitcast i8* %fuckLLVM_22 to i32*
  store i32 %fuckLLVM_18, i32* %fuckLLVM_23
  %fuckLLVM_24 = getelementptr inbounds i32, i32* %fuckLLVM_23, i32 1
  %fuckLLVM_25 = bitcast i32* %fuckLLVM_24 to i32*
  %fuckLLVM_26 = bitcast i32* %fuckLLVM_25 to i32*
  store i32* %fuckLLVM_26, i32** %fuckLLVM_17
  store i32 0, i32* @fuckLLVM_j
  br label %origin_ID26_for_condition

origin_ID26_for_condition: 
  %fuckLLVM_27 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_28 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_29 = icmp slt i32 %fuckLLVM_27, %fuckLLVM_28
  br i1 %fuckLLVM_29, label %origin_ID26_for_suite, label %origin_ID26_for_out

origin_ID26_for_suite: 
  %fuckLLVM_30 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_31 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_32 = getelementptr inbounds i32*, i32** %fuckLLVM_30, i32 %fuckLLVM_31
  %fuckLLVM_33 = load i32*, i32** %fuckLLVM_32
  %fuckLLVM_34 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_35 = getelementptr inbounds i32, i32* %fuckLLVM_33, i32 %fuckLLVM_34
  store i32 0, i32* %fuckLLVM_35
  br label %origin_ID26_for_incr

origin_ID26_for_incr: 
  %fuckLLVM_36 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_37 = add i32 %fuckLLVM_36, 1
  store i32 %fuckLLVM_37, i32* @fuckLLVM_j
  br label %origin_ID26_for_condition

origin_ID26_for_out: 
  br label %origin_ID11_for_incr

origin_ID11_for_incr: 
  %fuckLLVM_38 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_39 = add i32 %fuckLLVM_38, 1
  store i32 %fuckLLVM_39, i32* @fuckLLVM_i
  br label %origin_ID11_for_condition

origin_ID11_for_out: 
  br label %origin_return

origin_return: 
  ret void
}
define i8 @check(i32 %fuckLLVM_0) {
check_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  %fuckLLVM_2 = alloca i8
  %fuckLLVM_3 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_4 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_5 = icmp slt i32 %fuckLLVM_3, %fuckLLVM_4
  br i1 %fuckLLVM_5, label %check_ID5_AndAnd_true, label %check_ID5_AndAnd_out

check_ID5_AndAnd_true: 
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_7 = icmp sge i32 %fuckLLVM_6, 0
  br label %check_ID5_AndAnd_out

check_ID5_AndAnd_out: 
  %fuckLLVM_8 = phi i1 [ false, %check_entry ], [ %fuckLLVM_7, %check_ID5_AndAnd_true ]
  %fuckLLVM_9 = zext i1 %fuckLLVM_8 to i8
  store i8 %fuckLLVM_9, i8* %fuckLLVM_2
  br label %check_return
  br label %check_return

check_return: 
  %fuckLLVM_10 = load i8, i8* %fuckLLVM_2
  ret i8 %fuckLLVM_10
}
define void @addList(i32 %fuckLLVM_0, i32 %fuckLLVM_1) {
addList_entry: 
  %fuckLLVM_2 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_6 = call i8 @check(i32 %fuckLLVM_5)
  %fuckLLVM_7 = trunc i8 %fuckLLVM_6 to i1
  br i1 %fuckLLVM_7, label %addList_ID6_AndAnd_true, label %addList_ID6_AndAnd_out

addList_ID6_AndAnd_true: 
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_9 = call i8 @check(i32 %fuckLLVM_8)
  %fuckLLVM_10 = trunc i8 %fuckLLVM_9 to i1
  br label %addList_ID6_AndAnd_out

addList_ID6_AndAnd_out: 
  %fuckLLVM_11 = phi i1 [ false, %addList_entry ], [ %fuckLLVM_10, %addList_ID6_AndAnd_true ]
  br i1 %fuckLLVM_11, label %addList_ID11_AndAnd_true, label %addList_ID11_AndAnd_out

addList_ID11_AndAnd_true: 
  %fuckLLVM_12 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_14 = getelementptr inbounds i32*, i32** %fuckLLVM_12, i32 %fuckLLVM_13
  %fuckLLVM_15 = load i32*, i32** %fuckLLVM_14
  %fuckLLVM_16 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_17 = getelementptr inbounds i32, i32* %fuckLLVM_15, i32 %fuckLLVM_16
  %fuckLLVM_18 = load i32, i32* %fuckLLVM_17
  %fuckLLVM_19 = sub i32 0, 1
  %fuckLLVM_20 = icmp eq i32 %fuckLLVM_18, %fuckLLVM_19
  br label %addList_ID11_AndAnd_out

addList_ID11_AndAnd_out: 
  %fuckLLVM_21 = phi i1 [ false, %addList_ID6_AndAnd_out ], [ %fuckLLVM_20, %addList_ID11_AndAnd_true ]
  br i1 %fuckLLVM_21, label %addList_ID21_if_true, label %addList_ID21_if_out

addList_ID42_AndAnd_true: 
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_44 = load i32, i32* @fuckLLVM_targety
  %fuckLLVM_45 = icmp eq i32 %fuckLLVM_43, %fuckLLVM_44
  br label %addList_ID42_AndAnd_out

addList_ID42_AndAnd_out: 
  %fuckLLVM_46 = phi i1 [ false, %addList_ID21_if_true ], [ %fuckLLVM_45, %addList_ID42_AndAnd_true ]
  br i1 %fuckLLVM_46, label %addList_ID46_if_true, label %addList_ID46_if_out

addList_ID46_if_true: 
  store i32 1, i32* @fuckLLVM_ok
  br label %addList_ID46_if_out

addList_ID46_if_out: 
  br label %addList_ID21_if_out

addList_ID21_if_true: 
  %fuckLLVM_22 = load i32, i32* @fuckLLVM_tail
  %fuckLLVM_23 = add i32 %fuckLLVM_22, 1
  store i32 %fuckLLVM_23, i32* @fuckLLVM_tail
  %fuckLLVM_24 = load i32*, i32** @fuckLLVM_xlist
  %fuckLLVM_25 = load i32, i32* @fuckLLVM_tail
  %fuckLLVM_26 = getelementptr inbounds i32, i32* %fuckLLVM_24, i32 %fuckLLVM_25
  %fuckLLVM_27 = load i32, i32* %fuckLLVM_2
  store i32 %fuckLLVM_27, i32* %fuckLLVM_26
  %fuckLLVM_28 = load i32*, i32** @fuckLLVM_ylist
  %fuckLLVM_29 = load i32, i32* @fuckLLVM_tail
  %fuckLLVM_30 = getelementptr inbounds i32, i32* %fuckLLVM_28, i32 %fuckLLVM_29
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_3
  store i32 %fuckLLVM_31, i32* %fuckLLVM_30
  %fuckLLVM_32 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_33 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_34 = getelementptr inbounds i32*, i32** %fuckLLVM_32, i32 %fuckLLVM_33
  %fuckLLVM_35 = load i32*, i32** %fuckLLVM_34
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_37 = getelementptr inbounds i32, i32* %fuckLLVM_35, i32 %fuckLLVM_36
  %fuckLLVM_38 = load i32, i32* @fuckLLVM_now
  %fuckLLVM_39 = add i32 %fuckLLVM_38, 1
  store i32 %fuckLLVM_39, i32* %fuckLLVM_37
  %fuckLLVM_40 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_41 = load i32, i32* @fuckLLVM_targetx
  %fuckLLVM_42 = icmp eq i32 %fuckLLVM_40, %fuckLLVM_41
  br i1 %fuckLLVM_42, label %addList_ID42_AndAnd_true, label %addList_ID42_AndAnd_out

addList_ID21_if_out: 
  br label %addList_return

addList_return: 
  ret void
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  store i32 0, i32* %fuckLLVM_0
  call void @origin(i32 106)
  %fuckLLVM_2 = call i32 @getInt()
  store i32 %fuckLLVM_2, i32* @fuckLLVM_N
  %fuckLLVM_3 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_4 = sub i32 %fuckLLVM_3, 1
  store i32 %fuckLLVM_4, i32* @fuckLLVM_targety
  %fuckLLVM_5 = load i32, i32* @fuckLLVM_targety
  store i32 %fuckLLVM_5, i32* @fuckLLVM_targetx
  store i32 0, i32* @fuckLLVM_i
  br label %main_ID5_for_condition

main_ID5_for_condition: 
  %fuckLLVM_6 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_7 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_8 = icmp slt i32 %fuckLLVM_6, %fuckLLVM_7
  br i1 %fuckLLVM_8, label %main_ID5_for_suite, label %main_ID5_for_out

main_ID5_for_suite: 
  store i32 0, i32* @fuckLLVM_j
  br label %main_ID8_for_condition

main_ID8_for_condition: 
  %fuckLLVM_9 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_10 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_11 = icmp slt i32 %fuckLLVM_9, %fuckLLVM_10
  br i1 %fuckLLVM_11, label %main_ID8_for_suite, label %main_ID8_for_out

main_ID8_for_suite: 
  %fuckLLVM_12 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_13 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_14 = getelementptr inbounds i32*, i32** %fuckLLVM_12, i32 %fuckLLVM_13
  %fuckLLVM_15 = load i32*, i32** %fuckLLVM_14
  %fuckLLVM_16 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_17 = getelementptr inbounds i32, i32* %fuckLLVM_15, i32 %fuckLLVM_16
  %fuckLLVM_18 = sub i32 0, 1
  store i32 %fuckLLVM_18, i32* %fuckLLVM_17
  br label %main_ID8_for_incr

main_ID8_for_incr: 
  %fuckLLVM_19 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_20 = add i32 %fuckLLVM_19, 1
  store i32 %fuckLLVM_20, i32* @fuckLLVM_j
  br label %main_ID8_for_condition

main_ID8_for_out: 
  br label %main_ID5_for_incr

main_ID5_for_incr: 
  %fuckLLVM_21 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_22 = add i32 %fuckLLVM_21, 1
  store i32 %fuckLLVM_22, i32* @fuckLLVM_i
  br label %main_ID5_for_condition

main_ID5_for_out: 
  %fuckLLVM_23 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_24 = getelementptr inbounds i32, i32* %fuckLLVM_23, i32 0
  %fuckLLVM_25 = sub i32 0, 2
  store i32 %fuckLLVM_25, i32* %fuckLLVM_24
  %fuckLLVM_26 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_27 = getelementptr inbounds i32, i32* %fuckLLVM_26, i32 0
  %fuckLLVM_28 = sub i32 0, 1
  store i32 %fuckLLVM_28, i32* %fuckLLVM_27
  %fuckLLVM_29 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_30 = getelementptr inbounds i32, i32* %fuckLLVM_29, i32 1
  %fuckLLVM_31 = sub i32 0, 2
  store i32 %fuckLLVM_31, i32* %fuckLLVM_30
  %fuckLLVM_32 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_33 = getelementptr inbounds i32, i32* %fuckLLVM_32, i32 1
  store i32 1, i32* %fuckLLVM_33
  %fuckLLVM_34 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_35 = getelementptr inbounds i32, i32* %fuckLLVM_34, i32 2
  store i32 2, i32* %fuckLLVM_35
  %fuckLLVM_36 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_37 = getelementptr inbounds i32, i32* %fuckLLVM_36, i32 2
  %fuckLLVM_38 = sub i32 0, 1
  store i32 %fuckLLVM_38, i32* %fuckLLVM_37
  %fuckLLVM_39 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_40 = getelementptr inbounds i32, i32* %fuckLLVM_39, i32 3
  store i32 2, i32* %fuckLLVM_40
  %fuckLLVM_41 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_42 = getelementptr inbounds i32, i32* %fuckLLVM_41, i32 3
  store i32 1, i32* %fuckLLVM_42
  %fuckLLVM_43 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_44 = getelementptr inbounds i32, i32* %fuckLLVM_43, i32 4
  %fuckLLVM_45 = sub i32 0, 1
  store i32 %fuckLLVM_45, i32* %fuckLLVM_44
  %fuckLLVM_46 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_47 = getelementptr inbounds i32, i32* %fuckLLVM_46, i32 4
  %fuckLLVM_48 = sub i32 0, 2
  store i32 %fuckLLVM_48, i32* %fuckLLVM_47
  %fuckLLVM_49 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_50 = getelementptr inbounds i32, i32* %fuckLLVM_49, i32 5
  %fuckLLVM_51 = sub i32 0, 1
  store i32 %fuckLLVM_51, i32* %fuckLLVM_50
  %fuckLLVM_52 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_53 = getelementptr inbounds i32, i32* %fuckLLVM_52, i32 5
  store i32 2, i32* %fuckLLVM_53
  %fuckLLVM_54 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_55 = getelementptr inbounds i32, i32* %fuckLLVM_54, i32 6
  store i32 1, i32* %fuckLLVM_55
  %fuckLLVM_56 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_57 = getelementptr inbounds i32, i32* %fuckLLVM_56, i32 6
  %fuckLLVM_58 = sub i32 0, 2
  store i32 %fuckLLVM_58, i32* %fuckLLVM_57
  %fuckLLVM_59 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_60 = getelementptr inbounds i32, i32* %fuckLLVM_59, i32 7
  store i32 1, i32* %fuckLLVM_60
  %fuckLLVM_61 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_62 = getelementptr inbounds i32, i32* %fuckLLVM_61, i32 7
  store i32 2, i32* %fuckLLVM_62
  br label %main_ID63_while_condition

main_ID63_while_condition: 
  %fuckLLVM_63 = load i32, i32* @fuckLLVM_head
  %fuckLLVM_64 = load i32, i32* @fuckLLVM_tail
  %fuckLLVM_65 = icmp sle i32 %fuckLLVM_63, %fuckLLVM_64
  br i1 %fuckLLVM_65, label %main_ID66_while_suite, label %main_ID66_while_out

main_ID80_for_condition: 
  %fuckLLVM_81 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_82 = icmp slt i32 %fuckLLVM_81, 8
  br i1 %fuckLLVM_82, label %main_ID80_for_suite, label %main_ID80_for_out

main_ID80_for_suite: 
  %fuckLLVM_83 = load i32, i32* @fuckLLVM_x
  %fuckLLVM_84 = load i32*, i32** @fuckLLVM_dx
  %fuckLLVM_85 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_86 = getelementptr inbounds i32, i32* %fuckLLVM_84, i32 %fuckLLVM_85
  %fuckLLVM_87 = load i32, i32* %fuckLLVM_86
  %fuckLLVM_88 = add i32 %fuckLLVM_83, %fuckLLVM_87
  %fuckLLVM_89 = load i32, i32* @fuckLLVM_y
  %fuckLLVM_90 = load i32*, i32** @fuckLLVM_dy
  %fuckLLVM_91 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_92 = getelementptr inbounds i32, i32* %fuckLLVM_90, i32 %fuckLLVM_91
  %fuckLLVM_93 = load i32, i32* %fuckLLVM_92
  %fuckLLVM_94 = add i32 %fuckLLVM_89, %fuckLLVM_93
  call void @addList(i32 %fuckLLVM_88, i32 %fuckLLVM_94)
  br label %main_ID80_for_incr

main_ID80_for_incr: 
  %fuckLLVM_96 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_97 = add i32 %fuckLLVM_96, 1
  store i32 %fuckLLVM_97, i32* @fuckLLVM_j
  br label %main_ID80_for_condition

main_ID80_for_out: 
  %fuckLLVM_98 = load i32, i32* @fuckLLVM_ok
  %fuckLLVM_99 = icmp eq i32 %fuckLLVM_98, 1
  br i1 %fuckLLVM_99, label %main_ID99_if_true, label %main_ID99_if_out

main_ID99_if_true: 
  br label %main_ID66_while_out
  br label %main_ID99_if_out

main_ID99_if_out: 
  %fuckLLVM_100 = load i32, i32* @fuckLLVM_head
  %fuckLLVM_101 = add i32 %fuckLLVM_100, 1
  store i32 %fuckLLVM_101, i32* @fuckLLVM_head
  br label %main_ID63_while_condition

main_ID66_while_suite: 
  %fuckLLVM_66 = load i32*, i32** @fuckLLVM_xlist
  %fuckLLVM_67 = load i32, i32* @fuckLLVM_head
  %fuckLLVM_68 = getelementptr inbounds i32, i32* %fuckLLVM_66, i32 %fuckLLVM_67
  %fuckLLVM_69 = load i32, i32* %fuckLLVM_68
  store i32 %fuckLLVM_69, i32* @fuckLLVM_x
  %fuckLLVM_70 = load i32*, i32** @fuckLLVM_ylist
  %fuckLLVM_71 = load i32, i32* @fuckLLVM_head
  %fuckLLVM_72 = getelementptr inbounds i32, i32* %fuckLLVM_70, i32 %fuckLLVM_71
  %fuckLLVM_73 = load i32, i32* %fuckLLVM_72
  store i32 %fuckLLVM_73, i32* @fuckLLVM_y
  %fuckLLVM_74 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_75 = load i32, i32* @fuckLLVM_x
  %fuckLLVM_76 = getelementptr inbounds i32*, i32** %fuckLLVM_74, i32 %fuckLLVM_75
  %fuckLLVM_77 = load i32*, i32** %fuckLLVM_76
  %fuckLLVM_78 = load i32, i32* @fuckLLVM_y
  %fuckLLVM_79 = getelementptr inbounds i32, i32* %fuckLLVM_77, i32 %fuckLLVM_78
  %fuckLLVM_80 = load i32, i32* %fuckLLVM_79
  store i32 %fuckLLVM_80, i32* @fuckLLVM_now
  store i32 0, i32* @fuckLLVM_j
  br label %main_ID80_for_condition

main_ID66_while_out: 
  %fuckLLVM_102 = load i32, i32* @fuckLLVM_ok
  %fuckLLVM_103 = icmp eq i32 %fuckLLVM_102, 1
  br i1 %fuckLLVM_103, label %main_ID103_if_true, label %main_ID103_if_false

main_ID103_if_true: 
  %fuckLLVM_104 = load i32**, i32*** @fuckLLVM_step
  %fuckLLVM_105 = load i32, i32* @fuckLLVM_targetx
  %fuckLLVM_106 = getelementptr inbounds i32*, i32** %fuckLLVM_104, i32 %fuckLLVM_105
  %fuckLLVM_107 = load i32*, i32** %fuckLLVM_106
  %fuckLLVM_108 = load i32, i32* @fuckLLVM_targety
  %fuckLLVM_109 = getelementptr inbounds i32, i32* %fuckLLVM_107, i32 %fuckLLVM_108
  %fuckLLVM_110 = load i32, i32* %fuckLLVM_109
  %fuckLLVM_111 = call i8* @toString(i32 %fuckLLVM_110)
  %fuckLLVM_112 = bitcast i8* %fuckLLVM_111 to i8*
  call void @println(i8* %fuckLLVM_112)
  br label %main_ID103_if_out

main_ID103_if_false: 
  %fuckLLVM_114 = bitcast [14 x i8]* @fuckLLVM_.str.0 to i8*
  call void @print(i8* %fuckLLVM_114)
  br label %main_ID103_if_out

main_ID103_if_out: 
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_116 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_116
}
