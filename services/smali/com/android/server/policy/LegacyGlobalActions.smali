.class Lcom/android/server/policy/LegacyGlobalActions;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$1;,
        Lcom/android/server/policy/LegacyGlobalActions$2;,
        Lcom/android/server/policy/LegacyGlobalActions$3;,
        Lcom/android/server/policy/LegacyGlobalActions$4;,
        Lcom/android/server/policy/LegacyGlobalActions$5;,
        Lcom/android/server/policy/LegacyGlobalActions$Action;,
        Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;,
        Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;,
        Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;,
        Lcom/android/server/policy/LegacyGlobalActions$PowerAction;,
        Lcom/android/server/policy/LegacyGlobalActions$RestartAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;,
        Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "LegacyGlobalActions"


# instance fields
.field private mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/LegacyGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mOnDismiss:Ljava/lang/Runnable;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$Action;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .registers 13

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    iput-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    sget-object v4, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$1;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$2;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$2;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$3;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$3;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/android/server/policy/LegacyGlobalActions$4;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$5;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$5;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    :goto_b3
    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    new-instance v4, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v4, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-void

    :cond_ce
    move v4, v5

    goto :goto_b3
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/LegacyGlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1d
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v6, :cond_6b

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_69

    :goto_35
    const/4 v7, 0x1

    :goto_36
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_40
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$13;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_78

    const-string/jumbo v1, " \u2714"

    :goto_56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v2, 0x1080462

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$13;-><init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_69
    const/4 v7, 0x0

    goto :goto_36

    :cond_6b
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_69

    goto :goto_35

    :cond_72
    const/4 v3, 0x0

    goto :goto_40

    :cond_74
    const-string/jumbo v1, "Primary"

    goto :goto_4d

    :cond_78
    const-string/jumbo v1, ""

    goto :goto_56

    :cond_7c
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_11

    :try_start_4
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    if-eqz p1, :cond_34

    const/4 v1, 0x1

    :goto_c
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_33

    if-eqz p1, :cond_36

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_31
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :cond_33
    return-void

    :cond_34
    const/4 v1, 0x0

    goto :goto_c

    :cond_36
    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_31
.end method

.method private createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
    .registers 14

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_4d

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$Action;

    :goto_b
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$6;

    const v2, 0x1080386

    const v3, 0x1080388

    const v4, 0x1040256

    const v5, 0x1040255

    const v6, 0x1040254

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions$6;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/4 v11, 0x0

    :goto_3f
    array-length v0, v9

    if-ge v11, v0, :cond_15d

    aget-object v7, v9, v11

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :goto_4a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :cond_4d
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$Action;

    goto :goto_b

    :cond_5b
    const-string/jumbo v0, "power"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$PowerAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    :goto_6f
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_73
    const-string/jumbo v0, "airplane"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_84
    const-string/jumbo v0, "bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6f

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCurrentUserOwner()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_ae
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_c3
    const-string/jumbo v0, "users"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string/jumbo v0, "fw.power_user_switcher"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto :goto_6f

    :cond_dc
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getSettingsAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_ef
    const-string/jumbo v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6f

    :cond_103
    const-string/jumbo v0, "voiceassist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6f

    :cond_117
    const-string/jumbo v0, "assist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6f

    :cond_12b
    const-string/jumbo v0, "restart"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$RestartAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6f

    :cond_141
    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid global action key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    :cond_15d
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16e
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    new-instance v10, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v12}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v10}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v10}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    invoke-virtual {v10}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$7;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v10}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v10, p0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v10
.end method

.method private getAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .registers 4

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$10;

    const v1, 0x10802f4

    const v2, 0x1040246

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$10;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .registers 4

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$9;

    const v1, 0x10802a5

    const v2, 0x1040248

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$9;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .registers 4

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$12;

    const v1, 0x108002f

    const v2, 0x104024a

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$12;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .registers 4

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$8;

    const v1, 0x10804d1

    const v2, 0x104024e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$8;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .registers 4

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$11;

    const v1, 0x10804ef

    const v2, 0x1040252

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$11;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->prepareDialog()V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->onPress()V

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "LegacyGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->show()V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_37
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private onAirplaneModeChanged()V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_27

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_1b
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_17

    :cond_27
    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_1b
.end method

.method private prepareDialog()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_2d

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2d
    return-void
.end method

.method private refreshSilentMode()V
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/4 v0, 0x1

    :goto_e
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    if-eqz v0, :cond_1c

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_16
    invoke-virtual {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e

    :cond_1c
    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_16
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_d

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_9
    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_14

    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "LegacyGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public showDialog(ZZ)V
    .registers 5

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_16
    return-void

    :cond_17
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    goto :goto_16
.end method
