.class public Lcom/android/server/MiuiFakeGpsProvider;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiFakeGpsProvider$1;,
        Lcom/android/server/MiuiFakeGpsProvider$2;,
        Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;,
        Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;,
        Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE_GPS_STOP:Ljava/lang/String; = "action.fakegps.stop"

.field private static final CANCEL_FAKE_REQUEST:I = 0x1

.field public static final D:Z

.field private static final MIN_INTERVAL:I = 0x3e8

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.powerkeeper"

.field private static final SET_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MiuiGpsProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

.field private mFixIntervalMs:I

.field private mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLock:Ljava/lang/Object;

.field private mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mRptLocThreadRunning:Z

.field private mSingleShot:Z

.field private mStarted:Z

.field private mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

.field private sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MiuiFakeGpsProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MiuiFakeGpsProvider;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->cancelNlpLocationRequest()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/MiuiFakeGpsProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->changeProviderIfNecessary(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/internal/location/ProviderRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/MiuiFakeGpsProvider;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->reportLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "MiuiGpsProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$1;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$2;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;-><init>(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    iput-object p2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mILocationManager:Landroid/location/ILocationManager;

    iput-object p3, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->registerFakeGpsStatus()V

    const-string/jumbo v0, "MiuiGpsProvider"

    const-string/jumbo v1, "create miui gps provider"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private cancelNlpLocationRequest()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "MiuiGpsProvider"

    const-string/jumbo v2, "cancel miui gps request"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method private changeProviderIfNecessary(Z)V
    .registers 16

    const/4 v13, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->isProviderNeedChange(Z)Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "location"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-wide/32 v4, 0xea60

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    const-string/jumbo v7, "gps"

    const-wide/32 v10, 0xea60

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v7, v10, v11, v12, v13}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_2b
    iget-object v7, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-virtual {v10}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v1, v6, v7, v10}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_5f
    .catchall {:try_start_2b .. :try_end_36} :catchall_7e

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_39
    const-string/jumbo v7, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "changeProvider send request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-virtual {v10, v13}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_5e
    return-void

    :catch_5f
    move-exception v0

    :try_start_60
    const-string/jumbo v7, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error in changeProviderIfNecessary: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_7e

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :catchall_7e
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .registers 11

    const/16 v8, 0x3e8

    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    return-void

    :cond_c
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3b

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    const/4 v2, 0x0

    goto :goto_26

    :cond_3b
    iput-boolean v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    sget-boolean v3, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "MiuiGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v3, :cond_cb

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v3, v4

    iput v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    iget v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    int-to-long v4, v3

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_98

    const-string/jumbo v3, "MiuiGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interval overflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    :cond_98
    iget v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    if-ge v3, v8, :cond_9e

    iput v8, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    :cond_9e
    iget-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-eqz v3, :cond_c7

    const-string/jumbo v3, "MiuiGpsProvider"

    const-string/jumbo v4, "already started"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/MiuiFakeGpsProvider;->scheduleReportLocation(Z)V

    :goto_ae
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-virtual {v3}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->cancelRequest()V

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v3, :cond_c6

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v3

    if-eqz v3, :cond_c6

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    iget v4, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    invoke-virtual {v3, v4}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->requestLocation(I)V

    :cond_c6
    :goto_c6
    return-void

    :cond_c7
    invoke-direct {p0, v2}, Lcom/android/server/MiuiFakeGpsProvider;->startNavigating(Z)V

    goto :goto_ae

    :cond_cb
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->notifyFakeGpsProviderStop()V

    goto :goto_c6
.end method

.method private isProviderNeedChange(Z)Z
    .registers 15

    const/16 v9, 0x2a

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz p1, :cond_1c

    new-array v4, v12, [I

    aput v9, v4, v11

    :goto_a
    iget-object v8, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "appops"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    return v11

    :cond_1c
    const/4 v8, 0x2

    filled-new-array {v8, v9}, [I

    move-result-object v4

    goto :goto_a

    :cond_22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3c

    sget-boolean v8, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v8, :cond_6c

    const-string/jumbo v8, "MiuiGpsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isProviderNeedChange: true, isMiuiGpsOn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return v12

    :cond_6d
    sget-boolean v8, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v8, :cond_8b

    const-string/jumbo v8, "MiuiGpsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isProviderNeedChange: false, isMiuiGpsOn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return v11
.end method

.method private notifyFakeGpsProviderStop()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action.fakegps.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private registerFakeGpsStatus()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "MiuiGpsProvider"

    const-string/jumbo v1, "register provider status"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    invoke-virtual {v0, v1}, Lcom/android/server/LocationPolicyManagerService;->registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V

    :cond_18
    return-void
.end method

.method private reportLocation(Landroid/location/Location;)V
    .registers 6

    if-eqz p1, :cond_41

    :try_start_2
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "gps"

    invoke-virtual {p1, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    :cond_1d
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "MiuiGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "report location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mILocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_41} :catch_49

    :cond_41
    :goto_41
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    if-eqz v1, :cond_48

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    :cond_48
    return-void

    :catch_49
    move-exception v0

    const-string/jumbo v1, "MiuiGpsProvider"

    const-string/jumbo v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private scheduleReportLocation(Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    if-nez v1, :cond_46

    iget-object v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    const-string/jumbo v3, "MiuiGpsProvider"

    invoke-direct {v1, p0, v3}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;-><init>(Lcom/android/server/MiuiFakeGpsProvider;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->start()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_51

    :goto_19
    :try_start_19
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_22} :catch_23
    .catchall {:try_start_19 .. :try_end_22} :catchall_51

    goto :goto_19

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v1, "MiuiGpsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_51

    :cond_45
    monitor-exit v2

    :cond_46
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->setOnceRun(Z)V

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->reschedule()V

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private startNavigating(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-nez v0, :cond_28

    const-string/jumbo v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating, singleShot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    invoke-direct {p0, v0}, Lcom/android/server/MiuiFakeGpsProvider;->scheduleReportLocation(Z)V

    :cond_28
    return-void
.end method

.method private stopNavigating()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopNavigating, mStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->cancelRequest()V

    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-eqz v0, :cond_36

    iput-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    iput-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->letStop()V

    iput-object v4, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    :cond_36
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 1

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public enable()V
    .registers 1

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "MiuiGpsProvider"

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6

    const-string/jumbo v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
