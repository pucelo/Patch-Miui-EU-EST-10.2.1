.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_a
    if-ltz p3, :cond_f

    array-length v1, p1

    if-ge v1, p3, :cond_15

    :cond_f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_15
    array-length v1, p2

    if-lt v1, p3, :cond_f

    packed-switch p0, :pswitch_data_30

    :pswitch_1b
    const/4 p0, 0x0

    :goto_1c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2e

    const/4 v0, 0x1

    :goto_25
    return v0

    :pswitch_26
    const/4 p0, 0x0

    goto :goto_1c

    :pswitch_28
    const/4 p0, 0x1

    goto :goto_1c

    :pswitch_2a
    const/4 p0, -0x2

    goto :goto_1c

    :pswitch_2c
    const/4 p0, -0x1

    goto :goto_1c

    :cond_2e
    const/4 v0, -0x1

    goto :goto_25

    :pswitch_data_30
    .packed-switch -0x2
        :pswitch_2c
        :pswitch_28
        :pswitch_1b
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .registers 29

    if-nez p5, :cond_5

    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v21

    :cond_5
    const/16 v21, 0x1

    move/from16 v0, p0

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    const/4 v2, 0x0

    :goto_e
    aget-byte v4, p1, p2

    move v13, v4

    const/16 v17, 0x1

    add-int/lit8 v7, p2, 0x1

    add-int v5, p2, p5

    :goto_17
    if-ge v7, v5, :cond_25

    aget-byte v9, p1, v7

    if-eq v9, v4, :cond_20

    move v4, v9

    add-int/lit8 v17, v17, 0x1

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_23
    const/4 v2, 0x1

    goto :goto_e

    :cond_25
    move/from16 v19, p5

    and-int/lit8 v21, v4, 0x1

    and-int/lit8 v22, v2, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4b

    :cond_31
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_41

    add-int v21, p4, v19

    aget-char v3, p3, v21

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v3, v0, :cond_5c

    add-int/lit8 v19, v19, -0x1

    :cond_41
    :goto_41
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p5

    if-eq v0, v1, :cond_4b

    add-int/lit8 v17, v17, 0x1

    :cond_4b
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6c

    if-ne v13, v2, :cond_6c

    and-int/lit8 v21, v13, 0x1

    if-eqz v21, :cond_69

    sget-object v21, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v21

    :cond_5c
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v3, v0, :cond_31

    const/16 v21, 0x9

    move/from16 v0, v21

    if-eq v3, v0, :cond_31

    goto :goto_41

    :cond_69
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v21

    :cond_6c
    mul-int/lit8 v21, v17, 0x2

    move/from16 v0, v21

    new-array v8, v0, [I

    move v12, v13

    shl-int/lit8 v10, v13, 0x1a

    const/4 v14, 0x1

    move/from16 v16, p2

    move v4, v13

    move/from16 v7, p2

    add-int v5, p2, v19

    move v15, v14

    :goto_7e
    if-ge v7, v5, :cond_a3

    aget-byte v9, p1, v7

    if-eq v9, v4, :cond_13a

    move v4, v9

    if-le v9, v12, :cond_9f

    move v12, v9

    :cond_88
    :goto_88
    add-int/lit8 v14, v15, 0x1

    sub-int v21, v7, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    add-int/lit8 v15, v14, 0x1

    sub-int v21, v7, p2

    aput v21, v8, v14

    shl-int/lit8 v10, v9, 0x1a

    move/from16 v16, v7

    move v14, v15

    :goto_9b
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    goto :goto_7e

    :cond_9f
    if-ge v9, v13, :cond_88

    move v13, v9

    goto :goto_88

    :cond_a3
    add-int v21, p2, v19

    sub-int v21, v21, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_138

    add-int/lit8 v14, v15, 0x1

    aput v19, v8, v14

    add-int/lit8 v14, v14, 0x1

    sub-int v21, p5, v19

    shl-int/lit8 v22, v2, 0x1a

    or-int v21, v21, v22

    aput v21, v8, v14

    :goto_bf
    and-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_f8

    add-int/lit8 v13, v13, 0x1

    if-le v12, v13, :cond_f5

    const/16 v18, 0x1

    :goto_cb
    if-eqz v18, :cond_130

    add-int/lit8 v9, v12, -0x1

    :goto_cf
    if-lt v9, v13, :cond_130

    const/4 v7, 0x0

    :goto_d2
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_12d

    aget v21, v8, v7

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_12a

    add-int/lit8 v5, v7, 0x2

    :goto_e3
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_106

    aget v21, v8, v5

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_106

    add-int/lit8 v5, v5, 0x2

    goto :goto_e3

    :cond_f5
    const/16 v18, 0x0

    goto :goto_cb

    :cond_f8
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_103

    const/16 v18, 0x1

    goto :goto_cb

    :cond_103
    const/16 v18, 0x0

    goto :goto_cb

    :cond_106
    move v11, v7

    add-int/lit8 v6, v5, -0x2

    :goto_109
    if-ge v11, v6, :cond_128

    aget v20, v8, v11

    aget v21, v8, v6

    aput v21, v8, v11

    aput v20, v8, v6

    add-int/lit8 v21, v11, 0x1

    aget v20, v8, v21

    add-int/lit8 v21, v11, 0x1

    add-int/lit8 v22, v6, 0x1

    aget v22, v8, v22

    aput v22, v8, v21

    add-int/lit8 v21, v6, 0x1

    aput v20, v8, v21

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_109

    :cond_128
    add-int/lit8 v7, v5, 0x2

    :cond_12a
    add-int/lit8 v7, v7, 0x2

    goto :goto_d2

    :cond_12d
    add-int/lit8 v9, v9, -0x1

    goto :goto_cf

    :cond_130
    new-instance v21, Landroid/text/Layout$Directions;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v21

    :cond_138
    move v14, v15

    goto :goto_bf

    :cond_13a
    move v14, v15

    goto/16 :goto_9b
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
