.class public Lcom/android/systemui/keyguard/WorkLockActivity;
.super Landroid/app/Activity;
.source "WorkLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WorkLockActivity$1;
    }
.end annotation


# instance fields
.field private mKgm:Landroid/app/KeyguardManager;

.field private final mLockEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/keyguard/WorkLockActivity;)Landroid/app/KeyguardManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivity$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getChallengeOptions()Landroid/app/ActivityOptions;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private showConfirmCredentialActivity()V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v6, v6, v5}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTaskId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, -0x1

    const/high16 v7, 0x54000000

    invoke-static {p0, v6, v4, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getChallengeOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "WorkLockActivity"

    const-string/jumbo v5, "Failed to start confirm credential intent"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method final getPrimaryColor()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.android.systemui.keyguard.extra.TASK_DESCRIPTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    return v2
.end method

.method final getTargetUserId()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/keyguard/WorkLockActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->setOverlayWithDecorCaptionEnabled(Z)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110069

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getPrimaryColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/keyguard/WorkLockActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->showConfirmCredentialActivity()V

    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method
