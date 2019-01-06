.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$1;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$StartListeningArgs;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_RESET:I = 0x4

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private mCurrentCallback:Landroid/speech/RecognitionService$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/speech/RecognitionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    new-instance v0, Landroid/speech/RecognitionService$1;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkPermissions(Landroid/speech/IRecognitionListener;)Z
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    return v1

    :cond_c
    :try_start_c
    const-string/jumbo v1, "RecognitionService"

    const-string/jumbo v2, "call for recognition service without RECORD_AUDIO permissions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1a} :catch_1b

    :goto_1a
    return v3

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "RecognitionService"

    const-string/jumbo v2, "sending ERROR_INSUFFICIENT_PERMISSIONS message failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-get0(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_20

    const-string/jumbo v0, "RecognitionService"

    const-string/jumbo v1, "cancel called by client who did not call startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_20
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    iput-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    goto :goto_5
.end method

.method private dispatchClearCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    return-void
.end method

.method private dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .registers 10

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v2, :cond_2a

    :try_start_5
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/speech/RecognitionService$2;

    invoke-direct {v3, p0, p2}, Landroid/speech/RecognitionService$2;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_1f

    new-instance v2, Landroid/speech/RecognitionService$Callback;

    invoke-direct {v2, p0, p2, p3, v5}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;ILandroid/speech/RecognitionService$Callback;)V

    iput-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, p1, v2}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    :goto_1e
    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v2, "RecognitionService"

    const-string/jumbo v3, "dead listener on startListening"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    const/16 v2, 0x8

    :try_start_2c
    invoke-interface {p2, v2}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_39

    :goto_2f
    const-string/jumbo v2, "RecognitionService"

    const-string/jumbo v3, "concurrent startListening received - ignoring this call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catch_39
    move-exception v0

    const-string/jumbo v2, "RecognitionService"

    const-string/jumbo v3, "onError call from startListening failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v1, :cond_12

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    const-string/jumbo v1, "RecognitionService"

    const-string/jumbo v2, "stopListening called with no preceding startListening - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-static {v1}, Landroid/speech/RecognitionService$Callback;->-get0(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_3c

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    const-string/jumbo v1, "RecognitionService"

    const-string/jumbo v2, "stopListening called by other caller than startListening - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_11

    :catch_31
    move-exception v0

    const-string/jumbo v1, "RecognitionService"

    const-string/jumbo v2, "onError call from stopListening failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_3c
    :try_start_3c
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_31

    goto :goto_11
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    return-object v0
.end method

.method protected abstract onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected abstract onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method
