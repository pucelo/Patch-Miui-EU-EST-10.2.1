.class public Lmiui/util/AutoDisableScreenButtonsManager;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_KEY_PRESS_INTERVAL:I = 0x7d0

.field private static final PREF_ADSB_NOT_SHOW_PROMPTS:Ljava/lang/String; = "ADSB_NOT_SHOW_PROMPTS"

.field private static final SettingsActionComponent:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "AutoDisableScreenButtonsManager"

.field private static final TMP_DISABLE_BUTTON:I = 0x2


# instance fields
.field private mCloudConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurUserId:I

.field private mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mScreenButtonPressedKeyCode:I

.field private mScreenButtonPressedTime:J

.field private mScreenButtonsDisabled:Z

.field private mScreenButtonsTmpDisabled:Z

.field private mStatusBarVisibleOld:Z

.field private mToastShowTime:J

.field private mTwice:Z

.field private mUserSetting:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .registers 2

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/util/AutoDisableScreenButtonsManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    return v0
.end method

.method static synthetic -set0(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2

    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lmiui/util/AutoDisableScreenButtonsManager;)Z
    .registers 2

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lmiui/util/AutoDisableScreenButtonsManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->saveTmpDisableButtonsStatus(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showSettings()V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "com.android.settings/.AutoDisableScreenButtonsAppListSettingsActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    iput-boolean v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->resetButtonsStatus()V

    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;

    invoke-direct {v0, p0, p2}, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->observe()V

    return-void
.end method

.method private static getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_e

    return-object v3

    :cond_e
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_24

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2

    :cond_24
    return-object v3
.end method

.method private resetButtonsStatus()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/util/AutoDisableScreenButtonsManager;->saveDisableButtonsStatus(Z)V

    iput-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    return-void
.end method

.method private saveDisableButtonsStatus(Z)V
    .registers 6

    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_buttons_state"

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_e
    iget v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private saveTmpDisableButtonsStatus(Z)V
    .registers 6

    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_buttons_state"

    if-eqz p1, :cond_19

    const/4 v0, 0x2

    :goto_13
    iget v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private showFloat()V
    .registers 3

    const-string/jumbo v0, "AutoDisableScreenButtonsManager"

    const-string/jumbo v1, "showing auto disable screen buttons float window..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    if-nez v0, :cond_29

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$3;

    invoke-direct {v1, p0}, Lmiui/util/AutoDisableScreenButtonsManager$3;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$4;

    invoke-direct {v1, p0}, Lmiui/util/AutoDisableScreenButtonsManager$4;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_29
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->show()V

    return-void
.end method

.method private showPromptsIfNeeds()Z
    .registers 9

    const/4 v7, 0x1

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "ADSB_NOT_SHOW_PROMPTS"

    invoke-static {v4, v5}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_18

    const/4 v4, 0x0

    return v4

    :cond_11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_d

    :cond_18
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x110900bf

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x110900c0

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v6, 0x110900c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lmiui/util/AutoDisableScreenButtonsManager$5;

    invoke-direct {v5, p0}, Lmiui/util/AutoDisableScreenButtonsManager$5;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    const v6, 0x110900c1

    invoke-virtual {v4, v6, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return v7
.end method

.method private showSettings()V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_12
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v2, "AutoDisableScreenButtonsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start activity exception, component = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 4

    if-eqz p2, :cond_b

    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager$2;

    invoke-direct {v0, p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager$2;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method private showToast(ZLandroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_f

    const v0, 0x110900bc

    :goto_7
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    return-void

    :cond_f
    const v0, 0x110900bd

    goto :goto_7
.end method

.method private showToastInner(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateSettings()V
    .registers 9

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_9
    const-string/jumbo v4, "screen_buttons_state"

    iget v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    packed-switch v0, :pswitch_data_56

    :goto_16
    const-string/jumbo v4, "auto_disable_screen_button"

    iget v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    invoke-static {v2, v4, v6}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mUserSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_30

    iput-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mUserSetting:Ljava/lang/String;

    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    :cond_30
    const-string/jumbo v4, "auto_disable_screen_button_cloud_setting"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCloudConfig:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_48

    iput-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCloudConfig:Ljava/lang/String;

    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_4e

    :cond_48
    monitor-exit v5

    return-void

    :pswitch_4a
    const/4 v4, 0x0

    :try_start_4b
    iput-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_4e

    goto :goto_16

    :catchall_4e
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_51
    const/4 v4, 0x1

    :try_start_52
    iput-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_4e

    goto :goto_16

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method


# virtual methods
.method public handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z
    .registers 12

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_17

    const/4 v2, 0x1

    :goto_13
    sparse-switch p1, :sswitch_data_86

    return v4

    :cond_17
    const/4 v2, 0x0

    goto :goto_13

    :sswitch_19
    if-eqz p3, :cond_3b

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3b

    const-string/jumbo v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableForSingleKey keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3a
    :goto_3a
    return v0

    :cond_3b
    :sswitch_3b
    if-eqz v1, :cond_3f

    if-eqz v2, :cond_3a

    :cond_3f
    if-eqz p4, :cond_63

    invoke-static {}, Lmiui/util/SmartCoverManager;->deviceDisableKeysWhenLidClose()Z

    move-result v3

    if-eqz v3, :cond_63

    const-string/jumbo v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableForLidClose keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_3a

    :cond_63
    invoke-virtual {p0, p1, p2}, Lmiui/util/AutoDisableScreenButtonsManager;->screenButtonsInterceptKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string/jumbo v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screenButtonsDisabled keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_3a

    nop

    :sswitch_data_86
    .sparse-switch
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_19
        0x52 -> :sswitch_19
        0x54 -> :sswitch_3b
        0xbb -> :sswitch_19
    .end sparse-switch
.end method

.method public isScreenButtonsDisabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public onStatusBarVisibilityChange(Z)V
    .registers 4

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$1;

    invoke-direct {v1, p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager$1;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public onUserSwitch(I)V
    .registers 3

    iget v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->updateSettings()V

    :cond_9
    return-void
.end method

.method public resetTmpButtonsStatus()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    return-void
.end method

.method public screenButtonsInterceptKey(IZ)Z
    .registers 11

    const-wide/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v2

    if-nez v2, :cond_b

    return v4

    :cond_b
    if-eqz p2, :cond_45

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_27

    iget v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    if-ne v2, p1, :cond_27

    iget-boolean v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    if-eqz v2, :cond_27

    iput-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->resetButtonsStatus()V

    return v4

    :cond_27
    iput-wide v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    iput p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    iput-boolean v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    iget-wide v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mToastShowTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_45

    iput-wide v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mToastShowTime:J

    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x110900be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2, v3}, Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_45
    return v5
.end method
