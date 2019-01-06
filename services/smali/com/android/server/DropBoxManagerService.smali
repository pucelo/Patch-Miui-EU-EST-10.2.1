.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$1;,
        Lcom/android/server/DropBoxManagerService$2;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method static synthetic -get0(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DropBoxManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    iput-boolean v2, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v15

    const/4 v10, 0x0

    invoke-interface {v15}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v15, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_4e
    if-eqz v10, :cond_ca

    const/4 v2, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v16, v2

    :goto_56
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_ca

    aget-object v11, v10, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v14, :cond_86

    iget-object v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v2, v3

    iput v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_86
    iget v2, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_b4

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v12, v6, v8

    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v6, v12

    :goto_af
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_56

    :cond_b4
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v12, v6, v8

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v6, v12

    goto :goto_af

    :cond_ca
    if-nez p1, :cond_de

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_dc
    .catchall {:try_start_1 .. :try_end_dc} :catchall_f7

    :goto_dc
    monitor-exit p0

    return-wide v6

    :cond_de
    :try_start_de
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_f6
    .catchall {:try_start_de .. :try_end_f6} :catchall_f7

    goto :goto_dc

    :catchall_f7
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v1

    if-eqz v1, :cond_44

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_38

    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_36

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t mkdir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_36
    :try_start_36
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    iput v4, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_4b} :catch_73
    .catchall {:try_start_36 .. :try_end_4b} :catchall_33

    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v4, :cond_e3

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_90

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t list files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_73
    move-exception v0

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t statfs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_90
    new-instance v4, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    const/4 v4, 0x0

    array-length v5, v3

    :goto_a1
    if-ge v4, v5, :cond_e3

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d2

    const-string/jumbo v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cleaning temp file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_cf
    :goto_cf
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    :cond_d2
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v1, v2, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    invoke-virtual {v1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-direct {p0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_e2
    .catchall {:try_start_4b .. :try_end_e2} :catchall_33

    goto :goto_cf

    :cond_e3
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized trimToFit()J
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string/jumbo v28, "dropbox_age_seconds"

    const v29, 0x3f480

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    const-string/jumbo v29, "dropbox_max_files"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    if-eqz v25, :cond_1e5

    const/16 v25, 0x12c

    :goto_28
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v8, v28, v30

    :goto_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v28, v0

    cmp-long v25, v28, v8

    if-lez v25, :cond_1e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->size()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1e9

    :cond_8f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1388

    add-long v28, v28, v30

    cmp-long v25, v26, v28

    if-lez v25, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string/jumbo v28, "dropbox_quota_percent"

    const/16 v29, 0xa

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string/jumbo v28, "dropbox_reserve_percent"

    const/16 v29, 0xa

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string/jumbo v28, "dropbox_quota_kb"

    const/16 v29, 0x1400

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_1 .. :try_end_e9} :catchall_258

    move-result-object v10

    :try_start_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_f5} :catch_25b
    .catchall {:try_start_ea .. :try_end_f5} :catchall_258

    :try_start_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    mul-int v25, v25, v18

    div-int/lit8 v25, v25, 0x64

    sub-int v15, v7, v25

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0

    div-int v14, v25, v28

    mul-int v25, v15, v17

    div-int/lit8 v25, v25, 0x64

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-le v0, v1, :cond_1d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    const/16 v19, 0x0

    new-instance v23, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_17a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_19e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    if-lez v19, :cond_280

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    sub-int v28, v28, v24

    div-int v28, v28, v19

    move/from16 v0, v25

    move/from16 v1, v28

    if-gt v0, v1, :cond_280

    :cond_19e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    sub-int v25, v25, v24

    div-int v22, v25, v19

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1ac
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1d0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_28c

    :cond_1d0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0
    :try_end_1dc
    .catchall {:try_start_f5 .. :try_end_1dc} :catchall_258

    mul-int v25, v25, v28

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    monitor-exit p0

    return-wide v28

    :cond_1e5
    const/16 v25, 0x3e8

    goto/16 :goto_28

    :cond_1e9
    :try_start_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v20, :cond_21f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21f

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v25, v25, v28

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_24b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V
    :try_end_256
    .catchall {:try_start_1e9 .. :try_end_256} :catchall_258

    goto/16 :goto_47

    :catchall_258
    move-exception v25

    monitor-exit p0

    throw v25

    :catch_25b
    move-exception v12

    :try_start_25c
    new-instance v25, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Can\'t restat: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_280
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_17a

    :cond_28c
    :goto_28c
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v22

    if-le v0, v1, :cond_1ac

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_1ac

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v25, v25, v28

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    :cond_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2fe
    .catchall {:try_start_25c .. :try_end_2fe} :catchall_258

    :cond_2fe
    :try_start_2fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    new-instance v25, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v28, v0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_32b
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_32b} :catch_32d
    .catchall {:try_start_2fe .. :try_end_32b} :catchall_258

    goto/16 :goto_28c

    :catch_32d
    move-exception v11

    :try_start_32e
    const-string/jumbo v25, "DropBoxManagerService"

    const-string/jumbo v28, "Can\'t write tombstone file"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33b
    .catchall {:try_start_32e .. :try_end_33b} :catchall_258

    goto/16 :goto_28c
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 34

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v23

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v8

    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_49

    new-instance v28, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v28 .. v28}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v28
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_17} :catch_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1e9

    :catch_17
    move-exception v7

    :goto_18
    :try_start_18
    const-string/jumbo v28, "DropBoxManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Can\'t write: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_1e9

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    if-eqz v24, :cond_48

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    :cond_48
    :goto_48
    return-void

    :cond_49
    :try_start_49
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_17
    .catchall {:try_start_49 .. :try_end_53} :catchall_1e9

    move-result v28

    if-nez v28, :cond_60

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    return-void

    :cond_60
    :try_start_60
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v4, v0, [B

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v22, 0x0

    :goto_78
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_90

    array-length v0, v4

    move/from16 v28, v0

    sub-int v28, v28, v22

    move/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-gtz v11, :cond_1d2

    :cond_90
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "drop"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->getId()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ".tmp"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_c4} :catch_17
    .catchall {:try_start_60 .. :try_end_c4} :catchall_1e9

    :try_start_c4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    const/16 v28, 0x1000

    move/from16 v0, v28

    if-le v5, v0, :cond_d0

    const/16 v5, 0x1000

    :cond_d0
    const/16 v28, 0x200

    move/from16 v0, v28

    if-ge v5, v0, :cond_d8

    const/16 v5, 0x200

    :cond_d8
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v9, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_e6} :catch_1df
    .catchall {:try_start_c4 .. :try_end_e6} :catchall_1f9

    :try_start_e6
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d6

    and-int/lit8 v28, v8, 0x4

    if-nez v28, :cond_1d6

    new-instance v20, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_f8} :catch_203
    .catchall {:try_start_e6 .. :try_end_f8} :catchall_1fd

    or-int/lit8 v8, v8, 0x4

    :cond_fa
    :goto_fa
    const/16 v28, 0x0

    :try_start_fc
    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v28, v18, v12

    const-wide/16 v30, 0x7530

    cmp-long v28, v28, v30

    if-lez v28, :cond_117

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    move-wide/from16 v12, v18

    :cond_117
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v22

    if-gtz v22, :cond_1da

    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    const/16 v20, 0x0

    :goto_125
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v28, v14, v16

    if-lez v28, :cond_1e4

    const-string/jumbo v28, "DropBoxManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Dropping: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " > "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " bytes)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_173} :catch_1df
    .catchall {:try_start_fc .. :try_end_173} :catchall_1f9

    const/16 v24, 0x0

    :goto_175
    :try_start_175
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v26

    const/16 v24, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v28, "android.intent.action.DROPBOX_ENTRY_ADDED"

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v28, "tag"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v28, "time"

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    move/from16 v28, v0

    if-nez v28, :cond_1ae

    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_1c7} :catch_17
    .catchall {:try_start_175 .. :try_end_1c7} :catchall_1e9

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_48

    :cond_1d2
    add-int v22, v22, v11

    goto/16 :goto_78

    :cond_1d6
    move-object/from16 v20, v21

    goto/16 :goto_fa

    :cond_1da
    :try_start_1da
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1df
    .catchall {:try_start_1da .. :try_end_1dd} :catchall_1f9

    goto/16 :goto_125

    :catch_1df
    move-exception v7

    move-object/from16 v24, v25

    goto/16 :goto_18

    :cond_1e4
    if-gtz v22, :cond_fa

    move-object/from16 v24, v25

    goto :goto_175

    :catchall_1e9
    move-exception v28

    :goto_1ea
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    if-eqz v24, :cond_1f8

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    :cond_1f8
    throw v28

    :catchall_1f9
    move-exception v28

    move-object/from16 v24, v25

    goto :goto_1ea

    :catchall_1fd
    move-exception v28

    move-object/from16 v20, v21

    move-object/from16 v24, v25

    goto :goto_1ea

    :catch_203
    move-exception v7

    move-object/from16 v20, v21

    move-object/from16 v24, v25

    goto/16 :goto_18
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 37

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_fc

    move-result v3

    if-nez v3, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_51
    .catchall {:try_start_12 .. :try_end_15} :catchall_fc

    :try_start_15
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    const/4 v14, 0x0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_23
    if-eqz p3, :cond_108

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_108

    aget-object v3, p3, v19

    const-string/jumbo v4, "-a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    aget-object v3, p3, v19

    const-string/jumbo v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    aget-object v3, p3, v19

    const-string/jumbo v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    :cond_4d
    const/4 v15, 0x1

    :goto_4e
    add-int/lit8 v19, v19, 0x1

    goto :goto_23

    :catch_51
    move-exception v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "DropBoxManagerService"

    const-string/jumbo v4, "Can\'t init"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_15 .. :try_end_78} :catchall_fc

    monitor-exit p0

    return-void

    :cond_7a
    :try_start_7a
    aget-object v3, p3, v19

    const-string/jumbo v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    aget-object v3, p3, v19

    const-string/jumbo v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    :cond_90
    const/4 v14, 0x1

    goto :goto_4e

    :cond_92
    aget-object v3, p3, v19

    const-string/jumbo v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    aget-object v3, p3, v19

    const-string/jumbo v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    :cond_a8
    const-string/jumbo v3, "Dropbox (dropbox) dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "    -h|--help: print this help"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "    -p|--print: print full contents of each entry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "    -f|--file: print path of each entry\'s file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  [timestamp] optionally filters to only those entries."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_7a .. :try_end_d8} :catchall_fc

    monitor-exit p0

    return-void

    :cond_da
    :try_start_da
    aget-object v3, p3, v19

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ff

    const-string/jumbo v3, "Unknown argument: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fa
    .catchall {:try_start_da .. :try_end_fa} :catchall_fc

    goto/16 :goto_4e

    :catchall_fc
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_ff
    :try_start_ff
    aget-object v3, p3, v19

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4e

    :cond_108
    const-string/jumbo v3, "Drop box contents: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Max entries: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16f

    const-string/jumbo v3, "Searching for:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_167

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v3, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14e

    :cond_167
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16f
    const/16 v26, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_18c
    :goto_18c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3bf

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    const-string/jumbo v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v22, 0x1

    const/16 v19, 0x0

    :goto_1ae
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_1d4

    if-eqz v22, :cond_1d4

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d1

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    :goto_1ce
    add-int/lit8 v19, v19, 0x1

    goto :goto_1ae

    :cond_1d1
    const/16 v22, 0x1

    goto :goto_1ce

    :cond_1d4
    if-eqz v22, :cond_18c

    add-int/lit8 v26, v26, 0x1

    if-eqz v15, :cond_1e2

    const-string/jumbo v3, "========================================\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e2
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_211

    const-string/jumbo v3, "(no tag)"

    :goto_1f8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_216

    const-string/jumbo v3, " (no file)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18c

    :cond_211
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_1f8

    :cond_216
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_228

    const-string/jumbo v3, " (contents lost)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18c

    :cond_228
    const-string/jumbo v3, " ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_240

    const-string/jumbo v3, "compressed "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_240
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2ec

    const-string/jumbo v3, "text"

    :goto_24b
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v14, :cond_273

    if-eqz v15, :cond_28d

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_28d

    :cond_273
    if-nez v15, :cond_27d

    const-string/jumbo v3, "    "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27d
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28d
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_291
    .catchall {:try_start_ff .. :try_end_291} :catchall_fc

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2e0

    if-nez v15, :cond_29b

    xor-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_2e0

    :cond_29b
    const/4 v13, 0x0

    const/16 v20, 0x0

    :try_start_29e
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2af} :catch_3f4
    .catchall {:try_start_29e .. :try_end_2af} :catchall_3ed

    if-eqz v15, :cond_361

    :try_start_2b1
    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2bc
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2bc} :catch_383
    .catchall {:try_start_2b1 .. :try_end_2bc} :catchall_3ab

    const/16 v3, 0x1000

    :try_start_2be
    new-array v11, v3, [C

    const/16 v24, 0x0

    :cond_2c2
    :goto_2c2
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStreamReader;->read([C)I

    move-result v23

    if-gtz v23, :cond_2f1

    if-nez v24, :cond_3f8

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2be .. :try_end_2d4} :catch_31b
    .catchall {:try_start_2be .. :try_end_2d4} :catchall_3f0

    move-object/from16 v20, v21

    :goto_2d6
    if-eqz v2, :cond_2db

    :try_start_2d8
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2db
    .catchall {:try_start_2d8 .. :try_end_2db} :catchall_fc

    :cond_2db
    if-eqz v20, :cond_2e0

    :try_start_2dd
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_2e0
    .catch Ljava/io/IOException; {:try_start_2dd .. :try_end_2e0} :catch_3ba
    .catchall {:try_start_2dd .. :try_end_2e0} :catchall_fc

    :cond_2e0
    :goto_2e0
    if-eqz v15, :cond_18c

    :try_start_2e2
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18c

    :cond_2ec
    const-string/jumbo v3, "data"
    :try_end_2ef
    .catchall {:try_start_2e2 .. :try_end_2ef} :catchall_fc

    goto/16 :goto_24b

    :cond_2f1
    const/4 v3, 0x0

    :try_start_2f2
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v11, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v23, -0x1

    aget-char v3, v11, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_35e

    const/16 v24, 0x1

    :goto_303
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_2c2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_31a
    .catch Ljava/io/IOException; {:try_start_2f2 .. :try_end_31a} :catch_31b
    .catchall {:try_start_2f2 .. :try_end_31a} :catchall_3f0

    goto :goto_2c2

    :catch_31b
    move-exception v16

    move-object/from16 v20, v21

    :goto_31e
    :try_start_31e
    const-string/jumbo v3, "*** "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_351
    .catchall {:try_start_31e .. :try_end_351} :catchall_3ab

    if-eqz v2, :cond_356

    :try_start_353
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_356
    .catchall {:try_start_353 .. :try_end_356} :catchall_fc

    :cond_356
    if-eqz v20, :cond_2e0

    :try_start_358
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_358 .. :try_end_35b} :catch_35c
    .catchall {:try_start_358 .. :try_end_35b} :catchall_fc

    goto :goto_2e0

    :catch_35c
    move-exception v32

    goto :goto_2e0

    :cond_35e
    const/16 v24, 0x0

    goto :goto_303

    :cond_361
    const/16 v3, 0x46

    :try_start_363
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v3, "    "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v29, :cond_385

    const-string/jumbo v3, "[null]"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_379
    :goto_379
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2d6

    :catch_383
    move-exception v16

    goto :goto_31e

    :cond_385
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_3b7

    const/16 v31, 0x1

    :goto_38f
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v31, :cond_379

    const-string/jumbo v3, " ..."

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3aa
    .catch Ljava/io/IOException; {:try_start_363 .. :try_end_3aa} :catch_383
    .catchall {:try_start_363 .. :try_end_3aa} :catchall_3ab

    goto :goto_379

    :catchall_3ab
    move-exception v3

    :goto_3ac
    if-eqz v2, :cond_3b1

    :try_start_3ae
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_3b1
    .catchall {:try_start_3ae .. :try_end_3b1} :catchall_fc

    :cond_3b1
    if-eqz v20, :cond_3b6

    :try_start_3b3
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_3b6
    .catch Ljava/io/IOException; {:try_start_3b3 .. :try_end_3b6} :catch_3bd
    .catchall {:try_start_3b3 .. :try_end_3b6} :catchall_fc

    :cond_3b6
    :goto_3b6
    :try_start_3b6
    throw v3

    :cond_3b7
    const/16 v31, 0x0

    goto :goto_38f

    :catch_3ba
    move-exception v32

    goto/16 :goto_2e0

    :catch_3bd
    move-exception v32

    goto :goto_3b6

    :cond_3bf
    if-nez v26, :cond_3c9

    const-string/jumbo v3, "(No entries found.)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c9
    if-eqz p3, :cond_3d0

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_3e2

    :cond_3d0
    if-nez v15, :cond_3da

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3da
    const-string/jumbo v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_3eb
    .catchall {:try_start_3b6 .. :try_end_3eb} :catchall_fc

    monitor-exit p0

    return-void

    :catchall_3ed
    move-exception v3

    move-object v2, v13

    goto :goto_3ac

    :catchall_3f0
    move-exception v3

    move-object/from16 v20, v21

    goto :goto_3ac

    :catch_3f4
    move-exception v16

    move-object v2, v13

    goto/16 :goto_31e

    :cond_3f8
    move-object/from16 v20, v21

    goto/16 :goto_2d6
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 16

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    if-nez p1, :cond_32

    :try_start_20
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_18

    :goto_22
    if-nez v9, :cond_3b

    monitor-exit p0

    return-object v10

    :catch_26
    move-exception v6

    :try_start_27
    const-string/jumbo v0, "DropBoxManagerService"

    const-string/jumbo v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_18

    monitor-exit p0

    return-object v10

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_22

    :cond_3b
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4d
    :goto_4d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6e

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_6c
    .catchall {:try_start_32 .. :try_end_6c} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_6e
    :try_start_6e
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_18

    move-result-object v4

    :try_start_74
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7f} :catch_81
    .catchall {:try_start_74 .. :try_end_7f} :catchall_18

    monitor-exit p0

    return-object v0

    :catch_81
    move-exception v6

    :try_start_82
    const-string/jumbo v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_18

    goto :goto_4d

    :cond_9d
    monitor-exit p0

    return-object v10
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2b

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_2e

    :goto_4
    return-void

    :sswitch_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/DropBoxManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_4

    :sswitch_2b
    iput-boolean v5, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_4

    :sswitch_data_2e
    .sparse-switch
        0x1f4 -> :sswitch_5
        0x3e8 -> :sswitch_2b
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
