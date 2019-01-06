.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerServiceInjector$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private static mMetok:Lcom/android/server/location/MetokProxy;

.field private static final sBackupGpsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBackupReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static final sGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

.field private static sLocationManagerService:Lcom/android/server/LocationManagerService;

.field private static sLock:Ljava/lang/Object;

.field private static sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

.field private static sPolicyListener:Landroid/location/ILocationPolicyListener;

.field private static sPolicyManager:Landroid/location/ILocationPolicyManager;

.field private static sRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictBackgroundAll:Z

.field private static final sUidRules:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2()Landroid/util/SparseIntArray;
    .registers 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    return p0
.end method

.method static synthetic -wrap0(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "LocationManagerInjector"

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/LocationManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindLocationPolicyService(Landroid/location/ILocationPolicyManager;)V
    .registers 6

    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    new-instance v2, Lcom/android/server/MiuiFakeGpsProvider;

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v1, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/MiuiFakeGpsProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V

    sput-object v2, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    :try_start_11
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-interface {v1, v2}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method private static checkCurrentLocationRequest(II)V
    .registers 10

    if-eqz p1, :cond_66

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_61

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "remove gps listener from GpsStatusProvider"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_47

    move-result-object v5

    if-eqz v5, :cond_1f

    :try_start_31
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v7, v5}, Landroid/location/IGnssStatusProvider;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_3d
    .catchall {:try_start_31 .. :try_end_3c} :catchall_47

    goto :goto_1f

    :catch_3d
    move-exception v1

    :try_start_3e
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_47

    goto :goto_1f

    :catchall_47
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_4a
    :try_start_4a
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "backup gps listener in mBackupGpsListeners"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_61

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->removeAndBackupLocationRequestIfNeeded(I)V
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_47

    :goto_64
    monitor-exit v6

    return-void

    :cond_66
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_69
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_c9

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "add gps listener to GpsStatusProvider"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_83
    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_ab

    move-result-object v5

    if-eqz v5, :cond_83

    :try_start_95
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v7, v5}, Landroid/location/IGnssStatusProvider;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_a0
    .catch Landroid/os/DeadObjectException; {:try_start_95 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a0} :catch_ae
    .catchall {:try_start_95 .. :try_end_a0} :catchall_ab

    goto :goto_83

    :catch_a1
    move-exception v0

    :try_start_a2
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "listener already dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_ab

    goto :goto_83

    :catchall_ab
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_ae
    move-exception v1

    :try_start_af
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_83

    :cond_b8
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "remove gps listener in mBackupGpsListeners"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c9
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->restoreBlockedLocationRequestIfNeeded(I)V
    :try_end_cc
    .catchall {:try_start_af .. :try_end_cc} :catchall_ab

    goto :goto_64
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/IGnssStatusListener;)Z
    .registers 10

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_31

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " addGpsStatusListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is blocked by policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_31
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_34
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_47

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_47
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/IGnssStatusListener;

    invoke-interface {v3}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_34 .. :try_end_6e} :catchall_86

    move-result v3

    if-eqz v3, :cond_4b

    monitor-exit v4

    return v6

    :cond_73
    :try_start_73
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_86

    monitor-exit v4

    return v6

    :catchall_86
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/LocationRequest;)Z
    .registers 6

    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is blocked by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method public static checkWhenRemoveListenerLocked(ILandroid/location/IGnssStatusListener;)Z
    .registers 9

    const/4 v6, 0x0

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_6f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_34
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGnssStatusListener;

    invoke-interface {v4}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6f

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_86

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    return v4

    :cond_86
    return v6
.end method

.method public static checkWhenRemoveLocationRequestLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)Z
    .registers 7

    if-nez p1, :cond_d

    if-nez p0, :cond_d

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "need either listener or intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    if-eqz p1, :cond_1a

    if-eqz p0, :cond_1a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "cannot register both listener and intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    if-eqz p1, :cond_2e

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    move-object v1, p1

    :goto_25
    if-eqz v2, :cond_3c

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    return v3

    :cond_2e
    invoke-interface {p0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    move-object v1, v0

    goto :goto_25

    :cond_3c
    const/4 v3, 0x0

    return v3
.end method

.method public static createAndBindLP(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    invoke-static {v4, p0, p1}, Lcom/android/server/location/MetokProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;

    move-result-object v4

    sput-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_4c

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v4, :cond_4b

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v5, "gps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v2, :cond_27

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v2}, Lcom/android/server/location/MetokProxy;->setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V

    :cond_27
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_39

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v3}, Lcom/android/server/location/MetokProxy;->setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V

    :cond_39
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v5, "fused"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_4b

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/location/MetokProxy;->setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V

    :cond_4b
    return-void

    :catch_4c
    move-exception v0

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    return-void
.end method

.method public static dumpLp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method static getCurrentLocationRequestUids()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_8
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_22

    goto :goto_12

    :catchall_22
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_25
    :try_start_25
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_22

    goto :goto_2f

    :cond_5b
    monitor-exit v7

    return-object v0
.end method

.method public static init(Lcom/android/server/LocationManagerService;Ljava/lang/Object;Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/LocationManagerService;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    sput-object p2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    sput-object p3, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    sput-object p4, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    return-void
.end method

.method static isFakeGpsOn()Z
    .registers 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getFakeGpsFeatureOnState()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static isPhoneStationary()Z
    .registers 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static isRequestBlockedByPolicy(I)Z
    .registers 6

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_12

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_10
    monitor-exit v2

    return v4

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/location/MetokProxy;->locationSanitized(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p0
.end method

.method private static removeAndBackupLocationRequestIfNeeded(I)V
    .registers 11

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v6, p0, :cond_12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_32

    goto :goto_12

    :catchall_32
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_35
    :try_start_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_89

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "backup receiver:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v6}, Lcom/android/server/LocationManagerService$Receiver;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v8, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v8, v6}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_88
    .catchall {:try_start_35 .. :try_end_88} :catchall_32

    goto :goto_3f

    :cond_89
    monitor-exit v7

    return-void
.end method

.method private static restoreBlockedLocationRequestIfNeeded(I)V
    .registers 18

    sget-object v16, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v16

    :try_start_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_12
    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v1, v1, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    move/from16 v0, p0

    if-ne v1, v0, :cond_12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_34

    goto :goto_12

    :catchall_34
    move-exception v1

    monitor-exit v16

    throw v1

    :cond_37
    :try_start_37
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d0

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_41
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_34

    :try_start_53
    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_63

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_63
    .catch Landroid/os/DeadObjectException; {:try_start_53 .. :try_end_63} :catch_c1
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_63} :catch_b7
    .catchall {:try_start_53 .. :try_end_63} :catchall_34

    :cond_63
    :try_start_63
    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_c9

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restore receiver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v2, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v4, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v5, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v6, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    goto :goto_8f

    :catch_b7
    move-exception v8

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "linkToDeath failed:"

    invoke-static {v1, v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    :catch_c1
    move-exception v7

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_41

    :cond_c9
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catchall {:try_start_63 .. :try_end_ce} :catchall_34

    goto/16 :goto_41

    :cond_d0
    monitor-exit v16

    return-void
.end method

.method static takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isFakeGpsOn()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p0, :cond_a

    :cond_9
    return-object p0

    :cond_a
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isPhoneStationary()Z

    move-result v4

    if-eqz v4, :cond_76

    new-instance v1, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v1}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v5, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v5, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v6, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v0, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v4, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_19

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_19

    :cond_70
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-virtual {v4, v1, v9}, Lcom/android/server/MiuiFakeGpsProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-object v9

    :cond_76
    return-object p0
.end method

.method public static takeOverLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_10

    const-string/jumbo v6, "gps"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    return-object v6

    :cond_10
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v6, :cond_16

    if-nez p0, :cond_17

    :cond_16
    return-object p1

    :cond_17
    const/4 v4, 0x0

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    new-instance v1, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v1}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    if-eqz p1, :cond_d1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v8, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v9, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_cc

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/android/server/location/MetokProxy;->canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cc

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeover LP of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v6, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2d

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto/16 :goto_2d

    :cond_cc
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    :cond_d1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v6, :cond_105

    :cond_d5
    :goto_d5
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v6, v1, v5}, Lcom/android/server/location/MetokProxy;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    sput-object v1, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeover LP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    return-object v4

    :cond_105
    iget-boolean v6, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v7, v7, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-ne v6, v7, :cond_d5

    iget-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v8, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_104

    goto :goto_d5
.end method

.method public static updateGpsStatusProvider(Landroid/location/IGnssStatusProvider;)V
    .registers 1

    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    return-void
.end method

.method public static updateLpStatus(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v3, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_b
    if-ltz v1, :cond_1a

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v0, 0x1

    :cond_1a
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v3, v0}, Lcom/android/server/location/MetokProxy;->updateStatus(Z)V

    :cond_1f
    return-void

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method
