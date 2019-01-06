.class public final Landroid/app/VoiceInteractor;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VoiceInteractor$1;,
        Landroid/app/VoiceInteractor$2;,
        Landroid/app/VoiceInteractor$AbortVoiceRequest;,
        Landroid/app/VoiceInteractor$CommandRequest;,
        Landroid/app/VoiceInteractor$CompleteVoiceRequest;,
        Landroid/app/VoiceInteractor$ConfirmationRequest;,
        Landroid/app/VoiceInteractor$PickOptionRequest;,
        Landroid/app/VoiceInteractor$Prompt;,
        Landroid/app/VoiceInteractor$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MSG_ABORT_VOICE_RESULT:I = 0x4

.field static final MSG_CANCEL_RESULT:I = 0x6

.field static final MSG_COMMAND_RESULT:I = 0x5

.field static final MSG_COMPLETE_VOICE_RESULT:I = 0x3

.field static final MSG_CONFIRMATION_RESULT:I = 0x1

.field static final MSG_PICK_OPTION_RESULT:I = 0x2

.field static final NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

.field static final TAG:Ljava/lang/String; = "VoiceInteractor"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/VoiceInteractor$Request;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field final mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

.field mContext:Landroid/content/Context;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRetaining:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/VoiceInteractor$Request;

    sput-object v0, Landroid/app/VoiceInteractor;->NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/VoiceInteractor$1;

    invoke-direct {v0, p0}, Landroid/app/VoiceInteractor$1;-><init>(Landroid/app/VoiceInteractor;)V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    new-instance v0, Landroid/app/VoiceInteractor$2;

    invoke-direct {v0, p0}, Landroid/app/VoiceInteractor$2;-><init>(Landroid/app/VoiceInteractor;)V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object p2, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    const/4 v2, 0x1

    invoke-direct {v0, p2, p4, v1, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method

.method private makeRequestList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/VoiceInteractor$Request;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_b

    const/4 v3, 0x0

    return-object v3

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_21

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Request;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    return-object v2
.end method


# virtual methods
.method attachActivity(Landroid/app/Activity;)V
    .registers 6

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    if-ne v3, p1, :cond_8

    return-void

    :cond_8
    iput-object p1, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_29

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VoiceInteractor$Request;

    iput-object p1, v1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    iput-object p1, v1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/VoiceInteractor$Request;->onAttached(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_29
    return-void
.end method

.method detachActivity()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VoiceInteractor$Request;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->onDetached()V

    iput-object v4, v1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    iput-object v4, v1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    iget-boolean v3, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    if-nez v3, :cond_40

    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3b

    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VoiceInteractor$Request;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    :cond_40
    iput-object v4, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object v4, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_51

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Active voice requests:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_26
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_51

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Request;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_51
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "VoiceInteractor misc state:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  mInteractor="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {v3}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  mActivity="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getActiveRequest(Ljava/lang/String;)Landroid/app/VoiceInteractor$Request;
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2c

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Request;

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v3, :cond_27

    if-eqz p1, :cond_29

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2e

    move-result v3

    if-eqz v3, :cond_29

    :cond_27
    monitor-exit v4

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2c
    monitor-exit v4

    return-object v5

    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getActiveRequests()[Landroid/app/VoiceInteractor$Request;
    .registers 6

    iget-object v4, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_f

    sget-object v3, Landroid/app/VoiceInteractor;->NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    monitor-exit v4

    return-object v3

    :cond_f
    :try_start_f
    new-array v2, v0, [Landroid/app/VoiceInteractor$Request;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_21

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Request;

    aput-object v3, v2, v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    monitor-exit v4

    return-object v2

    :catchall_23
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;
    .registers 7

    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VoiceInteractor$Request;

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1c

    iget-object v1, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v2

    return-object v0

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method retainInstance()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    return-void
.end method

.method public submitRequest(Landroid/app/VoiceInteractor$Request;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public submitRequest(Landroid/app/VoiceInteractor$Request;Ljava/lang/String;)Z
    .registers 8

    :try_start_0
    iget-object v2, p1, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Given "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is already active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    const-string/jumbo v2, "VoiceInteractor"

    const-string/jumbo v3, "Remove voice interactor service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2

    :cond_31
    :try_start_31
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/VoiceInteractor;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

    invoke-virtual {p1, v2, v3, v4}, Landroid/app/VoiceInteractor$Request;->submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v1

    iput-object v1, p1, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    iget-object v2, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object v2, p1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    iput-object v2, p1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    iput-object p2, p1, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_4e} :catch_25

    :try_start_4e
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5a

    :try_start_57
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    :catchall_5a
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5d} :catch_25
.end method

.method public supportsCommands([Ljava/lang/String;)[Z
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/app/IVoiceInteractor;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Voice interactor has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
