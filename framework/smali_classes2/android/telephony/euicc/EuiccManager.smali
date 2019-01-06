.class public Landroid/telephony/euicc/EuiccManager;
.super Ljava/lang/Object;
.source "EuiccManager.java"


# static fields
.field public static final ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

.field public static final ACTION_RESOLVE_ERROR:Ljava/lang/String; = "android.telephony.euicc.action.RESOLVE_ERROR"

.field public static final EMBEDDED_SUBSCRIPTION_RESULT_ERROR:I = 0x2

.field public static final EMBEDDED_SUBSCRIPTION_RESULT_OK:I = 0x0

.field public static final EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR:I = 0x1

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

.field public static final EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

.field public static final EXTRA_FORCE_PROVISION:Ljava/lang/String; = "android.telephony.euicc.extra.FORCE_PROVISION"

.field public static final META_DATA_CARRIER_ICON:Ljava/lang/String; = "android.telephony.euicc.carriericon"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/telephony/euicc/IEuiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "econtroller"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    return-void
.end method

.method private static sendUnavailableError(Landroid/app/PendingIntent;)V
    .registers 3

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    :cond_14
    return-void

    :cond_15
    :try_start_15
    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public deleteSubscription(ILandroid/app/PendingIntent;)V
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V
    .registers 7

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2, p3}, Lcom/android/internal/telephony/euicc/IEuiccController;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public eraseSubscriptions(Landroid/app/PendingIntent;)V
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptions(Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultDownloadableSubscriptionList(Landroid/app/PendingIntent;)V
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Landroid/app/PendingIntent;)V
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEid()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEid()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startResolutionActivity(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    if-nez v7, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid result intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public switchToSubscription(ILandroid/app/PendingIntent;)V
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mController:Lcom/android/internal/telephony/euicc/IEuiccController;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccController;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
