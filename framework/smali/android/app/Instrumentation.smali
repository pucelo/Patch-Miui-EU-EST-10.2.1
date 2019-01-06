.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityMonitor;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$SyncRunnable;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mUiAutomation:Landroid/app/UiAutomation;

.field private mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method static synthetic -get0(Landroid/app/Instrumentation;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic -get1(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Instrumentation;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    return-void
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13
.end method

.method private checkInstrumenting(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be called outside of instrumented processes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    return-void
.end method

.method public static checkStartActivityResult(ILjava/lang/Object;)V
    .registers 5

    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    packed-switch p0, :pswitch_data_106

    :pswitch_a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_67

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_67

    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_81
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9b
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ad
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting under voice control not allowed for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Session calling startVoiceActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start voice activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Session calling startAssistantActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start assistant activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_eb
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_106
    .packed-switch -0x64
        :pswitch_d0
        :pswitch_c7
        :pswitch_a
        :pswitch_ad
        :pswitch_eb
        :pswitch_a4
        :pswitch_81
        :pswitch_9b
        :pswitch_2f
        :pswitch_2f
        :pswitch_e2
        :pswitch_d9
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    return-object v0
.end method

.method private postPerformCreate(Landroid/app/Activity;)V
    .registers 7

    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_23

    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    monitor-exit v4

    :cond_23
    return-void

    :catchall_24
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private prePerformCreate(Landroid/app/Activity;)V
    .registers 9

    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v4, :cond_34

    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_33

    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityWaiter;

    iget-object v3, v1, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_30

    iput-object p1, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    iget-object v4, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v6, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v6, p0, v1}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v4, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_35

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_33
    monitor-exit v5

    :cond_34
    return-void

    :catchall_35
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private final validateNotAppThread()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void
.end method


# virtual methods
.method public acquireLooperManager(Landroid/os/Looper;)Landroid/os/TestLooperManager;
    .registers 3

    const-string/jumbo v0, "acquireLooperManager"

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->checkInstrumenting(Ljava/lang/String;)V

    new-instance v0, Landroid/os/TestLooperManager;

    invoke-direct {v0, p1}, Landroid/os/TestLooperManager;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4

    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addResults(Landroid/os/Bundle;)V
    .registers 5

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_4
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/app/IActivityManager;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz p2, :cond_9

    :try_start_5
    iget-object v2, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v2, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    :cond_9
    if-eqz p2, :cond_10

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :cond_10
    invoke-virtual {p0, p1, v1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_16

    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    return-void

    :catchall_16
    move-exception v1

    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    throw v1
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 7

    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_29

    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_28

    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    monitor-exit v4

    :cond_29
    return-void

    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2

    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    move-result v0

    if-ge v0, p2, :cond_f

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_17

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endPerformanceSnapshot()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    :cond_e
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 23

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17a

    invoke-static {v3, v1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    move-object/from16 v2, p2

    check-cast v2, Landroid/app/IApplicationThread;

    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_5b

    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_14
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_1b
    if-ge v12, v9, :cond_5a

    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Instrumentation$ActivityMonitor;

    const/4 v14, 0x0

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-virtual {v10, v1}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    :cond_33
    if-eqz v14, :cond_3d

    iget v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_81

    monitor-exit v3

    return-void

    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    aget-object v1, p5, v1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v4, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_81

    move-result v1

    if-eqz v1, :cond_5a

    monitor-exit v3

    return-void

    :cond_57
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    :cond_5a
    monitor-exit v3

    :cond_5b
    :try_start_5b
    move-object/from16 v0, p5

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_61
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v12, v1, :cond_84

    aget-object v1, p5, v12

    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    aget-object v1, p5, v12

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    aget-object v1, p5, v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_7e} :catch_9f

    add-int/lit8 v12, v12, 0x1

    goto :goto_61

    :catchall_81
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_84
    :try_start_84
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v13

    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_9e} :catch_9f

    return-void

    :catch_9f
    move-exception v11

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failure from system"

    invoke-direct {v1, v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 28

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x179

    invoke-static {v4, v2}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    if-eqz p4, :cond_5c

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v17

    :goto_13
    if-eqz v17, :cond_1f

    const-string/jumbo v2, "android.intent.extra.REFERRER"

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_84

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/16 v16, 0x0

    :goto_34
    move/from16 v0, v16

    if-ge v0, v13, :cond_83

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    const/16 v19, 0x0

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v19

    :cond_52
    if-eqz v19, :cond_5f

    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_f1

    monitor-exit v4

    return-object v19

    :cond_5c
    const/16 v17, 0x0

    goto :goto_13

    :cond_5f
    const/4 v2, 0x0

    :try_start_60
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_83

    if-ltz p6, :cond_7e

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_f1

    move-result-object v2

    :goto_7c
    monitor-exit v4

    return-object v2

    :cond_7e
    const/4 v2, 0x0

    goto :goto_7c

    :cond_80
    add-int/lit8 v16, v16, 0x1

    goto :goto_34

    :cond_83
    monitor-exit v4

    :cond_84
    :try_start_84
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->markLaunchingStart(J)V

    const-string/jumbo v2, "Timeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeline: Activity_launch_request time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_f4

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_da
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move/from16 v9, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_ef} :catch_f6

    const/4 v2, 0x0

    return-object v2

    :catchall_f1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_f4
    const/4 v8, 0x0

    goto :goto_da

    :catch_f6
    move-exception v15

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failure from system"

    invoke-direct {v2, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 27

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x179

    invoke-static {v4, v2}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/16 v16, 0x0

    :goto_22
    move/from16 v0, v16

    if-ge v0, v13, :cond_6e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v18

    :cond_40
    if-eqz v18, :cond_4a

    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_d8

    monitor-exit v4

    return-object v18

    :cond_4a
    const/4 v2, 0x0

    :try_start_4b
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_6e

    if-ltz p6, :cond_69

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_d8

    move-result-object v2

    :goto_67
    monitor-exit v4

    return-object v2

    :cond_69
    const/4 v2, 0x0

    goto :goto_67

    :cond_6b
    add-int/lit8 v16, v16, 0x1

    goto :goto_22

    :cond_6e
    monitor-exit v4

    :cond_6f
    :try_start_6f
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->markLaunchingStart(J)V

    const-string/jumbo v2, "Timeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeline: Activity_launch_request time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_d6} :catch_db

    const/4 v2, 0x0

    return-object v2

    :catchall_d8
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_db
    move-exception v15

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failure from system"

    invoke-direct {v2, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 29

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x179

    invoke-static {v4, v2}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    const/16 v17, 0x0

    :goto_22
    move/from16 v0, v17

    if-ge v0, v14, :cond_6e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Instrumentation$ActivityMonitor;

    const/16 v19, 0x0

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v19

    :cond_40
    if-eqz v19, :cond_4a

    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_a8

    monitor-exit v4

    return-object v19

    :cond_4a
    const/4 v2, 0x0

    :try_start_4b
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_6e

    if-ltz p6, :cond_69

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_a8

    move-result-object v2

    :goto_67
    monitor-exit v4

    return-object v2

    :cond_69
    const/4 v2, 0x0

    goto :goto_67

    :cond_6b
    add-int/lit8 v17, v17, 0x1

    goto :goto_22

    :cond_6e
    monitor-exit v4

    :cond_6f
    :try_start_6f
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_a6} :catch_ab

    const/4 v2, 0x0

    return-object v2

    :catchall_a8
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_ab
    move-exception v16

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failure from system"

    move-object/from16 v0, v16

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;
    .registers 32

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x17b

    invoke-static {v5, v3}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    move-object/from16 v4, p2

    check-cast v4, Landroid/app/IApplicationThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_7d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    const/16 v19, 0x0

    :goto_22
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/Instrumentation$ActivityMonitor;

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v3

    if-eqz v3, :cond_44

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v21

    :cond_44
    if-eqz v21, :cond_52

    move-object/from16 v0, v17

    iget v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_ba

    monitor-exit v5

    return-object v21

    :cond_52
    const/4 v3, 0x0

    :try_start_53
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_79

    move-object/from16 v0, v17

    iget v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_7c

    if-ltz p6, :cond_77

    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_74
    .catchall {:try_start_53 .. :try_end_74} :catchall_ba

    move-result-object v3

    :goto_75
    monitor-exit v5

    return-object v3

    :cond_77
    const/4 v3, 0x0

    goto :goto_75

    :cond_79
    add-int/lit8 v19, v19, 0x1

    goto :goto_22

    :cond_7c
    monitor-exit v5

    :cond_7d
    :try_start_7d
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_bd

    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_9f
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p5

    move-object/from16 v8, p3

    move/from16 v10, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-interface/range {v3 .. v15}, Landroid/app/IActivityManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_b8} :catch_bf

    const/4 v3, 0x0

    return-object v3

    :catchall_ba
    move-exception v3

    monitor-exit v5

    throw v3

    :cond_bd
    const/4 v9, 0x0

    goto :goto_9f

    :catch_bf
    move-exception v18

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Failure from system"

    move-object/from16 v0, v18

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 20

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17c

    invoke-static {v2, v1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    move-object/from16 v13, p2

    check-cast v13, Landroid/app/IApplicationThread;

    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_57

    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v7, :cond_56

    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Instrumentation$ActivityMonitor;

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v1

    if-eqz v1, :cond_32

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v12

    :cond_32
    if-eqz v12, :cond_3c

    iget v1, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_81

    monitor-exit v2

    return-void

    :cond_3c
    const/4 v1, 0x0

    :try_start_3d
    move-object/from16 v0, p4

    invoke-virtual {v8, p1, v1, v0}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget v1, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_81

    move-result v1

    if-eqz v1, :cond_56

    monitor-exit v2

    return-void

    :cond_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_56
    monitor-exit v2

    :cond_57
    :try_start_57
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-interface {v13}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IAppTask;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v11

    move-object/from16 v0, p4

    invoke-static {v11, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_80} :catch_84

    return-void

    :catchall_81
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_84
    move-exception v9

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failure from system"

    invoke-direct {v1, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    :cond_8
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    if-nez p2, :cond_13

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_13
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_18
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    iput-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    :cond_2d
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->getUiAutomation(I)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation(I)Landroid/app/UiAutomation;
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    :goto_b
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_3f

    if-nez v0, :cond_1e

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getFlags()I

    move-result v1

    if-ne v1, p1, :cond_1e

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    :cond_1c
    const/4 v0, 0x1

    goto :goto_b

    :cond_1e
    if-eqz v0, :cond_39

    new-instance v1, Landroid/app/UiAutomation;

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-direct {v1, v2, v3}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    iput-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    :goto_31
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, p1}, Landroid/app/UiAutomation;->connect(I)V

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    :cond_39
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->disconnect()V

    goto :goto_31

    :cond_3f
    return-object v2
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .registers 8

    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 12

    const/16 v7, 0x17

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    :try_start_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_30

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    return v4

    :catch_30
    move-exception v2

    const-string/jumbo v4, "Instrumentation"

    const-string/jumbo v5, "Could not sleep for long press timeout"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 6

    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    move-object/from16 v12, p10

    check-cast v12, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v17}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4

    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    return-void
.end method

.method public sendCharacterSync(I)V
    .registers 4

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .registers 4

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .registers 18

    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    if-nez v13, :cond_2f

    const/16 v13, 0x101

    :cond_2f
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-nez v12, :cond_39

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :cond_39
    const-wide/16 v14, 0x0

    cmp-long v12, v2, v14

    if-nez v12, :cond_40

    move-wide v2, v4

    :cond_40
    new-instance v1, Landroid/view/KeyEvent;

    or-int/lit8 v12, v0, 0x8

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v12, v1, v14}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_10
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_c

    :try_start_5
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    iput-object v3, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    goto :goto_c
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    :goto_13
    array-length v3, v0

    if-ge v1, v3, :cond_27

    aget-object v3, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_11

    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 4

    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 11

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x178

    invoke-static {v6, v5}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_bc

    :try_start_14
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_41

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to resolve activity for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v5

    move-object p1, v3

    :goto_3f
    monitor-exit v6

    throw v5

    :cond_41
    :try_start_41
    iget-object v5, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent in process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resolved to different process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_81
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v1, v3}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v5, :cond_9f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    :cond_9f
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ab
    .catchall {:try_start_41 .. :try_end_ab} :catchall_3d

    :cond_ab
    :try_start_ab
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_b0} :catch_be
    .catchall {:try_start_ab .. :try_end_b0} :catchall_3d

    :goto_b0
    :try_start_b0
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    iget-object v5, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_3d

    monitor-exit v6

    return-object v5

    :catchall_bc
    move-exception v5

    goto :goto_3f

    :catch_be
    move-exception v2

    goto :goto_b0
.end method

.method public startAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    return-void
.end method

.method public startPerformanceSnapshot()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public startProfiling()V
    .registers 4

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    :cond_23
    return-void
.end method

.method public stopAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    return-void
.end method

.method public stopProfiling()V
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_b
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$EmptyRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public waitForIdleSync()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    new-instance v0, Landroid/app/Instrumentation$Idler;

    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$EmptyRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 5

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v2

    return-object v0

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 8

    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v2

    return-object v0

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method
