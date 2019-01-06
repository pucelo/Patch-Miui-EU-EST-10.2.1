.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x2

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x3

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x12

    new-array v0, v1, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    new-array v0, v1, [J

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_e6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_132

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    return-void

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_4e
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    :array_9a
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    :array_e6
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_132
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 8

    const/4 v2, 0x6

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v2, [I

    fill-array-data v1, :array_48

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v1, v2, [I

    fill-array-data v1, :array_58

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    :array_48
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_58
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 8

    const/4 v1, 0x0

    const/16 v0, 0xa

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    if-ne p2, p3, :cond_1a

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2

    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .registers 10

    if-eqz p2, :cond_d

    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    :goto_6
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    return-wide v2

    :cond_a
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_6

    :cond_d
    if-eqz p1, :cond_12

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_6

    :cond_12
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .registers 7

    const/16 v5, -0x2bc

    const/16 v4, -0x320

    const/16 v3, -0x384

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1a

    const-string/jumbo v0, "cch"

    const-string/jumbo v1, "  "

    const/16 v2, 0x384

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const/16 v0, 0x320

    if-lt p0, v0, :cond_28

    const-string/jumbo v0, "svcb "

    const/16 v1, 0x320

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_36

    const-string/jumbo v0, "prev "

    const/16 v1, 0x2bc

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    const/16 v0, 0x258

    if-lt p0, v0, :cond_44

    const-string/jumbo v0, "home "

    const/16 v1, 0x258

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_44
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_52

    const-string/jumbo v0, "svc  "

    const/16 v1, 0x1f4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    const/16 v0, 0x190

    if-lt p0, v0, :cond_60

    const-string/jumbo v0, "hvy  "

    const/16 v1, 0x190

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_60
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6e

    const-string/jumbo v0, "bkup "

    const/16 v1, 0x12c

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6e
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7c

    const-string/jumbo v0, "prcp "

    const/16 v1, 0xc8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7c
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8a

    const-string/jumbo v0, "vis  "

    const/16 v1, 0x64

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8a
    if-ltz p0, :cond_95

    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_95
    if-lt p0, v5, :cond_9f

    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9f
    if-lt p0, v4, :cond_a9

    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a9
    if-lt p0, v3, :cond_b3

    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b3
    if-lt p0, v1, :cond_bd

    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_bd
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_54

    const-string/jumbo v0, "??"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "PER "

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "PERU"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "TOP "

    goto :goto_6

    :pswitch_13
    const-string/jumbo v0, "BFGS"

    goto :goto_6

    :pswitch_17
    const-string/jumbo v0, "FGS "

    goto :goto_6

    :pswitch_1b
    const-string/jumbo v0, "TPSL"

    goto :goto_6

    :pswitch_1f
    const-string/jumbo v0, "IMPF"

    goto :goto_6

    :pswitch_23
    const-string/jumbo v0, "IMPB"

    goto :goto_6

    :pswitch_27
    const-string/jumbo v0, "TRNB"

    goto :goto_6

    :pswitch_2b
    const-string/jumbo v0, "BKUP"

    goto :goto_6

    :pswitch_2f
    const-string/jumbo v0, "HVY "

    goto :goto_6

    :pswitch_33
    const-string/jumbo v0, "SVC "

    goto :goto_6

    :pswitch_37
    const-string/jumbo v0, "RCVR"

    goto :goto_6

    :pswitch_3b
    const-string/jumbo v0, "HOME"

    goto :goto_6

    :pswitch_3f
    const-string/jumbo v0, "LAST"

    goto :goto_6

    :pswitch_43
    const-string/jumbo v0, "CAC "

    goto :goto_6

    :pswitch_47
    const-string/jumbo v0, "CACC"

    goto :goto_6

    :pswitch_4b
    const-string/jumbo v0, "CEM "

    goto :goto_6

    :pswitch_4f
    const-string/jumbo v0, "NONE"

    goto :goto_6

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3

    if-eqz p0, :cond_6

    const/16 v0, 0x2710

    :goto_4
    int-to-long v0, v0

    return-wide v0

    :cond_6
    const/16 v0, 0x3a98

    goto :goto_4
.end method

.method private static openLmkdSocket()Z
    .registers 5

    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_21

    const/4 v1, 0x1

    return v1

    :catch_21
    move-exception v0

    sget-object v1, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final remove(I)V
    .registers 3

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final setOomAdj(III)V
    .registers 13

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_5d

    const-string/jumbo v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .registers 28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x15e

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43af0000    # 350.0f

    div-float v18, v19, v20

    const v10, 0x5dc00

    const v9, 0xfa000

    mul-int v19, p1, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x48bb8000    # 384000.0f

    sub-float v19, v19, v20

    const v20, 0x9c400

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    cmpl-float v19, v18, v17

    if-lez v19, :cond_a7

    move/from16 v16, v18

    :goto_35
    const/16 v19, 0x0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_aa

    const/16 v16, 0x0

    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e005f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e005e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    sget-object v19, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_b3

    const/4 v7, 0x1

    :goto_5d
    const/4 v6, 0x0

    :goto_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v19, v0

    aget v8, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    aget v5, v19, v6

    if-eqz v7, :cond_89

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v6, v0, :cond_b5

    mul-int/lit8 v19, v5, 0x3

    div-int/lit8 v5, v19, 0x2

    :cond_89
    :goto_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-int v21, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    :cond_a7
    move/from16 v16, v17

    goto :goto_35

    :cond_aa
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v16, v19

    if-lez v19, :cond_3d

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_b3
    const/4 v7, 0x0

    goto :goto_5d

    :cond_b5
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v6, v0, :cond_89

    mul-int/lit8 v19, v5, 0x7

    div-int/lit8 v5, v19, 0x4

    goto :goto_89

    :cond_c0
    if-ltz v11, :cond_110

    const/4 v6, 0x0

    :goto_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_110

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    :cond_110
    if-eqz v12, :cond_178

    const/4 v6, 0x0

    :goto_113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_178

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v20, v19, v6

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    aget v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    if-gez v19, :cond_175

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v20, v19, v6

    :cond_175
    add-int/lit8 v6, v6, 0x1

    goto :goto_113

    :cond_178
    const/16 v19, 0x38a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int v19, p1, p2

    mul-int/lit8 v19, v19, 0x4

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    div-int/lit16 v13, v0, 0x400

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e004b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e004a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-ltz v14, :cond_1b3

    move v13, v14

    :cond_1b3
    if-eqz v15, :cond_1b9

    add-int/2addr v13, v15

    if-gez v13, :cond_1b9

    const/4 v13, 0x0

    :cond_1b9
    if-eqz p3, :cond_21d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    :goto_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_210

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d8

    :cond_210
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    const-string/jumbo v19, "sys.sysctl.extra_free_kbytes"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .registers 10

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v2, v4, :cond_39

    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_19

    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v4

    if-nez v4, :cond_19

    const-wide/16 v4, 0x3e8

    :try_start_11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_17

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_17
    move-exception v3

    goto :goto_14

    :cond_19
    :try_start_19
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    sget-object v4, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error writing to lowmemorykiller socket"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_31
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_3a

    :goto_36
    sput-object v8, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_14

    :cond_39
    return-void

    :catch_3a
    move-exception v1

    goto :goto_36
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_1f
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2
.end method
