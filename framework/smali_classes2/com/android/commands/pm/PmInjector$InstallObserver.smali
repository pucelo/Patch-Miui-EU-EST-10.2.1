.class public Lcom/android/commands/pm/PmInjector$InstallObserver;
.super Landroid/os/IMessenger$Stub;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/PmInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallObserver"
.end annotation


# instance fields
.field finished:Z

.field msg:Ljava/lang/String;

.field result:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    :cond_17
    invoke-virtual {p0}, Lcom/android/commands/pm/PmInjector$InstallObserver;->notifyAll()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
