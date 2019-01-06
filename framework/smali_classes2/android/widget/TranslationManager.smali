.class Landroid/widget/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationManager$TranslateTask;,
        Landroid/widget/TranslationManager$TranslationConnection;,
        Landroid/widget/TranslationManager$TranslationRemoteCallback;
    }
.end annotation


# static fields
.field static final MSG_QUERY_FAIL:I = 0x1

.field static final MSG_QUERY_SUCCESS:I = 0x0

.field private static final STATE_DESTROYING:I = 0x3

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_INITIALIZING:I = 0x1

.field private static final STATE_TRANSLATING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TranslationManager"

.field private static final TRANSLATION_SERVICE_CLASS:Ljava/lang/String; = "com.miui.translationservice.TranslationService"

.field private static final TRANSLATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.miui.translationservice"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

.field private mService:Lcom/miui/translationservice/ITranslation;

.field private mState:I


# direct methods
.method static synthetic -get0(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TranslationManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TranslationManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TranslationManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDestroyed()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TranslationManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDisconnected()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TranslationManager;->onInitialized(Lcom/miui/translationservice/ITranslation;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_17

    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_f
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_17
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_f
.end method

.method private doDestroy()V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    new-instance v0, Landroid/widget/TranslationManager$2;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$2;-><init>(Landroid/widget/TranslationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TranslationManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doInitialize()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "try to bind translation service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_18

    new-instance v0, Landroid/widget/TranslationManager$TranslationConnection;

    invoke-direct {v0, p0, v2}, Landroid/widget/TranslationManager$TranslationConnection;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslationConnection;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    :cond_18
    new-instance v0, Landroid/widget/TranslationManager$1;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$1;-><init>(Landroid/widget/TranslationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TranslationManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doTranslate()V
    .registers 8

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TranslationManager;->mState:I

    :try_start_3
    iget-object v1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iget-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v2, v2, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v3, v3, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v4, v4, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    new-instance v5, Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iget-object v6, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v5, p0, v6}, Landroid/widget/TranslationManager$TranslationRemoteCallback;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/translationservice/ITranslation;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "TranslationManager"

    const-string/jumbo v2, "bind translation service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_1b
.end method

.method private onDestroyed()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "new task received when destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    :cond_18
    return-void
.end method

.method private onDisconnected()V
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "disconnected during translating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    invoke-direct {p0, v2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    iput-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    :cond_19
    return-void
.end method

.method private onInitialized(Lcom/miui/translationservice/ITranslation;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    iput-object p1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_16

    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "translate pending task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "no pending task, unbind service directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    goto :goto_15

    :cond_23
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "bind service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_15

    iput-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {p0, v2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_15
.end method

.method private onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-static {v0, p1}, Landroid/widget/TranslationManager$TranslateTask;->equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "translate task done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    iput-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    :cond_17
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-nez v0, :cond_2d

    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "no pending task found. release service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "task changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    goto :goto_2c
.end method


# virtual methods
.method isAvailable()Z
    .registers 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TranslationManager$TranslateTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    :cond_f
    return-void
.end method
