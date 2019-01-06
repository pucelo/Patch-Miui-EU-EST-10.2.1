.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .registers 20

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    const/4 v10, 0x0

    :goto_6
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_58

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    iget-object v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-nez v4, :cond_2b

    :cond_28
    :goto_28
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_2b
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_28

    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v5, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v6, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    const/4 v7, 0x0

    invoke-direct {v8, v7, v4, v5, v6}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    if-nez v2, :cond_51

    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    invoke-virtual {v9, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_28

    :cond_58
    const/4 v10, 0x0

    :goto_59
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_a8

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-nez v4, :cond_74

    :goto_71
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    :cond_74
    const-string/jumbo v4, "c,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v3, p1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    goto :goto_71

    :cond_a8
    return-void
.end method

.method private estimateBuckets()I
    .registers 5

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .registers 13

    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    :cond_19
    :goto_19
    if-eqz v2, :cond_33

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_21
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v2, v0, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    goto :goto_19

    :cond_33
    return-object v0
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static multiplySafe(JJJ)J
    .registers 22

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    mul-long v6, p0, p2

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    or-long v12, v2, v4

    const/16 v14, 0x1f

    ushr-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3e

    const-wide/16 v12, 0x0

    cmp-long v12, p2, v12

    if-eqz v12, :cond_32

    div-long v12, v6, p2

    cmp-long v12, v12, p0

    if-eqz v12, :cond_32

    :cond_25
    move-wide/from16 v0, p2

    long-to-double v12, v0

    move-wide/from16 v0, p4

    long-to-double v14, v0

    div-double/2addr v12, v14

    move-wide/from16 v0, p0

    long-to-double v14, v0

    mul-double/2addr v12, v14

    double-to-long v12, v12

    return-wide v12

    :cond_32
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, p0, v12

    if-nez v12, :cond_3e

    const-wide/16 v12, -0x1

    cmp-long v12, p2, v12

    if-eqz v12, :cond_25

    :cond_3e
    div-long v12, v6, p4

    return-wide v12
.end method

.method private noteRecordedHistory(JJJ)V
    .registers 10

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    :cond_8
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_10

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    :cond_10
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .registers 11

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    if-nez v0, :cond_2f

    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .registers 5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_18
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public clearDirty()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    const-string/jumbo v3, "ident="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " uid="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v3, " set="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v3}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " tag="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v3}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_8

    :cond_5f
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 14

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "cell"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "eth"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "bt"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    return-void
.end method

.method public getEndMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .registers 5

    const-wide v2, 0x7fffffffffffffffL

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-wide v2

    :cond_c
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .registers 64

    move/from16 v0, p3

    move/from16 v1, p12

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v11

    if-nez v11, :cond_3b

    new-instance v11, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Network stats history of uid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is forbidden for caller "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3b
    sub-long v22, p9, p7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move-wide/from16 v28, v0

    div-long v22, v22, v28

    move-wide/from16 v0, v22

    long-to-int v10, v0

    new-instance v4, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, p6

    invoke-direct {v4, v0, v1, v10, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    cmp-long v11, p7, p9

    if-nez v11, :cond_5c

    return-object v4

    :cond_5c
    const-wide/16 v12, -0x1

    if-eqz p2, :cond_124

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v14

    :goto_64
    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    const-wide/16 v22, -0x1

    cmp-long v11, v14, v22

    if-eqz v11, :cond_b2

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_72
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b2

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/Pair;

    move-object/from16 v0, v34

    iget-object v11, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/time/ZonedDateTime;

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v38

    move-object/from16 v0, v34

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/time/ZonedDateTime;

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v36

    cmp-long v11, v38, v14

    if-gtz v11, :cond_72

    cmp-long v11, v14, v36

    if-gez v11, :cond_72

    move-wide/from16 v12, v38

    move-wide/from16 v0, p7

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v0, p9

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v8

    :cond_b2
    const-wide/16 v22, -0x1

    cmp-long v11, v12, v22

    if-eqz v11, :cond_d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v8

    :cond_d0
    const/16 v42, 0x0

    :goto_d2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move/from16 v0, v42

    if-ge v0, v11, :cond_128

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    move/from16 v0, v42

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/net/NetworkStatsCollection$Key;

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move/from16 v0, p3

    if-ne v11, v0, :cond_121

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v0, p4

    invoke-static {v0, v11}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v11

    if-eqz v11, :cond_121

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v0, p5

    if-ne v11, v0, :cond_121

    move-object/from16 v0, v44

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v11

    if-eqz v11, :cond_121

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    move/from16 v0, v42

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v4 .. v9}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    :cond_121
    add-int/lit8 v42, v42, 0x1

    goto :goto_d2

    :cond_124
    const-wide/16 v14, -0x1

    goto/16 :goto_64

    :cond_128
    const-wide/16 v22, -0x1

    cmp-long v11, v12, v22

    if-eqz v11, :cond_253

    const/16 v16, 0x0

    move-object v11, v4

    invoke-virtual/range {v11 .. v16}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v35

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v28, 0x0

    cmp-long v11, v22, v28

    if-eqz v11, :cond_14d

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v28, 0x0

    cmp-long v11, v22, v28

    if-nez v11, :cond_168

    :cond_14d
    new-instance v17, Landroid/net/NetworkStats$Entry;

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x1

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    invoke-direct/range {v17 .. v27}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V

    move-object v11, v4

    move-object/from16 v16, v17

    invoke-virtual/range {v11 .. v16}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    move-object v11, v4

    move-object/from16 v16, v35

    invoke-virtual/range {v11 .. v16}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    :cond_168
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v20, v22, v28

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v16

    invoke-static/range {v16 .. v21}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v46

    move-wide/from16 v22, v16

    move-wide/from16 v26, v20

    invoke-static/range {v22 .. v27}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v48

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v32

    const/16 v42, 0x0

    :goto_198
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v11

    move/from16 v0, v42

    if-ge v0, v11, :cond_205

    move/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v22, v0

    cmp-long v11, v22, v12

    if-ltz v11, :cond_202

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v28, v0

    add-long v22, v22, v28

    cmp-long v11, v22, v14

    if-gtz v11, :cond_202

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v28, v0

    move-wide/from16 v26, v46

    move-wide/from16 v30, v18

    invoke-static/range {v26 .. v31}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-wide/from16 v26, v48

    move-wide/from16 v30, v24

    invoke-static/range {v26 .. v31}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    :cond_202
    add-int/lit8 v42, v42, 0x1

    goto :goto_198

    :cond_205
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v22

    sub-long v40, v22, v32

    const-wide/16 v22, 0x0

    cmp-long v11, v40, v22

    if-eqz v11, :cond_238

    const-string/jumbo v11, "NetworkStats"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Augmented network usage by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_238
    new-instance v26, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object/from16 v27, v4

    move-wide/from16 v28, p7

    move-wide/from16 v30, p9

    invoke-virtual/range {v26 .. v31}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-object v26

    :cond_253
    return-object v4
.end method

.method public getRelevantUids(I)[I
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRelevantUids(II)[I
    .registers 8

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v4, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    if-gez v1, :cond_2c

    not-int v1, v1

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v3, v1, v4}, Landroid/util/IntArray;->add(II)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2f
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    return-object v4
.end method

.method public getStartMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .registers 22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v13, Landroid/net/NetworkStats;

    sub-long v4, p4, p2

    const/16 v6, 0x18

    invoke-direct {v13, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    cmp-long v4, p2, p4

    if-nez v4, :cond_12

    return-object v13

    :cond_12
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_19
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v11, v4, :cond_9d

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v4}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_96

    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move/from16 v0, p7

    move/from16 v1, p6

    invoke-static {v4, v0, v1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v4

    if-eqz v4, :cond_96

    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_96

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v4

    if-eqz v4, :cond_99

    const/4 v4, 0x1

    :goto_6c
    iput v4, v2, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v4

    if-eqz v4, :cond_9b

    const/4 v4, 0x1

    :goto_77
    iput v4, v2, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v13, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_96
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    :cond_99
    const/4 v4, 0x0

    goto :goto_6c

    :cond_9b
    const/4 v4, 0x0

    goto :goto_77

    :cond_9d
    return-object v13
.end method

.method public getTotalBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const v13, 0x414e4554

    if-eq v7, v13, :cond_23

    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    packed-switch v12, :pswitch_data_7e

    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_44
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v2, 0x0

    :goto_49
    if-ge v2, v4, :cond_7c

    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v5, 0x0

    :goto_57
    if-ge v5, v9, :cond_79

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    new-instance v1, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x10
        :pswitch_44
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    :try_start_6
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_8a
    .catchall {:try_start_6 .. :try_end_14} :catchall_88

    :try_start_14
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const v11, 0x414e4554

    if-eq v8, v11, :cond_3d

    new-instance v11, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unexpected magic: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_37} :catch_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_5e

    :catch_37
    move-exception v0

    move-object v4, v5

    :goto_39
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_3c
    return-void

    :cond_3d
    :try_start_3d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    packed-switch v10, :pswitch_data_8c

    new-instance v11, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unexpected version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_5e} :catch_37
    .catchall {:try_start_3d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v11

    move-object v4, v5

    :goto_60
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    :pswitch_64
    :try_start_64
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v2, 0x0

    :goto_69
    if-ge v2, v9, :cond_83

    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-direct {v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    new-instance v7, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v7, v3, v11, v12, v13}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    invoke-direct {p0, v7, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_80} :catch_37
    .catchall {:try_start_64 .. :try_end_80} :catchall_5e

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_83
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v4, v5

    goto :goto_3c

    :catchall_88
    move-exception v11

    goto :goto_60

    :catch_8a
    move-exception v0

    goto :goto_39

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_64
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v9, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    :try_start_8
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v18, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_c4
    .catchall {:try_start_8 .. :try_end_18} :catchall_c2

    :try_start_18
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    const v18, 0x414e4554

    move/from16 v0, v18

    if-eq v12, v0, :cond_45

    new-instance v18, Ljava/net/ProtocolException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected magic: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_3f} :catch_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_6a

    :catch_3f
    move-exception v2

    move-object v7, v8

    :goto_41
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_44
    return-void

    :cond_45
    :try_start_45
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    packed-switch v17, :pswitch_data_c8

    new-instance v18, Ljava/net/ProtocolException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_6a} :catch_3f
    .catchall {:try_start_45 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v18

    move-object v7, v8

    :goto_6c
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v18

    :pswitch_70
    :try_start_70
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/4 v4, 0x0

    :goto_75
    if-ge v4, v6, :cond_bd

    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v5, v8}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    const/4 v10, 0x0

    :goto_81
    if-ge v10, v14, :cond_ba

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b5

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    :goto_93
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    new-instance v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    move/from16 v0, v16

    invoke-direct {v11, v5, v0, v13, v15}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    new-instance v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {v3, v8}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    if-nez v15, :cond_b7

    const/16 v18, 0x1

    :goto_a7
    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_b2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_b2} :catch_3f
    .catchall {:try_start_70 .. :try_end_b2} :catchall_6a

    :cond_b2
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    :cond_b5
    const/4 v13, 0x0

    goto :goto_93

    :cond_b7
    const/16 v18, 0x0

    goto :goto_a7

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_bd
    :pswitch_bd
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    goto :goto_44

    :catchall_c2
    move-exception v18

    goto :goto_6c

    :catch_c4
    move-exception v2

    goto/16 :goto_41

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_bd
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .registers 23

    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v8

    move-object/from16 v0, p9

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v4

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    return-void
.end method

.method public removeUids([I)V
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_12

    iget v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    :cond_3c
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    goto :goto_12

    :cond_45
    return-void
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method public roundDown(J)J
    .registers 8

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_f

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_10

    :cond_f
    return-wide p1

    :cond_10
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    sub-long/2addr p1, v0

    :cond_21
    return-wide p1
.end method

.method public roundUp(J)J
    .registers 8

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_f

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_10

    :cond_f
    return-wide p1

    :cond_10
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    sub-long/2addr p1, v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr p1, v2

    :cond_24
    return-wide p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2d

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_31
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_6b

    :cond_92
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    const-wide v10, 0x21100000001L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x11100000001L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const-wide v10, 0x11100000001L

    invoke-virtual {v3, p1, v10, v11}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    const-wide v10, 0x10300000002L

    invoke-virtual {p1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const-wide v10, 0x10300000003L

    invoke-virtual {p1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    const-wide v10, 0x10300000004L

    invoke-virtual {p1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    const-wide v10, 0x11100000002L

    invoke-virtual {v0, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_c

    :cond_69
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
