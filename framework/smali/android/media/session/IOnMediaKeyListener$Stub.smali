.class public abstract Landroid/media/session/IOnMediaKeyListener$Stub;
.super Landroid/os/Binder;
.source "IOnMediaKeyListener.java"

# interfaces
.implements Landroid/media/session/IOnMediaKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/IOnMediaKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/IOnMediaKeyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.IOnMediaKeyListener"

.field static final TRANSACTION_onMediaKey:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.IOnMediaKeyListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/IOnMediaKeyListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.session.IOnMediaKeyListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/IOnMediaKeyListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/session/IOnMediaKeyListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/session/IOnMediaKeyListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/IOnMediaKeyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "android.media.session.IOnMediaKeyListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "android.media.session.IOnMediaKeyListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    :goto_32
    invoke-virtual {p0, v0, v1}, Landroid/media/session/IOnMediaKeyListener$Stub;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V

    return v3

    :cond_36
    const/4 v0, 0x0

    goto :goto_24

    :cond_38
    const/4 v1, 0x0

    goto :goto_32

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method