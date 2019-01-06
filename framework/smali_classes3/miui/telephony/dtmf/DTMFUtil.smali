.class public Lmiui/telephony/dtmf/DTMFUtil;
.super Ljava/lang/Object;
.source "DTMFUtil.java"


# static fields
.field private static final DECIBEL_THRESHOLD_LIST:[I

.field private static final DEFAULT_SAMPLE_RATE:I = 0x1f40

.field private static final FREQUENCE_INDEX_GAP:I = 0x5

.field private static final HEALTHY:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFUtil"

.field private static final SAMPLE_RATE_LIST:[I

.field private static final STEP:I = 0x100

.field private static final TARGET_FREQUENCIES:[F

.field private static final TARGET_HIGH_FREQUENCY:F = 1075.0f

.field private static final TARGET_LOW_FREQUENCY:F = 600.0f

.field private static final VERSION:I = 0x2


# instance fields
.field private mHealthy:I

.field private mPreCalculatedCosines:[F

.field private mSampleRate:I

.field private mWnkList:[F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    const/16 v0, 0x1f40

    const/16 v1, 0x2b11

    const/16 v2, 0x5622

    const/16 v3, 0x7d00

    const v4, 0xac44

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    const/16 v0, 0x17

    const/16 v1, 0x20

    const/16 v2, 0x1f

    const/16 v3, 0x22

    const/16 v4, 0x25

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    return-void

    nop

    :array_2c
    .array-data 4
        0x44160000    # 600.0f
        0x442e4000    # 697.0f
        0x44408000    # 770.0f
        0x44550000    # 852.0f
        0x446b4000    # 941.0f
        0x44866000    # 1075.0f
        0x44972000    # 1209.0f
        0x44a70000    # 1336.0f
        0x44b8a000    # 1477.0f
        0x44cc2000    # 1633.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x1f40

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lmiui/telephony/dtmf/DTMFUtil;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    if-lez p2, :cond_1b

    :goto_18
    iput p2, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return-void

    :cond_1b
    const/4 p2, 0x3

    goto :goto_18
.end method

.method private bufferFilter([FI)[F
    .registers 12

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    array-length v5, p1

    if-gt v5, v8, :cond_7

    return-object p1

    :cond_7
    new-array v4, v8, [F

    aget v3, p1, v6

    aget v0, p1, v7

    const/4 v1, 0x0

    :goto_e
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_1e

    aget v5, p1, v1

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_1b

    aget v3, p1, v1

    :cond_1b
    add-int/lit8 v1, v1, 0x2

    goto :goto_e

    :cond_1e
    const/4 v2, 0x1

    :goto_1f
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_2f

    aget v5, p1, v2

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_2c

    aget v0, p1, v2

    :cond_2c
    add-int/lit8 v2, v2, 0x2

    goto :goto_1f

    :cond_2f
    aget v5, p1, v6

    cmpl-float v5, v3, v5

    if-nez v5, :cond_44

    aget v5, p1, v7

    cmpl-float v5, v0, v5

    if-nez v5, :cond_44

    aget v5, p1, v6

    aput v5, v4, v6

    aget v5, p1, v7

    aput v5, v4, v7

    return-object v4

    :cond_44
    const/4 v5, 0x0

    return-object v5
.end method

.method private dtmfDetectAndValidate([BIZ)[F
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x100

    new-array v1, v9, [B

    iget v9, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    mul-int/lit8 v9, v9, 0x2

    new-array v3, v9, [F

    new-array v2, v10, [F

    new-instance v7, Lmiui/telephony/dtmf/DTMFAudioInputStream;

    invoke-direct {v7, p1}, Lmiui/telephony/dtmf/DTMFAudioInputStream;-><init>([B)V

    new-instance v0, Lmiui/telephony/dtmf/DTMFDataConveter;

    invoke-direct {v0, p2, p3}, Lmiui/telephony/dtmf/DTMFDataConveter;-><init>(IZ)V

    :cond_1b
    :goto_1b
    iget v9, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ge v8, v9, :cond_22

    array-length v9, p1

    if-lt v6, v9, :cond_30

    :cond_22
    invoke-virtual {v7}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->close()V

    iget v9, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ne v8, v9, :cond_5c

    mul-int/lit8 v9, v8, 0x2

    invoke-direct {p0, v3, v9}, Lmiui/telephony/dtmf/DTMFUtil;->bufferFilter([FI)[F

    move-result-object v9

    return-object v9

    :cond_30
    move v5, v6

    add-int/lit16 v9, v6, 0x100

    array-length v10, p1

    if-le v9, v10, :cond_59

    array-length v6, p1

    :goto_37
    sub-int v9, v6, v5

    invoke-virtual {v7, v1, v9}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read([BI)I

    invoke-virtual {v0, v1}, Lmiui/telephony/dtmf/DTMFDataConveter;->byteToFloat([B)[F

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfFrequenciesDetecter([F)[F

    move-result-object v2

    if-eqz v2, :cond_1b

    mul-int/lit8 v9, v8, 0x2

    const/4 v10, 0x0

    aget v10, v2, v10

    aput v10, v3, v9

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_59
    add-int/lit16 v6, v6, 0x100

    goto :goto_37

    :cond_5c
    return-object v11
.end method

.method private dtmfFrequenciesDetecter([F)[F
    .registers 22

    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v15, v15

    new-array v3, v15, [Z

    const/4 v15, 0x2

    new-array v10, v15, [F

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x1

    aput v15, v10, v16

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x0

    aput v15, v10, v16

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lmiui/telephony/dtmf/DTMFUtil;->getDecibelThreshold(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2b

    const-string/jumbo v15, "DTMFUtil"

    const-string/jumbo v16, "can not get threshold"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_2b
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v15, v15

    new-array v2, v15, [F

    const/4 v7, 0x0

    :goto_34
    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v15, v15

    if-ge v7, v15, :cond_7d

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    :goto_3d
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v6, v15, :cond_53

    move v13, v12

    move v12, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    aget v15, v15, v7

    mul-float/2addr v15, v12

    sub-float/2addr v15, v13

    aget v16, p1, v6

    add-float v11, v15, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_53
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    aget v15, v15, v7

    mul-float/2addr v15, v12

    sub-float v15, v11, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    mul-double v4, v18, v16

    double-to-float v15, v4

    aput v15, v2, v7

    aget v15, v2, v7

    int-to-float v0, v14

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7a

    const/4 v15, 0x1

    aput-boolean v15, v3, v7

    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_7d
    const/4 v8, 0x0

    :goto_7e
    array-length v15, v3

    div-int/lit8 v15, v15, 0x2

    if-ge v8, v15, :cond_b2

    add-int/lit8 v15, v8, 0x5

    sget-object v16, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v9, v15, v16

    aget-boolean v15, v3, v8

    if-eqz v15, :cond_af

    aget-boolean v15, v3, v9

    if-eqz v15, :cond_af

    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v15, v15, v8

    const/16 v16, 0x0

    aput v15, v10, v16

    sget-object v15, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v15, v15, v9

    const/16 v16, 0x1

    aput v15, v10, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmiui/telephony/dtmf/DTMFUtil;->isValidate([F)Z

    move-result v15

    if-eqz v15, :cond_af

    return-object v10

    :cond_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_7e

    :cond_b2
    const/4 v15, 0x0

    return-object v15
.end method

.method private static getAudioFloatBuffer([FII)[F
    .registers 27

    mul-int v13, p1, p2

    div-int/lit16 v12, v13, 0x3e8

    move-object/from16 v0, p0

    array-length v13, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v13, v0, :cond_1a

    const-string/jumbo v13, "DTMFUtil"

    const-string/jumbo v20, "parameter buffer is null"

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    return-object v13

    :cond_1a
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v13, 0x0

    aget v13, p0, v13

    float-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v16, v22, v20

    const/4 v13, 0x1

    aget v13, p0, v13

    float-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v18, v22, v20

    new-array v6, v12, [F

    const/4 v7, 0x0

    :goto_3b
    array-length v13, v6

    if-ge v7, v13, :cond_66

    int-to-double v0, v7

    move-wide/from16 v20, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v14, v20, v22

    mul-double v20, v16, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v8, v22, v20

    mul-double v20, v18, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v10, v22, v20

    add-double v20, v8, v10

    move-wide/from16 v0, v20

    double-to-float v13, v0

    aput v13, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_66
    return-object v6
.end method

.method private getDecibelThreshold(I)I
    .registers 6

    const/4 v3, -0x1

    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v1, v1

    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    array-length v2, v2

    if-eq v1, v2, :cond_13

    const-string/jumbo v1, "DTMFUtil"

    const-string/jumbo v2, "the number of SAMPLE_RATE_LIST and DECIBEL_THRESHOLD_LIST can not match"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_13
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_15
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v1, v1

    if-ge v0, v1, :cond_20

    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_2f

    :cond_20
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v1, v1

    if-lt v0, v1, :cond_32

    const-string/jumbo v1, "DTMFUtil"

    const-string/jumbo v2, "can not find db threshold"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_32
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    aget v1, v1, v0

    return v1
.end method

.method public static getDualFrequence(C)[F
    .registers 8

    const v6, 0x44b8a000    # 1477.0f

    const/high16 v5, 0x44a70000    # 1336.0f

    const v4, 0x44972000    # 1209.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [F

    packed-switch p0, :pswitch_data_76

    :pswitch_10
    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v3

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v2

    :goto_18
    return-object v0

    :pswitch_19
    const v1, 0x446b4000    # 941.0f

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_18

    :pswitch_21
    const v1, 0x442e4000    # 697.0f

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_18

    :pswitch_29
    const v1, 0x442e4000    # 697.0f

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_18

    :pswitch_31
    const v1, 0x442e4000    # 697.0f

    aput v1, v0, v2

    aput v6, v0, v3

    goto :goto_18

    :pswitch_39
    const v1, 0x44408000    # 770.0f

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_18

    :pswitch_41
    const v1, 0x44408000    # 770.0f

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_18

    :pswitch_49
    const v1, 0x44408000    # 770.0f

    aput v1, v0, v2

    aput v6, v0, v3

    goto :goto_18

    :pswitch_51
    const/high16 v1, 0x44550000    # 852.0f

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_18

    :pswitch_58
    const/high16 v1, 0x44550000    # 852.0f

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_18

    :pswitch_5f
    const/high16 v1, 0x44550000    # 852.0f

    aput v1, v0, v2

    aput v6, v0, v3

    goto :goto_18

    :pswitch_66
    const v1, 0x446b4000    # 941.0f

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_18

    :pswitch_6e
    const v1, 0x446b4000    # 941.0f

    aput v1, v0, v2

    aput v6, v0, v3

    goto :goto_18

    :pswitch_data_76
    .packed-switch 0x23
        :pswitch_6e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_66
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_19
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_39
        :pswitch_41
        :pswitch_49
        :pswitch_51
        :pswitch_58
        :pswitch_5f
    .end packed-switch
.end method

.method public static getTargetHighFrequency()F
    .registers 1

    const v0, 0x44866000    # 1075.0f

    return v0
.end method

.method public static getTargetLowFrequency()F
    .registers 1

    const/high16 v0, 0x44160000    # 600.0f

    return v0
.end method

.method public static getVersion()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method private initPrecalculatedCosines()V
    .registers 11

    iget v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    if-nez v5, :cond_e

    const-string/jumbo v5, "DTMFUtil"

    const-string/jumbo v6, "fail to dispatching funtion initPrecalculatedCosines: you need to set mSampleRate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v4, 0x0

    :goto_f
    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v5, v5

    if-ge v4, v5, :cond_4b

    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v5, v5, v4

    float-to-double v6, v5

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v6, v8

    iget v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v0, v8, v6

    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    double-to-float v6, v0

    aput v6, v5, v4

    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v5, v5, v4

    float-to-double v6, v5

    const-wide v8, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    mul-double/2addr v6, v8

    iget v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    iget-object v5, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    double-to-float v6, v2

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_4b
    return-void
.end method

.method private isValidate([F)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_e

    const-string/jumbo v4, "DTMFUtil"

    const-string/jumbo v5, "null parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e
    const/high16 v2, 0x43860000    # 268.0f

    aget v4, p1, v7

    aget v5, p1, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x43860000    # 268.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1c

    return v6

    :cond_1c
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1f
    sget-object v4, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v4, v4

    if-ge v3, v4, :cond_3d

    aget v4, p1, v6

    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2f

    move v0, v3

    :cond_2f
    aget v4, p1, v7

    sget-object v5, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3a

    move v1, v3

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_3d
    sub-int v4, v1, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_43

    return v7

    :cond_43
    return v6
.end method


# virtual methods
.method public getHealthy()I
    .registers 2

    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    return v0
.end method

.method public parseFrequency([BIZ)[F
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v0, "DTMFUtil"

    const-string/jumbo v1, "parameter error: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfDetectAndValidate([BIZ)[F

    move-result-object v0

    return-object v0
.end method

.method public setHealthy(I)V
    .registers 2

    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2

    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    return-void
.end method
