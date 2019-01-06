.class public final Landroid/os/Messenger;
.super Ljava/lang/Object;
.source "Messenger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Messenger$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTarget:Landroid/os/IMessenger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Messenger$1;

    invoke-direct {v0}, Landroid/os/Messenger$1;-><init>()V

    sput-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Handler;->getIMessenger()Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/IMessenger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    return-void
.end method

.method public static readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    :cond_c
    return-object v1
.end method

.method public static writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return v3

    :cond_4
    :try_start_4
    iget-object v1, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v1}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Landroid/os/Messenger;

    iget-object v2, p1, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v2}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_15} :catch_17

    move-result v1

    return v1

    :catch_17
    move-exception v0

    return v3
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public send(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0, p1}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
