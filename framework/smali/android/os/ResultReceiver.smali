.class public Landroid/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ResultReceiver$1;,
        Landroid/os/ResultReceiver$MyResultReceiver;,
        Landroid/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/ResultReceiver$1;

    invoke-direct {v0}, Landroid/os/ResultReceiver$1;-><init>()V

    sput-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    iput-object p1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .registers 6

    iget-boolean v1, p0, Landroid/os/ResultReceiver;->mLocal:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/ResultReceiver$MyRunnable;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_12

    :cond_17
    iget-object v1, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    if-eqz v1, :cond_20

    :try_start_1b
    iget-object v1, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/ResultReceiver$MyResultReceiver;

    invoke-direct {v0, p0}, Landroid/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/os/ResultReceiver;)V

    iput-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    :cond_c
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method