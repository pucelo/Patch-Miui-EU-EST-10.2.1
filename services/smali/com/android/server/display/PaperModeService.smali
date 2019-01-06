.class public Lcom/android/server/display/PaperModeService;
.super Lcom/android/server/SystemService;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PaperModeService$ScreenOnReceiver;,
        Lcom/android/server/display/PaperModeService$SettingsObserver;,
        Lcom/android/server/display/PaperModeService$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaperModeService"

.field private static final URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPaperModeEnabled:Z

.field private mPaperModeTimeEnabled:Z

.field private mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/PaperModeService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/PaperModeService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/PaperModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/PaperModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initColorService(Landroid/content/Context;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "is_xiaomi"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.qti.service.colorservice"

    const-string/jumbo v2, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/display/PaperModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/PaperModeService$1;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    :cond_2d
    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5a
    return v5
.end method

.method private updatePaperMode()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    return-void
.end method

.method private updateSettings()V
    .registers 6

    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_paper_mode_enabled"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_paper_mode_time_enabled"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2d

    :goto_28
    iput-boolean v1, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    return-void

    :cond_2b
    move v0, v2

    goto :goto_15

    :cond_2d
    move v1, v2

    goto :goto_28
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5c

    new-instance v0, Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/PaperModeService$SettingsObserver;-><init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$UserSwitchReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$ScreenOnReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/display/PaperModeService;->initColorService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    :cond_5c
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method
