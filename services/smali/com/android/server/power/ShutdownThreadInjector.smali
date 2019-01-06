.class public final Lcom/android/server/power/ShutdownThreadInjector;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"


# static fields
.field private static final CUSTOMIZED_REGION:Ljava/lang/String;

.field private static final CUST_ROOT_PATH:Ljava/lang/String;

.field private static final CUST_VAR:Ljava/lang/String;

.field private static final IS_CUSTOMIZATION:Z

.field private static final IS_CUSTOMIZATION_TEST:Z

.field private static final IS_CUSTOMIZED_REGION:Z

.field private static final OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI:Ljava/lang/String; = "sys.shutdown.miui"

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI_MUSIC:Ljava/lang/String; = "sys.shutdown.miuimusic"

.field private static final TAG:Ljava/lang/String; = "ShutdownThreadInjector"

.field private static sIsShutdownMusicPlaying:Z


# direct methods
.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_bb

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_bb

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    :goto_b
    sput-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-nez v0, :cond_17

    sget-boolean v1, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    :cond_17
    sput-boolean v1, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION:Z

    const-string/jumbo v0, "ro.miui.customized.region"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    if-eqz v0, :cond_be

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    :goto_35
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_58
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "theme/operator/boots/shutdownanimation.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "theme/operator/boots/shutdownaudio.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "disable_operator_animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "disable_operator_audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    return-void

    :cond_bb
    move v0, v1

    goto/16 :goto_b

    :cond_be
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35

    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/miui/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_58
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAnimationFileExist(Landroid/content/Context;Z)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static getShutdownMusicFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    :cond_1e
    return-object v0
.end method

.method private static isSilentMode(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v1

    return v1
.end method

.method static needVibrator()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method static playShutdownMusic(Landroid/content/Context;Z)V
    .registers 6

    const-string/jumbo v1, "sys.shutdown.miui"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ShutdownThreadInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdown music: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_47

    if-eqz v0, :cond_47

    const-string/jumbo v1, "sys.shutdown.miuimusic"

    const-string/jumbo v2, "shutdown_music"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method private static playShutdownMusicImpl(Ljava/lang/String;)V
    .registers 13

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    :try_start_8
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v8, Lcom/android/server/power/ShutdownThreadInjector$1;

    invoke-direct {v8, v0}, Lcom/android/server/power/ShutdownThreadInjector$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_52

    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    add-long v6, v8, v10

    monitor-enter v0

    :goto_2a
    :try_start_2a
    sget-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-eqz v8, :cond_43

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_71

    const-string/jumbo v8, "ShutdownThreadInjector"

    const-string/jumbo v9, "play shutdown music timeout"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    sget-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-nez v8, :cond_50

    const-string/jumbo v8, "ShutdownThreadInjector"

    const-string/jumbo v9, "play shutdown music complete"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_77

    :cond_50
    monitor-exit v0

    return-void

    :catch_52
    move-exception v1

    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    const-string/jumbo v8, "ShutdownThreadInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "play shutdown music error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_71
    :try_start_71
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_77

    goto :goto_2a

    :catch_75
    move-exception v4

    goto :goto_2a

    :catchall_77
    move-exception v8

    monitor-exit v0

    throw v8
.end method

.method static recordShutdownTime(Landroid/content/Context;Z)V
    .registers 6

    new-instance v0, Lmiui/util/SystemAnalytics$Action;

    invoke-direct {v0}, Lmiui/util/SystemAnalytics$Action;-><init>()V

    const-string/jumbo v2, "action"

    if-eqz p1, :cond_21

    const-string/jumbo v1, "reboot"

    :goto_d
    invoke-virtual {v0, v2, v1}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;

    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;J)Lmiui/util/SystemAnalytics$Action;

    const-string/jumbo v1, "systemserver_bootshuttime"

    invoke-static {p0, v1, v0}, Lmiui/util/SystemAnalytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V

    return-void

    :cond_21
    const-string/jumbo v1, "shutdown"

    goto :goto_d
.end method

.method static showShutdownAnimOrDialog(Landroid/content/Context;Z)V
    .registers 4

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    if-eqz v0, :cond_28

    :cond_c
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->checkAnimationFileExist(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "service.bootanim.exit"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownAnimation(Landroid/content/Context;Z)V

    :goto_27
    return-void

    :cond_28
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownDialog(Landroid/content/Context;Z)V

    goto :goto_27
.end method

.method static showShutdownAnimation(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusic(Landroid/content/Context;Z)V

    return-void
.end method

.method static showShutdownDialog(Landroid/content/Context;Z)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v1, Landroid/app/Dialog;

    const v7, 0x103006d

    invoke-direct {v1, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x11030011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v4}, Lcom/android/server/power/WindowAdapter;->setUseNotchRegion(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7e5

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    if-eqz p1, :cond_86

    const v7, 0x110c002d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1108002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1108002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    :goto_7c
    const-string/jumbo v7, "sys.in_shutdown_progress"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_86
    const-class v7, Lcom/android/server/lights/LightsManager;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    invoke-virtual {v3, v10}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setBrightness(IZ)V

    goto :goto_7c
.end method
