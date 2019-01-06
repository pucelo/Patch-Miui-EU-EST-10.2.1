.class Lcom/android/server/policy/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiGlobalActions$1;,
        Lcom/android/server/policy/MiuiGlobalActions$2;,
        Lcom/android/server/policy/MiuiGlobalActions$3;,
        Lcom/android/server/policy/MiuiGlobalActions$4;,
        Lcom/android/server/policy/MiuiGlobalActions$5;,
        Lcom/android/server/policy/MiuiGlobalActions$6;,
        Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    }
.end annotation


# static fields
.field private static final BOOT_ALARM_INTENT_SERVICE:Ljava/lang/String; = "com.miui.powercenter.provider.BootAlarmIntentService"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHUTDOWN_ALARM_SERVICE_NAME:Ljava/lang/String; = "com.android.deskclock.util.ShutdownAlarm"

.field private static final TAG:Ljava/lang/String; = "MiuiGlobalActions"

.field private static final WAKE_ALARM_TIME_OFFSET:I = 0x78


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/Binder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private final mContext:Landroid/content/Context;

.field private final mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

.field private mRotation:I

.field private mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MiuiGlobalActions;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRotation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -wrap0()Landroid/os/IPowerManager;
    .registers 1

    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MiuiGlobalActions;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiGlobalActions;->sendAction(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$2;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$3;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$4;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MiuiGlobalActions$5;-><init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$6;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lmiui/maml/ResourceManager;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    const-string/jumbo v2, "/system/media/theme/default/powermenu"

    invoke-direct {v1, v2}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    new-instance v0, Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/ScreenContext;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v1, v2, v3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->load()Z

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private static getPowerManager()Landroid/os/IPowerManager;
    .registers 1

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method private loadMamlView()Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    .registers 7

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1}, Lmiui/maml/data/Variables;->reset()V

    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v1, v2, v3}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;-><init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    return-object v0
.end method

.method private sendAction(I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateVariables()V
    .registers 15

    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "extended_power_menu"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_15

    :cond_13
    const-wide/16 v12, 0x0

    :goto_15
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string/jumbo v11, "show_extended"

    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d2

    const/4 v3, 0x1

    :goto_33
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string/jumbo v11, "airplane_mode"

    if-eqz v3, :cond_d5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_40
    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    sget-boolean v11, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v11, :cond_dc

    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d9

    const/4 v4, 0x1

    :goto_51
    const-string/jumbo v11, "silent_mode"

    if-eqz v4, :cond_eb

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_58
    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    const-string/jumbo v11, "show_emergency"

    const-string/jumbo v12, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ef

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_6d
    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    const-string/jumbo v11, "shutdown_info"

    const/4 v12, 0x0

    invoke-static {v11, v10, v12}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "security"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/security/SecurityManager;

    if-eqz v6, :cond_d1

    const/4 v5, 0x1

    const-string/jumbo v11, "com.android.deskclock.util.ShutdownAlarm"

    invoke-virtual {v6, v11}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v11, "com.miui.powercenter.provider.BootAlarmIntentService"

    invoke-virtual {v6, v11}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_a6

    const-wide/16 v12, 0x0

    cmp-long v11, v0, v12

    if-lez v11, :cond_f3

    const-wide/16 v12, 0x78

    add-long/2addr v12, v8

    cmp-long v11, v0, v12

    if-gez v11, :cond_f3

    :cond_a6
    move-wide v8, v0

    const/4 v5, 0x0

    :goto_a8
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_d1

    iget-object v12, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_f7

    const v11, 0x1109007c

    :goto_b5
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v8

    const/4 v11, 0x1

    invoke-static {v12, v13, v11}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "shutdown_info"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    :cond_d1
    return-void

    :cond_d2
    const/4 v3, 0x0

    goto/16 :goto_33

    :cond_d5
    const-wide/16 v12, 0x0

    goto/16 :goto_40

    :cond_d9
    const/4 v4, 0x0

    goto/16 :goto_51

    :cond_dc
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_e8

    const/4 v4, 0x1

    goto/16 :goto_51

    :cond_e8
    const/4 v4, 0x0

    goto/16 :goto_51

    :cond_eb
    const-wide/16 v12, 0x0

    goto/16 :goto_58

    :cond_ef
    const-wide/16 v12, 0x0

    goto/16 :goto_6d

    :cond_f3
    const-wide/16 v12, 0x78

    add-long/2addr v8, v12

    goto :goto_a8

    :cond_f7
    const v11, 0x1109007b

    goto :goto_b5
.end method


# virtual methods
.method public dismiss()V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->cleanUp(Z)V

    iput-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_38
.end method

.method public showDialog(ZZ)V
    .registers 13

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.xiaomi.system.devicelock.locked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v2, :cond_18

    return-void

    :cond_18
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRotation:I

    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->loadMamlView()Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v3, Lcom/android/server/policy/MiuiGlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MiuiGlobalActions$7;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v2, v9}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->requestFocus()Z

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x1018104

    const/4 v5, 0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v1, "MiuiGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x110d0002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_b8
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string/jumbo v3, "android"

    const/high16 v4, 0x10000

    invoke-interface {v1, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_c4} :catch_c5

    :goto_c4
    return-void

    :catch_c5
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c4
.end method
