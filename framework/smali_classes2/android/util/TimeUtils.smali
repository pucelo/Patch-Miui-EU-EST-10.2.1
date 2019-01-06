.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const/16 v2, 0x1d

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;

    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 9

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v1, 0x3e7

    if-le p0, v1, :cond_12

    const/4 v0, 0x0

    :goto_8
    if-eqz p0, :cond_f

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_8

    :cond_f
    add-int v1, v0, p1

    return v1

    :cond_12
    const/16 v1, 0x63

    if-gt p0, v1, :cond_1a

    if-eqz p2, :cond_1d

    if-lt p3, v4, :cond_1d

    :cond_1a
    add-int/lit8 v1, p1, 0x3

    return v1

    :cond_1d
    const/16 v1, 0x9

    if-gt p0, v1, :cond_25

    if-eqz p2, :cond_28

    if-lt p3, v3, :cond_28

    :cond_25
    add-int/lit8 v1, p1, 0x2

    return v1

    :cond_28
    if-nez p2, :cond_2c

    if-lez p0, :cond_2f

    :cond_2c
    add-int/lit8 v1, p1, 0x1

    return v1

    :cond_2f
    return v2
.end method

.method private static extractZoneIds(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZone;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_d
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 10

    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7

    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit v2

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 25

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_d

    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    :cond_d
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_30

    const/4 v5, 0x0

    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    :goto_1a
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_29

    add-int/lit8 v5, v16, 0x1

    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    goto :goto_1a

    :cond_29
    const/16 v4, 0x30

    aput-char v4, v2, v16

    add-int/lit8 v4, v16, 0x1

    return v4

    :cond_30
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_bb

    const/16 v17, 0x2b

    :goto_38
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const v4, 0x15180

    move/from16 v0, v18

    if-lt v0, v4, :cond_5e

    const v4, 0x15180

    div-int v3, v18, v4

    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    :cond_5e
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-lt v0, v4, :cond_6c

    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    :cond_6c
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-lt v0, v4, :cond_78

    div-int/lit8 v14, v18, 0x3c

    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    :cond_78
    const/4 v5, 0x0

    if-eqz p2, :cond_cc

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    if-lez v15, :cond_c4

    const/4 v4, 0x1

    :goto_85
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_c6

    const/4 v4, 0x1

    :goto_8f
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_c8

    const/4 v4, 0x1

    :goto_99
    const/4 v6, 0x1

    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_ca

    const/4 v4, 0x3

    :goto_a5
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    :goto_ae
    move/from16 v0, p2

    if-ge v15, v0, :cond_cc

    const/16 v4, 0x20

    aput-char v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_ae

    :cond_bb
    const/16 v17, 0x2d

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_38

    :cond_c4
    const/4 v4, 0x0

    goto :goto_85

    :cond_c6
    const/4 v4, 0x0

    goto :goto_8f

    :cond_c8
    const/4 v4, 0x0

    goto :goto_99

    :cond_ca
    const/4 v4, 0x0

    goto :goto_a5

    :cond_cc
    aput-char v17, v2, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v5

    if-eqz p2, :cond_12a

    const/16 v20, 0x1

    :goto_d6
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    move/from16 v0, v19

    if-eq v5, v0, :cond_12d

    const/4 v10, 0x1

    :goto_e3
    if-eqz v20, :cond_12f

    const/4 v11, 0x2

    :goto_e6
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    move/from16 v0, v19

    if-eq v5, v0, :cond_131

    const/4 v10, 0x1

    :goto_f4
    if-eqz v20, :cond_133

    const/4 v11, 0x2

    :goto_f7
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    move/from16 v0, v19

    if-eq v5, v0, :cond_135

    const/4 v10, 0x1

    :goto_105
    if-eqz v20, :cond_137

    const/4 v11, 0x2

    :goto_108
    const/16 v8, 0x73

    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    if-eqz v20, :cond_139

    move/from16 v0, v19

    if-eq v5, v0, :cond_139

    const/4 v11, 0x3

    :goto_119
    const/16 v8, 0x6d

    const/4 v10, 0x1

    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    const/16 v4, 0x73

    aput-char v4, v2, v5

    add-int/lit8 v4, v5, 0x1

    return v4

    :cond_12a
    const/16 v20, 0x0

    goto :goto_d6

    :cond_12d
    const/4 v10, 0x0

    goto :goto_e3

    :cond_12f
    const/4 v11, 0x0

    goto :goto_e6

    :cond_131
    const/4 v10, 0x0

    goto :goto_f4

    :cond_133
    const/4 v11, 0x0

    goto :goto_f7

    :cond_135
    const/4 v10, 0x0

    goto :goto_105

    :cond_137
    const/4 v11, 0x0

    goto :goto_108

    :cond_139
    const/4 v11, 0x0

    goto :goto_119
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_a
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .registers 8

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2c
    cmp-long v2, v0, v4

    if-gez v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 13

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v6

    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v0

    move-object v1, p4

    move v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneByCountryAndOffset(Ljava/lang/String;IZJLandroid/icu/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static getIcuTimeZones(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZone;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_7
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/util/TimeZoneFinder;->lookupTimeZonesByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_16
    return-object v0
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneIdsWithUniqueOffsets(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    if-eqz p0, :cond_11

    :try_start_5
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_4a

    monitor-exit v7

    return-object v6

    :cond_11
    monitor-exit v7

    invoke-static {p0}, Landroid/util/TimeUtils;->getIcuTimeZones(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZone;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_44

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZone;

    invoke-virtual {v6}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v3}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v7

    if-ne v6, v7, :cond_4d

    const/4 v0, 0x1

    :cond_44
    if-nez v0, :cond_1f

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :catchall_4a
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_50
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    :try_start_53
    invoke-static {v2}, Landroid/util/TimeUtils;->extractZoneIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;

    sput-object p0, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5f

    monitor-exit v7

    return-object v6

    :catchall_5f
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .registers 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_2a

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2a
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .registers 11

    if-nez p4, :cond_4

    if-lez p1, :cond_5b

    :cond_4
    move v1, p3

    const/16 v3, 0x3e7

    if-le p1, v3, :cond_2e

    const/4 v2, 0x0

    :goto_a
    if-eqz p1, :cond_1f

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    rem-int/lit8 v0, p1, 0xa

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 p1, p1, 0xa

    goto :goto_a

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    :goto_21
    if-ltz v2, :cond_57

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v3, v3, v2

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_2e
    if-eqz p4, :cond_5c

    const/4 v3, 0x3

    if-lt p5, v3, :cond_5c

    :goto_33
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v3, v0, 0x64

    sub-int/2addr p1, v3

    :cond_3f
    if-eqz p4, :cond_61

    const/4 v3, 0x2

    if-lt p5, v3, :cond_61

    :cond_44
    :goto_44
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v3, v0, 0xa

    sub-int/2addr p1, v3

    :cond_50
    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_57
    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_5b
    return p3

    :cond_5c
    const/16 v3, 0x63

    if-le p1, v3, :cond_3f

    goto :goto_33

    :cond_61
    const/16 v3, 0x9

    if-gt p1, v3, :cond_44

    if-eq v1, p3, :cond_50

    goto :goto_44
.end method
