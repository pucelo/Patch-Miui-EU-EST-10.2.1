.class public Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiActivityController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
    }
.end annotation


# static fields
.field private static final DEBUG_MESSAGES:Z

.field private static final PREFIX_TAG:Ljava/lang/String; = "MiuiLog-ActivityObserver:"

.field private static final TAG:Ljava/lang/String; = "MiuiActivityController"

.field private static sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# instance fields
.field private final mActivityObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IMiuiActivityObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

.field private final mSendIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "debug.miui.activity.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiActivityController"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .registers 1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    return-object v0
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "MiuiActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .registers 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .registers 11

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const-string/jumbo v2, "MiuiLog-ActivityObserver:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SendMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->codeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " observer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_55

    return-void

    :cond_55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    if-eqz p5, :cond_67

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_67
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public activityDestroyed(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityIdle(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityPaused(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityResumed(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityStopped(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
