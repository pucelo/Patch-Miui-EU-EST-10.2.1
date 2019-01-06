.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method private dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    const-wide/16 v2, 0x400

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static mergeSysMemUsage([JI[JI)V
    .registers 16

    add-int/lit8 v5, p1, 0x0

    aget-wide v2, p0, v5

    add-int/lit8 v5, p3, 0x0

    aget-wide v0, p2, v5

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_22

    add-int/lit8 v5, p1, 0x0

    aput-wide v0, p0, v5

    const/4 v4, 0x1

    :goto_13
    const/16 v5, 0x10

    if-ge v4, v5, :cond_84

    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_22
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_84

    add-int/lit8 v5, p1, 0x0

    add-long v6, v2, v0

    aput-wide v6, p0, v5

    const/4 v4, 0x1

    :goto_2f
    const/16 v5, 0x10

    if-ge v4, v5, :cond_84

    add-int v5, p1, v4

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_47

    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    :cond_47
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p0, v6

    long-to-double v6, v6

    long-to-double v8, v2

    mul-double/2addr v6, v8

    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, p2, v8

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-long v8, v2, v0

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    aput-wide v6, p0, v5

    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_81

    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    :cond_81
    add-int/lit8 v4, v4, 0x3

    goto :goto_2f

    :cond_84
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .registers 21

    const/4 v15, -0x1

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v12, v2, :cond_aa

    const/4 v14, -0x1

    const/4 v10, 0x0

    :goto_9
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v10, v2, :cond_a6

    aget v13, p3, v12

    aget v11, p4, v10

    add-int v2, v13, v11

    mul-int/lit8 v6, v2, 0xe

    int-to-byte v2, v6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_9e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_36

    if-eq v15, v13, :cond_a2

    move v2, v13

    :goto_30
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v15, v13

    :cond_36
    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_46

    if-eq v14, v11, :cond_a4

    move v2, v11

    :goto_3f
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v14, v11

    :cond_46
    const-string/jumbo v2, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v2, " samples:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "  Cached"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string/jumbo v5, "  Free"

    const/4 v7, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string/jumbo v5, "  ZRam"

    const/4 v7, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string/jumbo v5, "  Kernel"

    const/16 v7, 0xa

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string/jumbo v5, "  Native"

    const/16 v7, 0xd

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    :cond_a2
    const/4 v2, -0x1

    goto :goto_30

    :cond_a4
    const/4 v2, -0x1

    goto :goto_3f

    :cond_a6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_aa
    return-void
.end method

.method public getTotalMemUsage()[J
    .registers 8

    const/16 v6, 0x10

    new-array v5, v6, [J

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    return-object v5
.end method

.method public mergeStats(I[JI)V
    .registers 9

    int-to-byte v3, p1

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v0

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_1d

    invoke-virtual {p1, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    invoke-virtual {p1, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method
