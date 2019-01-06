.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    return-void
.end method

.method public constructor <init>(I[J)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .registers 12

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-ltz p3, :cond_26

    shr-long v2, p1, p3

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 p3, p3, -0x4

    if-nez v1, :cond_f

    if-eqz v0, :cond_1

    :cond_f
    const/4 v1, 0x1

    if-ltz v0, :cond_1d

    const/16 v2, 0x9

    if-gt v0, v2, :cond_1d

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1d
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_26
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .registers 20

    iget v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-wide v6, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-ltz v9, :cond_3c

    if-lez p1, :cond_3c

    iget-object v8, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    sub-long v2, p4, v6

    const/4 v4, 0x0

    :goto_11
    if-ge v4, p1, :cond_37

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v8, v12, v8, v13, v9}, Ljava/lang/System;->arraycopy([JI[JII)V

    sub-int v9, p1, v4

    int-to-long v12, v9

    div-long v10, v2, v12

    sub-long/2addr v2, v10

    const-wide v12, 0xffffffffffL

    cmp-long v9, v10, v12

    if-lez v9, :cond_2f

    const-wide v10, 0xffffffffffL

    :cond_2f
    or-long v12, v10, p2

    const/4 v9, 0x0

    aput-wide v12, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_37
    add-int/2addr v5, p1

    array-length v9, v8

    if-le v5, v9, :cond_3c

    array-length v5, v8

    :cond_3c
    iput v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    move-wide/from16 v0, p4

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public clearTime()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .registers 21

    iget-object v7, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v0, :cond_9

    const-wide/16 v10, -0x1

    return-wide v10

    :cond_9
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_3d

    aget-wide v10, v7, v1

    const-wide/high16 v12, 0xff000000000000L

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shr-long v2, v10, v12

    aget-wide v10, v7, v1

    const-wide/high16 v12, -0x100000000000000L

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shr-long v4, v10, v12

    and-long v10, v4, p1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3a

    and-long v10, v2, p1

    cmp-long v10, v10, p3

    if-nez v10, :cond_3a

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, v7, v1

    const-wide v12, 0xffffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_3d
    if-gtz v6, :cond_42

    const-wide/16 v10, -0x1

    return-wide v10

    :cond_42
    if-eqz p5, :cond_47

    const/4 v10, 0x0

    aput v6, p5, v10

    :cond_47
    int-to-long v10, v6

    div-long v10, v8, v10

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    return-wide v10
.end method

.method public computeTimePerLevel()J
    .registers 11

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_9

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_9
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1a

    aget-wide v6, v2, v0

    const-wide v8, 0xffffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    int-to-long v6, v1

    div-long v6, v4, v6

    return-wide v6
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .registers 19

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    :goto_7
    if-ge v6, v2, :cond_49

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-eq v3, v7, :cond_49

    add-int/lit8 v6, v6, 0x1

    sparse-switch v3, :sswitch_data_e0

    goto :goto_7

    :sswitch_19
    const-wide/high16 v12, 0x200000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_1d
    const-wide/16 v12, 0x0

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_21
    const-wide/high16 v12, 0x1000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_25
    const-wide/high16 v12, 0x2000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_29
    const-wide/high16 v12, 0x3000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_2d
    const-wide/high16 v12, 0x4000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_31
    const-wide/high16 v12, 0x8000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_35
    const-wide/16 v12, 0x0

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_39
    const-wide/high16 v12, 0x100000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_3d
    const-wide/high16 v12, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_41
    const-wide/high16 v12, 0x400000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :sswitch_45
    const-wide/high16 v12, 0x800000000000000L

    or-long/2addr v10, v12

    goto :goto_7

    :cond_49
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v8, 0x0

    :cond_4d
    :goto_4d
    if-ge v6, v2, :cond_88

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-eq v3, v7, :cond_88

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    shl-long/2addr v8, v7

    const/16 v7, 0x30

    if-lt v3, v7, :cond_6a

    const/16 v7, 0x39

    if-gt v3, v7, :cond_6a

    add-int/lit8 v7, v3, -0x30

    int-to-long v12, v7

    add-long/2addr v8, v12

    goto :goto_4d

    :cond_6a
    const/16 v7, 0x61

    if-lt v3, v7, :cond_79

    const/16 v7, 0x66

    if-gt v3, v7, :cond_79

    add-int/lit8 v7, v3, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v8, v12

    goto :goto_4d

    :cond_79
    const/16 v7, 0x41

    if-lt v3, v7, :cond_4d

    const/16 v7, 0x46

    if-gt v3, v7, :cond_4d

    add-int/lit8 v7, v3, -0x41

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v8, v12

    goto :goto_4d

    :cond_88
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x28

    shl-long v12, v8, v7

    const-wide v14, 0xff0000000000L

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    const-wide/16 v4, 0x0

    :cond_97
    :goto_97
    if-ge v6, v2, :cond_d2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-eq v3, v7, :cond_d2

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    shl-long/2addr v4, v7

    const/16 v7, 0x30

    if-lt v3, v7, :cond_b4

    const/16 v7, 0x39

    if-gt v3, v7, :cond_b4

    add-int/lit8 v7, v3, -0x30

    int-to-long v12, v7

    add-long/2addr v4, v12

    goto :goto_97

    :cond_b4
    const/16 v7, 0x61

    if-lt v3, v7, :cond_c3

    const/16 v7, 0x66

    if-gt v3, v7, :cond_c3

    add-int/lit8 v7, v3, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v4, v12

    goto :goto_97

    :cond_c3
    const/16 v7, 0x41

    if-lt v3, v7, :cond_97

    const/16 v7, 0x46

    if-gt v3, v7, :cond_97

    add-int/lit8 v7, v3, -0x41

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v4, v12

    goto :goto_97

    :cond_d2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v12, 0xffffffffffL

    and-long/2addr v12, v4

    or-long/2addr v12, v10

    aput-wide v12, v7, p1

    return-void

    :sswitch_data_e0
    .sparse-switch
        0x44 -> :sswitch_19
        0x46 -> :sswitch_35
        0x49 -> :sswitch_45
        0x4f -> :sswitch_39
        0x50 -> :sswitch_41
        0x5a -> :sswitch_3d
        0x64 -> :sswitch_25
        0x66 -> :sswitch_1d
        0x69 -> :sswitch_31
        0x6f -> :sswitch_21
        0x70 -> :sswitch_2d
        0x7a -> :sswitch_29
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .registers 14

    const/16 v10, 0x2d

    iget-object v7, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v4, v7, p1

    const-wide v8, 0xffffffffffL

    and-long v0, v4, v8

    const-wide v8, 0xff0000000000L

    and-long/2addr v8, v4

    const/16 v7, 0x28

    shr-long/2addr v8, v7

    long-to-int v3, v8

    const-wide/high16 v8, 0xff000000000000L

    and-long/2addr v8, v4

    const/16 v7, 0x30

    shr-long/2addr v8, v7

    long-to-int v2, v8

    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v8, v4

    const/16 v7, 0x38

    shr-long/2addr v8, v7

    long-to-int v6, v8

    and-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_98

    :goto_2c
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_35

    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_3e

    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    and-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_a4

    :goto_45
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_4e

    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4e
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_57

    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v8, v3

    const/4 v7, 0x4

    invoke-direct {p0, v8, v9, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x24

    invoke-direct {p0, v0, v1, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    return-void

    :pswitch_68
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    :pswitch_6e
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    :pswitch_74
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    :pswitch_7a
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    :pswitch_80
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    :pswitch_86
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    :pswitch_8c
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    :pswitch_92
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_68
        :pswitch_6e
        :pswitch_74
        :pswitch_7a
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_80
        :pswitch_86
        :pswitch_8c
        :pswitch_92
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLevelAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModModeAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v2, v2

    if-le v0, v2, :cond_23

    new-instance v2, Landroid/os/ParcelFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more step durations than available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_33

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 6

    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method
