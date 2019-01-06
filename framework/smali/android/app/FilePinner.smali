.class public Landroid/app/FilePinner;
.super Ljava/lang/Object;
.source "FilePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FilePinner$PinTask;
    }
.end annotation


# static fields
.field private static final MAX_LOCK_PAGES:I = 0x3200

.field private static final MAX_PROFILE_COUNT:I = 0xa

.field private static final PROFILE_DELAY:I = 0x1388

.field private static TAG:Ljava/lang/String;

.field private static enablePinAppFile:Z

.field private static mAppsToPin:[Ljava/lang/String;

.field private static mIsSelectedApp:Z

.field private static mPageProfileCount:I

.field private static mPinFileDone:Z

.field private static mfileCaheVecs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .registers 3

    invoke-static {p0, p1}, Landroid/app/FilePinner;->getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/ArrayList;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/FilePinner;->recordHotPages(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FilePinner"

    sput-object v0, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.pinappfile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/FilePinner;->enablePinAppFile:Z

    sput-boolean v1, Landroid/app/FilePinner;->mIsSelectedApp:Z

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, " "

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    sput-boolean v2, Landroid/app/FilePinner;->mPinFileDone:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/app/LoadedApk;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    const-string/jumbo v1, "arm"

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v14, :cond_35

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v14}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_35

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "64"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_35
    const/4 v3, 0x0

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x19

    if-lt v14, v15, :cond_cd

    :try_start_3c
    const-class v14, Ldalvik/system/DexFile;

    const-string/jumbo v15, "getDexFileOutputPath"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const-class v17, Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const-class v17, Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v17, v16, v18

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6b} :catch_c3

    :goto_6b
    if-eqz v3, :cond_70

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    :try_start_70
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    instance-of v14, v4, Ldalvik/system/BaseDexClassLoader;

    if-eqz v14, :cond_c2

    check-cast v4, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v4}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    const/4 v8, 0x0

    :cond_80
    :goto_80
    const/4 v14, -0x1

    if-eq v13, v14, :cond_c2

    const-string/jumbo v14, "dex file \""

    invoke-virtual {v5, v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v14, "\","

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v14, -0x1

    if-eq v13, v14, :cond_80

    const/4 v14, -0x1

    if-eq v8, v14, :cond_80

    add-int/lit8 v14, v13, 0xa

    invoke-virtual {v5, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "dex/"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_80

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "o"

    invoke-virtual {v11, v12, v14}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_b8} :catch_b9

    goto :goto_80

    :catch_b9
    move-exception v7

    sget-object v14, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "failed to find dex files"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    return-object v9

    :catch_c3
    move-exception v7

    sget-object v14, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "failed get base odex path"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_cd
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/oat/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/base.odex"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6b
.end method

.method static handlePinAppFile(Landroid/app/Application;Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .registers 12

    const/16 v8, 0xa

    const/4 v7, 0x0

    sget-boolean v5, Landroid/app/FilePinner;->enablePinAppFile:Z

    if-eqz v5, :cond_13

    sget-boolean v5, Landroid/app/FilePinner;->mIsSelectedApp:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_13

    sget-boolean v5, Landroid/app/FilePinner;->mPinFileDone:Z

    if-nez v5, :cond_13

    if-nez p0, :cond_14

    :cond_13
    return-void

    :cond_14
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    if-eqz p2, :cond_28

    const v5, 0x107000c

    :try_start_22
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_4a

    :cond_28
    :goto_28
    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    if-eqz v5, :cond_54

    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    array-length v3, v5

    :cond_2f
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_45

    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2f

    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_45
    if-gez v3, :cond_57

    sput-boolean v7, Landroid/app/FilePinner;->mIsSelectedApp:Z

    return-void

    :catch_4a
    move-exception v1

    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed get app to pin"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_54
    sput-boolean v7, Landroid/app/FilePinner;->mIsSelectedApp:Z

    return-void

    :cond_57
    sget v5, Landroid/app/FilePinner;->mPageProfileCount:I

    if-ge v5, v8, :cond_78

    sget v5, Landroid/app/FilePinner;->mPageProfileCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Landroid/app/FilePinner;->mPageProfileCount:I

    const/4 v2, 0x0

    sget v5, Landroid/app/FilePinner;->mPageProfileCount:I

    if-ne v5, v8, :cond_6a

    const/4 v2, 0x1

    const/4 v5, 0x1

    sput-boolean v5, Landroid/app/FilePinner;->mPinFileDone:Z

    :cond_6a
    new-instance v4, Landroid/app/FilePinner$PinTask;

    invoke-direct {v4, v0, p1, v2}, Landroid/app/FilePinner$PinTask;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;Z)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_78
    return-void
.end method

.method private static recordHotPages(Ljava/util/ArrayList;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/16 v26, 0x0

    const/16 v20, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_1c8

    new-instance v8, Ljava/io/FileDescriptor;

    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    const/high16 v11, 0x80000

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    :try_start_1d
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v2, v3

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v25

    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    sget v7, Landroid/system/OsConstants;->MAP_PRIVATE:I

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v12

    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    long-to-int v2, v2

    add-int/lit16 v2, v2, 0x1000

    add-int/lit8 v2, v2, -0x1

    div-int/lit16 v0, v2, 0x1000

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    move-object/from16 v0, v28

    invoke-static {v12, v13, v2, v3, v0}, Landroid/system/Os;->mincore(JJ[B)V

    sget-object v2, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    if-eqz v17, :cond_9b

    const/16 v23, 0x0

    :goto_6b
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_7c

    aget-byte v2, v17, v23

    aget-byte v3, v28, v23

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v17, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_6b

    :cond_7c
    sget-object v2, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_85
    if-nez p1, :cond_10b

    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    invoke-static {v12, v13, v2, v3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_8e
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_8e} :catch_a5
    .catchall {:try_start_1d .. :try_end_8e} :catchall_19e

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_97

    :try_start_94
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_97
    .catch Landroid/system/ErrnoException; {:try_start_94 .. :try_end_97} :catch_ec

    :cond_97
    :goto_97
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    :cond_9b
    :try_start_9b
    sget-object v2, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Landroid/system/ErrnoException; {:try_start_9b .. :try_end_a4} :catch_a5
    .catchall {:try_start_9b .. :try_end_a4} :catchall_19e

    goto :goto_85

    :catch_a5
    move-exception v18

    :try_start_a6
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not pin file with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_a6 .. :try_end_c3} :catchall_19e

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_97

    :try_start_c9
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_cc
    .catch Landroid/system/ErrnoException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_97

    :catch_cd
    move-exception v19

    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :catch_ec
    move-exception v19

    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_10b
    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    :goto_111
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_13e

    :try_start_117
    aget-byte v2, v17, v22

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_122

    add-int/lit8 v21, v21, 0x1

    :cond_11f
    add-int/lit8 v22, v22, 0x1

    goto :goto_111

    :cond_122
    if-lez v21, :cond_11f

    sub-int v2, v22, v21

    mul-int/lit16 v2, v2, 0x1000

    int-to-long v2, v2

    add-long/2addr v2, v12

    move/from16 v0, v21

    mul-int/lit16 v4, v0, 0x1000

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->mlock(JJ)V

    add-int v16, v16, v21

    add-int v26, v26, v21

    const/16 v21, 0x0

    const/16 v2, 0x3200

    move/from16 v0, v26

    if-le v0, v2, :cond_11f

    :cond_13e
    mul-int/lit8 v2, v16, 0x64

    int-to-double v2, v2

    move/from16 v0, v27

    int-to-double v4, v0

    div-double v14, v2, v4

    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catch Landroid/system/ErrnoException; {:try_start_117 .. :try_end_173} :catch_a5
    .catchall {:try_start_117 .. :try_end_173} :catchall_19e

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_97

    :try_start_179
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17c
    .catch Landroid/system/ErrnoException; {:try_start_179 .. :try_end_17c} :catch_17e

    goto/16 :goto_97

    :catch_17e
    move-exception v19

    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_97

    :catchall_19e
    move-exception v2

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_1a8

    :try_start_1a5
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1a8
    .catch Landroid/system/ErrnoException; {:try_start_1a5 .. :try_end_1a8} :catch_1a9

    :cond_1a8
    :goto_1a8
    throw v2

    :catch_1a9
    move-exception v19

    sget-object v3, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to close fd, error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a8

    :cond_1c8
    return-void
.end method
