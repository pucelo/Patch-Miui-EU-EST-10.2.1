.class final Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

.field private final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field private mUnbindCalled:Z

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    new-instance v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-direct {v0, p0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    return-void
.end method

.method private cleanLocked()V
    .registers 5

    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_e

    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    :cond_17
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    return-void

    :cond_20
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->-get0(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-ne v0, p0, :cond_3d

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return-void
.end method


# virtual methods
.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 8

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v2, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v4, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v5, p0, p1}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_28

    :goto_24
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void

    :catch_28
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_24
.end method

.method public onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 11

    iget-boolean v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v4, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    :try_start_a
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_33

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SessionRequest;

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v5, v2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v7, v2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v8, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v8, p0, v2}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_33
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_3c

    :goto_38
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void

    :catch_3c
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_38
.end method

.method public onServiceDisconnectedLocked()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return-void
.end method

.method onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_26

    if-eqz v1, :cond_d

    monitor-exit v2

    return-void

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_26

    move-result v1

    if-eqz v1, :cond_21

    :try_start_15
    iget-object v1, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    iget-object v3, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v1, v3}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->register(Landroid/os/IInterface;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_29
    .catchall {:try_start_15 .. :try_end_21} :catchall_26

    :cond_21
    :goto_21
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    monitor-exit v2

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_29
    move-exception v0

    goto :goto_21
.end method

.method public removeAllLocked()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remove the spell checker bind unexpectedly."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_10
    if-ltz v0, :cond_22

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v2, v0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v3, v2}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_22
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
