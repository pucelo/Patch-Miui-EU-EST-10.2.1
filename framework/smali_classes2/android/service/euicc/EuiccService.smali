.class public abstract Landroid/service/euicc/EuiccService;
.super Landroid/app/Service;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.service.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.service.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

.field public static final ACTION_RESOLVE_DEACTIVATE_SIM:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

.field public static final ACTION_RESOLVE_NO_PRIVILEGES:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

.field public static final CATEGORY_EUICC_UI:Ljava/lang/String; = "android.service.euicc.category.EUICC_UI"

.field public static final EUICC_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.euicc.EuiccService"

.field public static final EXTRA_RESOLUTION_CALLING_PACKAGE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

.field public static final RESOLUTION_ACTIONS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOLUTION_EXTRA_CONSENT:Ljava/lang/String; = "consent"

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_MUST_DEACTIVATE_SIM:I = -0x1

.field public static final RESULT_OK:I


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;


# direct methods
.method static synthetic -get0(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/service/euicc/EuiccService;->RESOLUTION_ACTIONS:Landroid/util/ArraySet;

    sget-object v0, Landroid/service/euicc/EuiccService;->RESOLUTION_ACTIONS:Landroid/util/ArraySet;

    const-string/jumbo v1, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/service/euicc/EuiccService;->RESOLUTION_ACTIONS:Landroid/util/ArraySet;

    const-string/jumbo v1, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;)V

    iput-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 10

    const/4 v2, 0x4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Landroid/service/euicc/EuiccService$1;

    invoke-direct {v8, p0}, Landroid/service/euicc/EuiccService$1;-><init>(Landroid/service/euicc/EuiccService;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public abstract onDeleteSubscription(ILjava/lang/String;)I
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public abstract onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZ)I
.end method

.method public abstract onEraseSubscriptions(I)I
.end method

.method public abstract onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
.end method

.method public abstract onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.end method

.method public abstract onGetEid(I)Ljava/lang/String;
.end method

.method public abstract onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
.end method

.method public abstract onGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
.end method

.method public abstract onRetainSubscriptionsForFactoryReset(I)I
.end method

.method public abstract onSwitchToSubscription(ILjava/lang/String;Z)I
.end method

.method public abstract onUpdateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;)I
.end method
