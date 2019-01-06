.class public final Landroid/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallback$1;,
        Landroid/os/RemoteCallback$OnResultListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/os/RemoteCallback$OnResultListener;


# direct methods
.method static synthetic -get0(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;
    .registers 2

    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/RemoteCallback$1;

    invoke-direct {v0}, Landroid/os/RemoteCallback$1;-><init>()V

    sput-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    iput-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public constructor <init>(Landroid/os/RemoteCallback$OnResultListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    iput-object p2, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/RemoteCallback$2;

    invoke-direct {v0, p0}, Landroid/os/RemoteCallback$2;-><init>(Landroid/os/RemoteCallback;)V

    iput-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .registers 5

    iget-object v1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/RemoteCallback$3;

    invoke-direct {v2, p0, p1}, Landroid/os/RemoteCallback$3;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    invoke-interface {v1, p1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_12

    :catch_1f
    move-exception v0

    goto :goto_12
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
