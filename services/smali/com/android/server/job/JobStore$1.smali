.class Lcom/android/server/job/JobStore$1;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "jobid"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "package"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "class"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "sourcePackageName"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3b
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "sourceTag"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4b
    const-string/jumbo v0, "sourceUserId"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "uid"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "priority"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "flags"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "lastSuccessfulRunTime"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "lastFailedRunTime"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;
    .registers 10

    if-gtz p2, :cond_4

    const/4 v6, 0x0

    return-object v6

    :cond_4
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/os/PersistableBundle;

    if-eqz v6, :cond_12

    check-cast v5, Landroid/os/PersistableBundle;

    add-int/lit8 v6, p2, -0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/job/JobStore$1;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_12

    :cond_32
    return-object v1
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v1, "extras"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v1, 0xa

    invoke-direct {p0, p1, v1}, Lcom/android/server/job/JobStore$1;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v1, "extras"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "constraints"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->needsAnyConnectivity()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "connectivity"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_18
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->needsMeteredConnectivity()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "metered"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_28
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->needsUnmeteredConnectivity()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "unmetered"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_38
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->needsNonRoamingConnectivity()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "not-roaming"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_48
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string/jumbo v0, "idle"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_58
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string/jumbo v0, "charging"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_68
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo v0, "battery-not-low"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_78
    const-string/jumbo v0, "constraints"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v10

    if-eqz v10, :cond_b8

    const-string/jumbo v10, "periodic"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "period"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "flex"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v10

    if-eqz v10, :cond_59

    if-nez v5, :cond_c1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v10

    sub-long/2addr v10, v6

    add-long v0, v8, v10

    :goto_4e
    const-string/jumbo v10, "deadline"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_59
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v10

    if-eqz v10, :cond_73

    if-nez v5, :cond_ca

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    add-long v2, v8, v10

    :goto_68
    const-string/jumbo v10, "delay"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_73
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x7530

    cmp-long v10, v10, v12

    if-nez v10, :cond_8c

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_aa

    :cond_8c
    const-string/jumbo v10, "backoff-policy"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "initial-backoff"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_aa
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v10

    if-eqz v10, :cond_d3

    const-string/jumbo v10, "periodic"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_b7
    return-void

    :cond_b8
    const-string/jumbo v10, "one-off"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_33

    :cond_c1
    iget-object v10, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4e

    :cond_ca
    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_68

    :cond_d3
    const-string/jumbo v10, "one-off"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b7
.end method

.method private writeJobsMapImpl(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v10, "job-info"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "version"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v9, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    :goto_3a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_7f

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    const-string/jumbo v10, "job"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, v9, v5}, Lcom/android/server/job/JobStore$1;->addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-direct {p0, v9, v5}, Lcom/android/server/job/JobStore$1;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-direct {p0, v9, v5}, Lcom/android/server/job/JobStore$1;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lcom/android/server/job/JobStore$1;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v10, "job"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_7c

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5}, Lcom/android/server/job/JobStore;->-wrap1(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_7c

    add-int/lit8 v7, v7, 0x1

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_7f
    const-string/jumbo v10, "job-info"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/server/job/JobStore;->-set0(Lcom/android/server/job/JobStore;I)I
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a9} :catch_da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_a9} :catch_c2
    .catchall {:try_start_3 .. :try_end_a9} :catchall_f2

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    iput v6, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    iput v8, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    :goto_bf
    iput v7, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    return-void

    :catch_c2
    move-exception v2

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    iput v6, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    iput v8, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    goto :goto_bf

    :catch_da
    move-exception v1

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    iput v6, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    iput v8, v10, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iget-object v10, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v10}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v10

    goto :goto_bf

    :catchall_f2
    move-exception v10

    iget-object v11, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v11}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v11

    iput v6, v11, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iget-object v11, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v11}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v11

    iput v8, v11, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iget-object v11, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v11}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v11

    iput v7, v11, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    throw v10
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v3, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    new-instance v5, Lcom/android/server/job/JobStore$1$1;

    invoke-direct {v5, p0, v2}, Lcom/android/server/job/JobStore$1$1;-><init>(Lcom/android/server/job/JobStore$1;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1f

    monitor-exit v4

    invoke-direct {p0, v2}, Lcom/android/server/job/JobStore$1;->writeJobsMapImpl(Ljava/util/List;)V

    return-void

    :catchall_1f
    move-exception v3

    monitor-exit v4

    throw v3
.end method
