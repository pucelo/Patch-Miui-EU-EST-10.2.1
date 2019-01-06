.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$Callbacks;,
        Landroid/appwidget/AppWidgetHost$UpdateHandler;
    }
.end annotation


# static fields
.field static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static sServiceInitialized:Z

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHandler:Landroid/os/Handler;

.field private final mHostId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method private static bindService(Landroid/content/Context;)V
    .registers 5

    sget-object v2, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-eqz v1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    const/4 v1, 0x1

    :try_start_a
    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "android.software.app_widgets"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2a

    move-result v1

    if-nez v1, :cond_1b

    monitor-exit v2

    return-void

    :cond_1b
    :try_start_1b
    const-string/jumbo v1, "appwidget"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    sput-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2a

    monitor-exit v2

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static deleteAllHosts()V
    .registers 3

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .registers 5

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    :try_start_6
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected clearViews()V
    .registers 3

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 9

    const/4 v4, 0x0

    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v3, :cond_6

    return-object v4

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_15
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_27

    monitor-exit v4

    :try_start_1b
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_2a

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object v1

    :catchall_27
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_2a
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system server dead?"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public deleteAppWidgetId(I)V
    .registers 6

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_20

    :try_start_d
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16
    .catchall {:try_start_d .. :try_end_14} :catchall_20

    monitor-exit v2

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public deleteHost()V
    .registers 5

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds()[I
    .registers 5

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    :cond_8
    :try_start_8
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 6

    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 6

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    monitor-exit v2

    if-eqz v0, :cond_16

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_16
    return-void

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected onProvidersChanged()V
    .registers 1

    return-void
.end method

.method public final startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .registers 16

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_1a
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
    :try_end_20
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_20} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_27

    :catch_20
    move-exception v8

    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0

    :catch_27
    move-exception v9

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v0, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startListening()V
    .registers 11

    sget-object v6, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v6, :cond_5

    return-void

    :cond_5
    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_8
    iget-object v6, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1e

    iget-object v6, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_44

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    monitor-exit v7

    :try_start_1f
    sget-object v6, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v9, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v6, v7, v8, v9, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_47

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v0, :cond_69

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v6, :pswitch_data_6a

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :catchall_44
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_47
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "system server dead?"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :pswitch_51
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v7, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    goto :goto_41

    :pswitch_59
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v7, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_41

    :pswitch_61
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v7, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    goto :goto_41

    :cond_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_59
        :pswitch_61
    .end packed-switch
.end method

.method public stopListening()V
    .registers 5

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .registers 6

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    monitor-exit v2

    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_11
    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method viewDataChanged(II)V
    .registers 6

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    monitor-exit v2

    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    :cond_11
    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method
