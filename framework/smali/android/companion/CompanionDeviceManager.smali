.class public final Landroid/companion/CompanionDeviceManager;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceManager$Callback;,
        Landroid/companion/CompanionDeviceManager$CallbackProxy;
    }
.end annotation


# static fields
.field public static final COMPANION_DEVICE_DISCOVERY_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field private static final DEBUG:Z = false

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.companion.extra.DEVICE"

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/companion/ICompanionDeviceManager;


# direct methods
.method static synthetic -get0(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;
    .registers 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;
    .registers 2

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/companion/ICompanionDeviceManager;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkFeaturePresent()Z
    .registers 3

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private getCallingPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .registers 12

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "Request cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_13
    iget-object v7, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v0, Landroid/companion/CompanionDeviceManager$CallbackProxy;

    invoke-static {p3}, Landroid/os/Handler;->mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$CallbackProxy;)V

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, p1, v0, v1}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disassociate(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/companion/ICompanionDeviceManager;->disassociate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAssociations()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1c

    move-result-object v1

    return-object v1

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 4

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v1, p1}, Landroid/companion/ICompanionDeviceManager;->hasNotificationAccess(Landroid/content/ComponentName;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    return v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;)V
    .registers 10

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_22
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_22
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
