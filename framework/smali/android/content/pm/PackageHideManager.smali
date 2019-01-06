.class public Landroid/content/pm/PackageHideManager;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageHideManager$AppHideConfig;,
        Landroid/content/pm/PackageHideManager$AppHideItem;
    }
.end annotation


# static fields
.field private static final APP_HIDE_SWITCH_FILE:Ljava/lang/String; = "/data/system/app_hide_switch.xml"

.field private static final APP_HIDE_SWITCH_FILE_VERSION:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

.field private static mFile:Ljava/io/File;

.field private static volatile sInstance:Landroid/content/pm/PackageHideManager;


# instance fields
.field private mShouldHideApks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageHideManager$AppHideItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/content/pm/PackageHideManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->init(Z)V

    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;)V
    .registers 5

    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V
    .registers 12

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_5
    iget-object v6, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v6, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v6, :cond_3f

    iget-object v6, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    array-length v7, v6

    :goto_15
    if-ge v5, v7, :cond_3f

    aget-object v4, v6, v5

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v8, :cond_3b

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3b

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_3b} :catch_3e

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :catch_3e
    move-exception v1

    :cond_3f
    return-void
.end method

.method public static getInstance(Z)Landroid/content/pm/PackageHideManager;
    .registers 3

    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_13

    const-class v1, Landroid/content/pm/PackageHideManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_12

    new-instance v0, Landroid/content/pm/PackageHideManager;

    invoke-direct {v0, p0}, Landroid/content/pm/PackageHideManager;-><init>(Z)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Z)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/app_hide_switch.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->readAppHideConfig()V

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v0, :cond_2e

    new-instance v0, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v0}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    :cond_2e
    if-eqz p1, :cond_3f

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    if-eq v0, v2, :cond_3e

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_3e
.end method

.method private initHideApks()V
    .registers 10

    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const-string/jumbo v4, "hidden_app_packagename_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hidden_app_path_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_3a

    if-eqz v0, :cond_3a

    array-length v4, v3

    array-length v5, v0

    if-ne v4, v5, :cond_3a

    const/4 v1, 0x0

    :goto_1c
    array-length v4, v3

    if-ge v1, v4, :cond_3a

    aget-object v4, v0, v1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    aget-object v5, v3, v1

    new-instance v6, Landroid/content/pm/PackageHideManager$AppHideItem;

    aget-object v7, v3, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v2}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method private isSystemServer()Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isValidDevice()Z
    .registers 2

    const/4 v0, 0x0

    const-string/jumbo v1, "support_app_hiding"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    :cond_c
    return v0
.end method

.method private moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_e

    if-ne v0, v2, :cond_6

    :cond_e
    if-eq v0, v3, :cond_11

    return v1

    :cond_11
    return v2
.end method

.method private readAppHideConfig()V
    .registers 22

    sget-object v17, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    if-nez v17, :cond_5

    return-void

    :cond_5
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "start readAppHideConfig()"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v18

    const/4 v14, 0x0

    :try_start_11
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v17

    if-eqz v17, :cond_152

    new-instance v15, Ljava/io/FileInputStream;

    sget-object v17, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v14, v15

    :goto_21
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "app-hide"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_90

    new-instance v17, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    sget-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const-string/jumbo v19, "isFunctionOpen"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    sget-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const-string/jumbo v19, "version"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    sget-object v17, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const-string/jumbo v19, "isHide"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    :cond_90
    :goto_90
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v17

    if-eqz v17, :cond_168

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "item"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_90

    const-string/jumbo v17, "package"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v17, "path"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v17, "isHide"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_fd

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_fd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    move-object/from16 v17, v0

    new-instance v19, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string/jumbo v20, ";"

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v10, v1}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fd
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "read item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_129} :catch_12b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_129} :catch_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_129} :catch_214
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_129} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_129} :catch_1c0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_129} :catch_198
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_129} :catch_170
    .catchall {:try_start_11 .. :try_end_129} :catchall_26b

    goto/16 :goto_90

    :catch_12b
    move-exception v5

    :try_start_12c
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catchall {:try_start_12c .. :try_end_14b} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_14d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_268
    .catchall {:try_start_14d .. :try_end_150} :catchall_272

    :cond_150
    :goto_150
    monitor-exit v18

    return-void

    :cond_152
    :try_start_152
    sget-object v17, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/miui/Shell;->readByteArray(Ljava/lang/String;)[B
    :try_end_15b
    .catch Ljava/lang/IllegalStateException; {:try_start_152 .. :try_end_15b} :catch_12b
    .catch Ljava/lang/NullPointerException; {:try_start_152 .. :try_end_15b} :catch_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_152 .. :try_end_15b} :catch_214
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_152 .. :try_end_15b} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_15b} :catch_1c0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_152 .. :try_end_15b} :catch_198
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_15b} :catch_170
    .catchall {:try_start_152 .. :try_end_15b} :catchall_26b

    move-result-object v2

    if-nez v2, :cond_160

    monitor-exit v18

    return-void

    :cond_160
    :try_start_160
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_165
    .catch Ljava/lang/IllegalStateException; {:try_start_160 .. :try_end_165} :catch_12b
    .catch Ljava/lang/NullPointerException; {:try_start_160 .. :try_end_165} :catch_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_160 .. :try_end_165} :catch_214
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_160 .. :try_end_165} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_165} :catch_1c0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_160 .. :try_end_165} :catch_198
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_165} :catch_170
    .catchall {:try_start_160 .. :try_end_165} :catchall_26b

    move-object v14, v15

    goto/16 :goto_21

    :cond_168
    if-eqz v14, :cond_150

    :try_start_16a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16e
    .catchall {:try_start_16a .. :try_end_16d} :catchall_272

    goto :goto_150

    :catch_16e
    move-exception v3

    goto :goto_150

    :catch_170
    move-exception v4

    :try_start_171
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_171 .. :try_end_190} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_192
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_196
    .catchall {:try_start_192 .. :try_end_195} :catchall_272

    goto :goto_150

    :catch_196
    move-exception v3

    goto :goto_150

    :catch_198
    move-exception v6

    :try_start_199
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catchall {:try_start_199 .. :try_end_1b8} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_1ba
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bd} :catch_1be
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_272

    goto :goto_150

    :catch_1be
    move-exception v3

    goto :goto_150

    :catch_1c0
    move-exception v3

    :try_start_1c1
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e0
    .catchall {:try_start_1c1 .. :try_end_1e0} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_1e2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1e5} :catch_1e7
    .catchall {:try_start_1e2 .. :try_end_1e5} :catchall_272

    goto/16 :goto_150

    :catch_1e7
    move-exception v3

    goto/16 :goto_150

    :catch_1ea
    move-exception v9

    :try_start_1eb
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catchall {:try_start_1eb .. :try_end_20a} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_20c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_211
    .catchall {:try_start_20c .. :try_end_20f} :catchall_272

    goto/16 :goto_150

    :catch_211
    move-exception v3

    goto/16 :goto_150

    :catch_214
    move-exception v8

    :try_start_215
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_234
    .catchall {:try_start_215 .. :try_end_234} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_236
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_239} :catch_23b
    .catchall {:try_start_236 .. :try_end_239} :catchall_272

    goto/16 :goto_150

    :catch_23b
    move-exception v3

    goto/16 :goto_150

    :catch_23e
    move-exception v7

    :try_start_23f
    sget-object v17, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25e
    .catchall {:try_start_23f .. :try_end_25e} :catchall_26b

    if-eqz v14, :cond_150

    :try_start_260
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_263
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_263} :catch_265
    .catchall {:try_start_260 .. :try_end_263} :catchall_272

    goto/16 :goto_150

    :catch_265
    move-exception v3

    goto/16 :goto_150

    :catch_268
    move-exception v3

    goto/16 :goto_150

    :catchall_26b
    move-exception v17

    if-eqz v14, :cond_271

    :try_start_26e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_26e .. :try_end_271} :catch_275
    .catchall {:try_start_26e .. :try_end_271} :catchall_272

    :cond_271
    :goto_271
    :try_start_271
    throw v17
    :try_end_272
    .catchall {:try_start_271 .. :try_end_272} :catchall_272

    :catchall_272
    move-exception v17

    monitor-exit v18

    throw v17

    :catch_275
    move-exception v3

    goto :goto_271
.end method

.method private writeAppHideConfig()Z
    .registers 15

    const/4 v11, 0x0

    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    if-nez v10, :cond_6

    return v11

    :cond_6
    sget-object v10, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "start writeAppHideConfig()"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_f4

    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    :goto_1c
    :try_start_1c
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_11f

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_28
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v10, "utf-8"

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "app-hide"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "isFunctionOpen"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "version"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "isHide"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v10, :cond_127

    iget-object v10, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7e
    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_127

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageHideManager$AppHideItem;

    iget-object v10, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7e

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7e

    const-string/jumbo v10, "item"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "package"

    iget-object v11, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "path"

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "isHide"

    iget-boolean v11, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "item"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_cb} :catch_cc
    .catchall {:try_start_1c .. :try_end_cb} :catchall_14f

    goto :goto_7e

    :catch_cc
    move-exception v2

    :try_start_cd
    sget-object v10, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Failed to write state, restoring backup."

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_14f

    const/4 v6, 0x0

    if-eqz v7, :cond_db

    :try_start_d8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_14d

    :cond_db
    :goto_db
    if-eqz v6, :cond_f3

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_f3

    :try_start_e5
    sget-object v11, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v11
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_15c

    :try_start_e8
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/miui/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f1
    .catchall {:try_start_e8 .. :try_end_f1} :catchall_159

    move-result v6

    :try_start_f2
    monitor-exit v11
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f3} :catch_15c

    :cond_f3
    :goto_f3
    return v6

    :cond_f4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_.bak"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1c

    :cond_11f
    :try_start_11f
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v8

    goto/16 :goto_28

    :cond_127
    const-string/jumbo v10, "app-hide"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-nez v10, :cond_144

    move-object v0, v7

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/miui/Shell;->writeByteArray(Ljava/lang/String;Z[B)Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_143} :catch_cc
    .catchall {:try_start_11f .. :try_end_143} :catchall_14f

    move-result v6

    :cond_144
    if-eqz v7, :cond_db

    :try_start_146
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_149} :catch_14a

    goto :goto_db

    :catch_14a
    move-exception v2

    :goto_14b
    const/4 v6, 0x0

    goto :goto_db

    :catch_14d
    move-exception v2

    goto :goto_14b

    :catchall_14f
    move-exception v10

    if-eqz v7, :cond_155

    :try_start_152
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_156

    :cond_155
    :goto_155
    throw v10

    :catch_156
    move-exception v2

    const/4 v6, 0x0

    goto :goto_155

    :catchall_159
    move-exception v10

    :try_start_15a
    monitor-exit v11

    throw v10
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15c} :catch_15c

    :catch_15c
    move-exception v2

    invoke-static {v9}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    const/4 v6, 0x0

    goto :goto_f3
.end method


# virtual methods
.method public getIgnoreApkPathList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    iget-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v4, :cond_15

    iget-object v4, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v4, :cond_15

    iget-object v5, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_2d
    if-ge v4, v6, :cond_15

    aget-object v2, v5, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_37
    return-object v3
.end method

.method public getIgnoreApkPkgNameList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v4, :cond_23

    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_23
    return-object v3
.end method

.method public isAppHide()Z
    .registers 2

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_18

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public isAppHide(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    :cond_f
    return v2

    :cond_10
    iget-object v1, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    if-eqz v0, :cond_20

    iget-boolean v1, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    return v1

    :cond_20
    return v2
.end method

.method public isFunctionOpen()Z
    .registers 2

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_12

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public setHideApp(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_13

    sget-object v1, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v1, :cond_14

    :cond_13
    return v2

    :cond_14
    iget-object v1, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    if-eqz v0, :cond_2e

    iget-boolean v1, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eq v1, p3, :cond_2e

    iput-boolean p3, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-nez p3, :cond_29

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    :cond_29
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v1

    return v1

    :cond_2e
    return v2
.end method

.method public setHideApp(Landroid/content/Context;Z)Z
    .registers 4

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-eq v0, p2, :cond_a

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean p2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-nez p2, :cond_1b

    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;)V

    :cond_1b
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v0

    return v0
.end method
