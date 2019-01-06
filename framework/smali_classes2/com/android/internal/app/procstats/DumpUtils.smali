.class public final Lcom/android/internal/app/procstats/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field public static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field static final STATE_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Persist"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Top    "

    aput-object v1, v0, v4

    const-string/jumbo v1, "ImpFg  "

    aput-object v1, v0, v5

    const-string/jumbo v1, "ImpBg  "

    aput-object v1, v0, v6

    const-string/jumbo v1, "Backup "

    aput-object v1, v0, v7

    const-string/jumbo v1, "HeavyWt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Service"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ServRst"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Receivr"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Home   "

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "LastAct"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "CchAct "

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "CchCAct"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "CchEmty"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "on"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "norm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mod"

    aput-object v1, v0, v4

    const-string/jumbo v1, "low"

    aput-object v1, v0, v5

    const-string/jumbo v1, "crit"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pers"

    aput-object v1, v0, v3

    const-string/jumbo v1, "top"

    aput-object v1, v0, v4

    const-string/jumbo v1, "impfg"

    aput-object v1, v0, v5

    const-string/jumbo v1, "impbg"

    aput-object v1, v0, v6

    const-string/jumbo v1, "backup"

    aput-object v1, v0, v7

    const-string/jumbo v1, "heavy"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "service"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "service-rs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "receiver"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "home"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "lastact"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "cch-activity"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "cch-aclient"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "cch-empty"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "n"

    aput-object v1, v0, v3

    const-string/jumbo v1, "m"

    aput-object v1, v0, v4

    const-string/jumbo v1, "l"

    aput-object v1, v0, v5

    const-string/jumbo v1, "c"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "p"

    aput-object v1, v0, v3

    const-string/jumbo v1, "t"

    aput-object v1, v0, v4

    const-string/jumbo v1, "f"

    aput-object v1, v0, v5

    const-string/jumbo v1, "b"

    aput-object v1, v0, v6

    const-string/jumbo v1, "u"

    aput-object v1, v0, v7

    const-string/jumbo v1, "w"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "s"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "x"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "r"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "h"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "l"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "a"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "c"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_14

    const-string/jumbo v2, ""

    return-object v2

    :cond_14
    if-lt v0, v1, :cond_23

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_23

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_23
    return-object p1
.end method

.method public static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .registers 16

    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_21

    const/4 v0, 0x0

    :goto_6
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1e

    add-int v2, v0, v1

    aget-wide v4, p2, v2

    if-ne p3, v2, :cond_12

    sub-long v6, p6, p4

    add-long/2addr v4, v6

    :cond_12
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1b

    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_21
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    const-string/jumbo v1, "process"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "vers"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "\t"

    if-eqz p2, :cond_77

    move-object v3, p3

    :goto_24
    if-eqz p4, :cond_7a

    move-object/from16 v2, p5

    :goto_28
    if-eqz p6, :cond_7d

    move-object/from16 v1, p7

    :goto_2c
    invoke-static {p0, v4, v3, v2, v1}, Lcom/android/internal/app/procstats/DumpUtils;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    :goto_38
    if-ltz v10, :cond_7f

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v1

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v1, "\t"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v10, v10, -0x1

    goto :goto_38

    :cond_77
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_24

    :cond_7a
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_28

    :cond_7d
    const/4 v1, 0x0

    goto :goto_2c

    :cond_7f
    return-void
.end method

.method public static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    :goto_6
    if-ltz v10, :cond_1f

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .registers 20

    const-wide/16 v8, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    :goto_4
    const/16 v10, 0x8

    if-ge v1, v10, :cond_4f

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_a
    const/4 v10, 0x4

    if-ge v0, v10, :cond_4c

    add-int v5, v0, v1

    aget-wide v6, p2, v5

    const-string/jumbo v4, ""

    if-ne p3, v5, :cond_1e

    sub-long v10, p6, p4

    add-long/2addr v6, v10

    if-eqz p0, :cond_1e

    const-string/jumbo v4, " (running)"

    :cond_1e
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_45

    if-eqz p0, :cond_44

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eq v3, v1, :cond_48

    move v10, v1

    :goto_2c
    invoke-static {p0, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v3, v1

    if-eq v2, v0, :cond_4a

    move v10, v0

    :goto_33
    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v2, v0

    const-string/jumbo v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_44
    add-long/2addr v8, v6

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_48
    const/4 v10, -0x1

    goto :goto_2c

    :cond_4a
    const/4 v10, -0x1

    goto :goto_33

    :cond_4c
    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    :cond_4f
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_66

    if-eqz p0, :cond_66

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "    TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_66
    return-wide v8
.end method

.method private static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .registers 15

    const/4 v9, 0x1

    if-eqz p2, :cond_4e

    array-length v2, p2

    :goto_4
    if-eqz p3, :cond_50

    array-length v0, p3

    :goto_7
    if-eqz p4, :cond_52

    array-length v1, p4

    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_5a

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_57

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v1, :cond_54

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz p2, :cond_22

    array-length v7, p2

    if-le v7, v9, :cond_22

    aget v7, p2, v5

    invoke-static {p0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    const/4 v6, 0x1

    :cond_22
    if-eqz p3, :cond_35

    array-length v7, p3

    if-le v7, v9, :cond_35

    if-eqz v6, :cond_2f

    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2f
    aget v7, p3, v3

    invoke-static {p0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    const/4 v6, 0x1

    :cond_35
    if-eqz p4, :cond_4b

    array-length v7, p4

    if-le v7, v9, :cond_4b

    if-eqz v6, :cond_42

    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_42
    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v8, p4, v4

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_4e
    const/4 v2, 0x1

    goto :goto_4

    :cond_50
    const/4 v0, 0x1

    goto :goto_7

    :cond_52
    const/4 v1, 0x1

    goto :goto_a

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_5a
    return-void
.end method

.method public static printAdjTag(Ljava/io/PrintWriter;I)V
    .registers 4

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    return-void
.end method

.method public static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 6

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTag(Ljava/io/PrintWriter;I)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .registers 6

    div-int v0, p2, p3

    if-ltz v0, :cond_11

    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_c
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    :cond_11
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_c
.end method

.method public static printMemLabel(Ljava/io/PrintWriter;IC)V
    .registers 4

    packed-switch p1, :pswitch_data_4e

    const-string/jumbo v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    const-string/jumbo v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_e

    :pswitch_1d
    const-string/jumbo v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_e

    :pswitch_29
    const-string/jumbo v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_e

    :pswitch_35
    const-string/jumbo v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_e

    :pswitch_41
    const-string/jumbo v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_e

    nop

    :pswitch_data_4e
    .packed-switch -0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_29
        :pswitch_35
        :pswitch_41
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 3

    if-ltz p1, :cond_c

    const/4 v0, 0x3

    if-gt p1, v0, :cond_d

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static printPercent(Ljava/io/PrintWriter;D)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_24

    const-string/jumbo v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1d
    const-string/jumbo v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_24
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3d

    const-string/jumbo v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    :cond_3d
    const-string/jumbo v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static printProcStateTag(Ljava/io/PrintWriter;I)V
    .registers 4

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    return-void
.end method

.method public static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 6

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public static printScreenLabel(Ljava/io/PrintWriter;I)V
    .registers 3

    packed-switch p1, :pswitch_data_20

    :pswitch_3
    const-string/jumbo v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_a
    const-string/jumbo v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_11
    const-string/jumbo v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_18
    const-string/jumbo v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    nop

    :pswitch_data_20
    .packed-switch -0x1
        :pswitch_a
        :pswitch_11
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_18
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 4

    packed-switch p1, :pswitch_data_1c

    :pswitch_3
    const-string/jumbo v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_13
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_13
    .end packed-switch
.end method
