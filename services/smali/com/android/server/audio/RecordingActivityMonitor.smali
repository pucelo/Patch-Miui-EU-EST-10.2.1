.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPublicClients:Z

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private mRecordConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    invoke-static {v0}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v2
.end method

.method private updateSnapshot(IIII[I)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v13

    packed-switch p1, :pswitch_data_f8

    :try_start_8
    const-string/jumbo v2, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v3, "Unknown event %d for session %d, source %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v4, v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v4, v15

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_2e
    if-eqz v9, :cond_f1

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_f4

    :goto_3d
    monitor-exit v13

    return-object v10

    :pswitch_3f
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_52

    const/4 v9, 0x1

    goto :goto_2e

    :cond_52
    const/4 v9, 0x0

    goto :goto_2e

    :pswitch_54
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x0

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x3

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    const/4 v2, 0x6

    aget v7, p5, v2

    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d2

    array-length v2, v11

    if-lez v2, :cond_d2

    const/4 v2, 0x0

    aget-object v8, v11, v2

    :goto_ac
    new-instance v1, Landroid/media/AudioRecordingConfiguration;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const/4 v9, 0x0

    goto/16 :goto_2e

    :cond_d2
    const-string/jumbo v8, ""

    goto :goto_ac

    :cond_d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto/16 :goto_2e

    :cond_e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catchall {:try_start_3f .. :try_end_ee} :catchall_f4

    const/4 v9, 0x1

    goto/16 :goto_2e

    :cond_f1
    const/4 v10, 0x0

    goto/16 :goto_3d

    :catchall_f4
    move-exception v2

    monitor-exit v13

    throw v2

    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_54
    .end packed-switch
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_27
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingConfiguration;->dump(Ljava/io/PrintWriter;)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_41

    goto :goto_31

    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_44
    monitor-exit v3

    return-void
.end method

.method getActiveRecordingConfigurations(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v2

    if-eqz p1, :cond_12

    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_23

    monitor-exit v2

    return-object v1

    :cond_12
    :try_start_12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_23

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method initMonitor()V
    .registers 1

    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    return-void
.end method

.method public onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V
    .registers 15

    invoke-static {p4}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IIII[I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4f

    iget-object v6, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_10
    iget-boolean v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v5, :cond_42

    invoke-direct {p0, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_18
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_3f

    :try_start_2a
    iget-boolean v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_48

    iget-object v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5, v2}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34
    .catchall {:try_start_2a .. :try_end_33} :catchall_3f

    goto :goto_1e

    :catch_34
    move-exception v3

    :try_start_35
    const-string/jumbo v5, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v7, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3f

    goto :goto_1e

    :catchall_3f
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_42
    :try_start_42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    goto :goto_18

    :cond_48
    :try_start_48
    iget-object v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_34
    .catchall {:try_start_48 .. :try_end_4d} :catchall_3f

    goto :goto_1e

    :cond_4e
    monitor-exit v6

    :cond_4f
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_6
    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez p2, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    :cond_16
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_6
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    iget-object v3, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    goto :goto_d

    :catchall_28
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2b
    :try_start_2b
    iget-boolean v3, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v3, :cond_d

    const/4 v1, 0x1

    goto :goto_d

    :cond_31
    iput-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    monitor-exit v4

    return-void
.end method
