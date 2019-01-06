.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# static fields
.field private static final synthetic -android-renderscript-Element$DataKindSwitchesValues:[I

.field private static final synthetic -android-renderscript-Element$DataTypeSwitchesValues:[I


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method private static synthetic -getandroid-renderscript-Element$DataKindSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_6b

    :goto_18
    :try_start_18
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_21} :catch_69

    :goto_21
    :try_start_21
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2b} :catch_67

    :goto_2b
    :try_start_2b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_65

    :goto_34
    :try_start_34
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_63

    :goto_3d
    :try_start_3d
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_61

    :goto_46
    :try_start_46
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_5f

    :goto_50
    :try_start_50
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5d

    :goto_5a
    sput-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    return-object v0

    :catch_5d
    move-exception v1

    goto :goto_5a

    :catch_5f
    move-exception v1

    goto :goto_50

    :catch_61
    move-exception v1

    goto :goto_46

    :catch_63
    move-exception v1

    goto :goto_3d

    :catch_65
    move-exception v1

    goto :goto_34

    :catch_67
    move-exception v1

    goto :goto_2b

    :catch_69
    move-exception v1

    goto :goto_21

    :catch_6b
    move-exception v1

    goto :goto_18
.end method

.method private static synthetic -getandroid-renderscript-Element$DataTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_182

    :goto_17
    :try_start_17
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_17f

    :goto_20
    :try_start_20
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_17c

    :goto_29
    :try_start_29
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_179

    :goto_32
    :try_start_32
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_176

    :goto_3c
    :try_start_3c
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_173

    :goto_46
    :try_start_46
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_170

    :goto_50
    :try_start_50
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_16d

    :goto_5a
    :try_start_5a
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_16a

    :goto_64
    :try_start_64
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_167

    :goto_6e
    :try_start_6e
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_164

    :goto_78
    :try_start_78
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_161

    :goto_82
    :try_start_82
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_15e

    :goto_8c
    :try_start_8c
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_15b

    :goto_96
    :try_start_96
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_158

    :goto_a0
    :try_start_a0
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_155

    :goto_aa
    :try_start_aa
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_152

    :goto_b4
    :try_start_b4
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_be} :catch_14f

    :goto_be
    :try_start_be
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c8} :catch_14c

    :goto_c8
    :try_start_c8
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d1} :catch_14a

    :goto_d1
    :try_start_d1
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_da} :catch_148

    :goto_da
    :try_start_da
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e3} :catch_146

    :goto_e3
    :try_start_e3
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_144

    :goto_ed
    :try_start_ed
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_142

    :goto_f7
    :try_start_f7
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_140

    :goto_101
    :try_start_101
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_13e

    :goto_10b
    :try_start_10b
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_13c

    :goto_115
    :try_start_115
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_13a

    :goto_11f
    :try_start_11f
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_138

    :goto_129
    :try_start_129
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    return-object v0

    :catch_136
    move-exception v1

    goto :goto_133

    :catch_138
    move-exception v1

    goto :goto_129

    :catch_13a
    move-exception v1

    goto :goto_11f

    :catch_13c
    move-exception v1

    goto :goto_115

    :catch_13e
    move-exception v1

    goto :goto_10b

    :catch_140
    move-exception v1

    goto :goto_101

    :catch_142
    move-exception v1

    goto :goto_f7

    :catch_144
    move-exception v1

    goto :goto_ed

    :catch_146
    move-exception v1

    goto :goto_e3

    :catch_148
    move-exception v1

    goto :goto_da

    :catch_14a
    move-exception v1

    goto :goto_d1

    :catch_14c
    move-exception v1

    goto/16 :goto_c8

    :catch_14f
    move-exception v1

    goto/16 :goto_be

    :catch_152
    move-exception v1

    goto/16 :goto_b4

    :catch_155
    move-exception v1

    goto/16 :goto_aa

    :catch_158
    move-exception v1

    goto/16 :goto_a0

    :catch_15b
    move-exception v1

    goto/16 :goto_96

    :catch_15e
    move-exception v1

    goto/16 :goto_8c

    :catch_161
    move-exception v1

    goto/16 :goto_82

    :catch_164
    move-exception v1

    goto/16 :goto_78

    :catch_167
    move-exception v1

    goto/16 :goto_6e

    :catch_16a
    move-exception v1

    goto/16 :goto_64

    :catch_16d
    move-exception v1

    goto/16 :goto_5a

    :catch_170
    move-exception v1

    goto/16 :goto_50

    :catch_173
    move-exception v1

    goto/16 :goto_46

    :catch_176
    move-exception v1

    goto/16 :goto_3c

    :catch_179
    move-exception v1

    goto/16 :goto_32

    :catch_17c
    move-exception v1

    goto/16 :goto_29

    :catch_17f
    move-exception v1

    goto/16 :goto_20

    :catch_182
    move-exception v1

    goto/16 :goto_17
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_27

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_27

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_27

    const/4 v0, 0x3

    if-ne p7, v0, :cond_21

    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    :goto_18
    iput-object p4, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iput-object p5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    iput-boolean p6, p0, Landroid/renderscript/Element;->mNormalized:Z

    iput p7, p0, Landroid/renderscript/Element;->mVectorSize:I

    return-void

    :cond_21
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p7

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_18

    :cond_27
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_18
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iput-object p4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iput-object p5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iput-object p6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    const/4 v0, 0x0

    :goto_1f
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v0

    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_3d
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method

.method public static ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    :cond_12
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    :cond_13
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_14

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit p0

    :cond_14
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .registers 20

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_33

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Unsupported DataKind"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_5a

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_5a

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_5a

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_5a

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_5a

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Unsupported DataType"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5a
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6f

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_6f

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6f
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_84

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_84

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_84
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_99

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_99

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_99
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_ae

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_ae

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ae
    const/4 v8, 0x1

    invoke-static {}, Landroid/renderscript/Element;->-getandroid-renderscript-Element$DataKindSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e4

    :goto_bc
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9

    :pswitch_db
    const/4 v8, 0x2

    goto :goto_bc

    :pswitch_dd
    const/4 v8, 0x3

    goto :goto_bc

    :pswitch_df
    const/4 v8, 0x4

    goto :goto_bc

    :pswitch_e1
    const/4 v8, 0x2

    goto :goto_bc

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_db
        :pswitch_dd
        :pswitch_df
    .end packed-switch
.end method

.method static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .registers 19

    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .registers 20

    const/4 v2, 0x2

    move/from16 v0, p2

    if-lt v0, v2, :cond_a

    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_13

    :cond_a
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Vector size out of range 2-4."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {}, Landroid/renderscript/Element;->-getandroid-renderscript-Element$DataTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Cannot create vector of non-primitive type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_29
    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .registers 9

    const/16 v7, 0x23

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v5, :cond_8

    return-void

    :cond_8
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1e

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_1b

    add-int/lit8 v4, v4, 0x1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_25
    if-ge v0, v3, :cond_3b

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3c

    iget-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    aput v0, v5, v2

    :goto_37
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_25

    :cond_3b
    return-void

    :cond_3c
    move v1, v2

    goto :goto_37
.end method


# virtual methods
.method public getBytesSize()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/renderscript/Element$DataKind;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/renderscript/Element$DataType;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public getSubElement(I)Landroid/renderscript/Element;
    .registers 4

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .registers 4

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    return v0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .registers 4

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_d

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1d

    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/renderscript/Element;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v0

    :cond_9
    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    iget v3, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v3, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    if-eq v2, v3, :cond_24

    iget-object v2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v3, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v2, v3, :cond_24

    iget v2, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v3, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-ne v2, v3, :cond_22

    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21

    :cond_24
    move v0, v1

    goto :goto_21
.end method

.method public isComplex()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return v2
.end method

.method updateFromNative()V
    .registers 15

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    const/4 v1, 0x5

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13, v0}, Landroid/renderscript/RenderScript;->nElementGetNativeData(J[I)V

    const/4 v1, 0x2

    aget v1, v0, v1

    if-ne v1, v2, :cond_40

    move v1, v2

    :goto_19
    iput-boolean v1, p0, Landroid/renderscript/Element;->mNormalized:Z

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iput v3, p0, Landroid/renderscript/Element;->mSize:I

    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v5

    array-length v6, v5

    move v1, v3

    :goto_28
    if-ge v1, v6, :cond_42

    aget-object v8, v5, v1

    iget v11, v8, Landroid/renderscript/Element$DataType;->mID:I

    aget v12, v0, v3

    if-ne v11, v12, :cond_3d

    iput-object v8, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v11, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v11, v11, Landroid/renderscript/Element$DataType;->mSize:I

    iget v12, p0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v11, v12

    iput v11, p0, Landroid/renderscript/Element;->mSize:I

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_40
    move v1, v3

    goto :goto_19

    :cond_42
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v1

    array-length v5, v1

    :goto_47
    if-ge v3, v5, :cond_56

    aget-object v7, v1, v3

    iget v6, v7, Landroid/renderscript/Element$DataKind;->mID:I

    aget v11, v0, v2

    if-ne v6, v11, :cond_53

    iput-object v7, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_56
    const/4 v1, 0x4

    aget v10, v0, v1

    if-lez v10, :cond_ac

    new-array v1, v10, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    new-array v1, v10, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mArraySizes:[I

    new-array v1, v10, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    new-array v4, v10, [J

    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nElementGetSubElements(J[J[Ljava/lang/String;[I)V

    const/4 v9, 0x0

    :goto_7d
    if-ge v9, v10, :cond_ac

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v2, Landroid/renderscript/Element;

    aget-wide v12, v4, v9

    iget-object v3, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v12, v13, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    aput-object v2, v1, v9

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v9

    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v9

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v9

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_7d

    :cond_ac
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method
