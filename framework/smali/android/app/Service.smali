.class public abstract Landroid/app/Service;
.super Landroid/content/ContextWrapper;
.source "Service.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final START_CONTINUATION_MASK:I = 0xf

.field public static final START_FLAG_REDELIVERY:I = 0x1

.field public static final START_FLAG_RETRY:I = 0x2

.field public static final START_NOT_STICKY:I = 0x2

.field public static final START_REDELIVER_INTENT:I = 0x3

.field public static final START_STICKY:I = 0x1

.field public static final START_STICKY_COMPATIBILITY:I = 0x0

.field public static final START_TASK_REMOVED_COMPLETE:I = 0x3e8

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Service"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mApplication:Landroid/app/Application;

.field private mClassName:Ljava/lang/String;

.field private mStartCompatibility:Z

.field private mThread:Landroid/app/ActivityThread;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    return-void
.end method


# virtual methods
.method public final attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .registers 9

    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    check-cast p6, Landroid/app/IActivityManager;

    iput-object p6, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final detachAndCleanUp()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method final getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    iget-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final setForeground(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForeground: ignoring old API call on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startForeground(ILandroid/app/Notification;)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v6

    goto :goto_11
.end method

.method public final stopForeground(I)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v6

    goto :goto_11
.end method

.method public final stopForeground(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final stopSelf()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public final stopSelf(I)V
    .registers 6

    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public final stopSelfResult(I)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_6

    return v4

    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_16

    move-result v1

    return v1

    :catch_16
    move-exception v0

    return v4
.end method
