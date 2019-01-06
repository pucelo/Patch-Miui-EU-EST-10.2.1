.class public abstract Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;
.super Landroid/os/Binder;
.source "IContentListenerCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.contentcatcher.sdk.listener.IContentListenerCallback"

.field static final TRANSACTION_onContentReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_2a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Lmiui/contentcatcher/sdk/ClientCatcherResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/ClientCatcherResult;

    :goto_24
    invoke-virtual {p0, v0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    return v2

    :cond_28
    const/4 v0, 0x0

    goto :goto_24

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
