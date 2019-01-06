.class public Lmiui/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AudioOutputHelper$AudioOutputClient;,
        Lmiui/util/AudioOutputHelper$CompatCollector;,
        Lmiui/util/AudioOutputHelper$DUMP_TAG;,
        Lmiui/util/AudioOutputHelper$LPCollector;,
        Lmiui/util/AudioOutputHelper$Result;,
        Lmiui/util/AudioOutputHelper$TrackCollector;
    }
.end annotation


# static fields
.field private static COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector; = null

.field private static final COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final TAG:Ljava/lang/String;

.field static final UNHANDLED:Lmiui/util/AudioOutputHelper$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-class v0, Lmiui/util/AudioOutputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    sput-object v2, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    new-instance v0, Lmiui/util/AudioOutputHelper$LPCollector;

    invoke-direct {v0}, Lmiui/util/AudioOutputHelper$LPCollector;-><init>()V

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    new-instance v0, Lmiui/util/AudioOutputHelper$CompatCollector;

    invoke-direct {v0}, Lmiui/util/AudioOutputHelper$CompatCollector;-><init>()V

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    new-instance v0, Lmiui/util/AudioOutputHelper$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v4, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    return-object v0

    :cond_14
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p0, :cond_4

    return-object v8

    :cond_4
    invoke-static {p1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b

    return-object v8

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    iget-boolean v8, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v8, :cond_14

    iget v5, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v5, :cond_2a

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3e
    if-eqz p2, :cond_47

    invoke-static {v0, p0}, Lmiui/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_47
    return-object v0
.end method

.method public static getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v3, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_21

    :cond_20
    return-object v13

    :cond_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, p0, v10}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_37

    :cond_36
    return-object v13

    :cond_37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_40
    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_54

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_75} :catch_76

    goto :goto_40

    :catch_76
    move-exception v0

    return-object v13

    :cond_78
    return-object v8
.end method

.method private static getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_43
    return-object v6
.end method

.method public static hasActiveReceivers(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private static isStandBy(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_f

    move-result v3

    if-eqz v3, :cond_d

    :goto_c
    return v1

    :cond_d
    move v1, v2

    goto :goto_c

    :catch_f
    move-exception v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_21
    return v1
.end method

.method public static parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_70

    move-result-object v0

    :goto_5
    if-nez v0, :cond_f

    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/cache"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "audio_flinger_%d_%d_%d.dump"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x0

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_72

    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "audio_flinger_%d_%d_%d.dump"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    add-int/lit8 v4, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v3, v4

    goto :goto_42

    :catch_70
    move-exception v2

    goto :goto_5

    :cond_72
    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v6
.end method

.method private static parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_64
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_52
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2e
    .catchall {:try_start_1 .. :try_end_8} :catchall_76

    :try_start_8
    const-string/jumbo v21, "media.audio_flinger"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_16e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_172
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_176
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_17a
    .catchall {:try_start_8 .. :try_end_18} :catchall_16a

    if-eqz v13, :cond_1d

    :try_start_1a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_2c

    :cond_1d
    :goto_1d
    move-object v12, v13

    :cond_1e
    :goto_1e
    const/4 v10, 0x0

    :try_start_1f
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_26} :catch_167

    move-object v10, v11

    :goto_27
    if-nez v10, :cond_7f

    const/16 v21, 0x0

    return-object v21

    :catch_2c
    move-exception v7

    goto :goto_1d

    :catch_2e
    move-exception v8

    :goto_2f
    :try_start_2f
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_76

    if-eqz v12, :cond_1e

    :try_start_3a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_1e

    :catch_3e
    move-exception v7

    goto :goto_1e

    :catch_40
    move-exception v7

    :goto_41
    :try_start_41
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_76

    if-eqz v12, :cond_1e

    :try_start_4c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_1e

    :catch_50
    move-exception v7

    goto :goto_1e

    :catch_52
    move-exception v5

    :goto_53
    :try_start_53
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_76

    if-eqz v12, :cond_1e

    :try_start_5e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_1e

    :catch_62
    move-exception v7

    goto :goto_1e

    :catch_64
    move-exception v6

    :goto_65
    :try_start_65
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_76

    if-eqz v12, :cond_1e

    :try_start_70
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_1e

    :catch_74
    move-exception v7

    goto :goto_1e

    :catchall_76
    move-exception v21

    :goto_77
    if-eqz v12, :cond_7c

    :try_start_79
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    :cond_7c
    :goto_7c
    throw v21

    :catch_7d
    move-exception v7

    goto :goto_7c

    :cond_7f
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_8d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    :cond_99
    :goto_99
    if-eqz v17, :cond_b9

    move-object/from16 v4, v17

    const/16 v17, 0x0

    :cond_9f
    sget-object v21, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_c6

    if-nez v16, :cond_b4

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    :cond_b4
    invoke-static/range {v15 .. v16}, Lmiui/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    goto :goto_99

    :cond_b9
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_bc} :catch_11c
    .catchall {:try_start_8d .. :try_end_bc} :catchall_151

    move-result-object v4

    if-nez v4, :cond_9f

    :try_start_bf
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_159

    :goto_c2
    :try_start_c2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_15c

    :goto_c5
    return-object v2

    :cond_c6
    :try_start_c6
    sget-object v21, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_e7

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmiui/util/AudioOutputHelper;->isStandBy(Ljava/lang/String;)Z

    move-result v18

    goto :goto_99

    :cond_e7
    if-nez v18, :cond_99

    sget-object v3, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    if-eqz v3, :cond_fa

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v4, v2, v0}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_99

    :cond_fa
    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v2, v1}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v14

    iget-boolean v0, v14, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12f

    iget-object v0, v14, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    sput-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "collector=lp"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_11a} :catch_11c
    .catchall {:try_start_c6 .. :try_end_11a} :catchall_151

    goto/16 :goto_99

    :catch_11c
    move-exception v8

    :try_start_11d
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_11d .. :try_end_126} :catchall_151

    :try_start_126
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_15f

    :goto_129
    :try_start_129
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_161

    :goto_12c
    const/16 v21, 0x0

    return-object v21

    :cond_12f
    :try_start_12f
    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v2, v1}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v14

    iget-boolean v0, v14, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_99

    iget-object v0, v14, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    sput-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "collector=compat"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_14f} :catch_11c
    .catchall {:try_start_12f .. :try_end_14f} :catchall_151

    goto/16 :goto_99

    :catchall_151
    move-exception v21

    :try_start_152
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_163

    :goto_155
    :try_start_155
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_165

    :goto_158
    throw v21

    :catch_159
    move-exception v7

    goto/16 :goto_c2

    :catch_15c
    move-exception v7

    goto/16 :goto_c5

    :catch_15f
    move-exception v7

    goto :goto_129

    :catch_161
    move-exception v7

    goto :goto_12c

    :catch_163
    move-exception v7

    goto :goto_155

    :catch_165
    move-exception v7

    goto :goto_158

    :catch_167
    move-exception v9

    goto/16 :goto_27

    :catchall_16a
    move-exception v21

    move-object v12, v13

    goto/16 :goto_77

    :catch_16e
    move-exception v6

    move-object v12, v13

    goto/16 :goto_65

    :catch_172
    move-exception v5

    move-object v12, v13

    goto/16 :goto_53

    :catch_176
    move-exception v7

    move-object v12, v13

    goto/16 :goto_41

    :catch_17a
    move-exception v8

    move-object v12, v13

    goto/16 :goto_2f
.end method
