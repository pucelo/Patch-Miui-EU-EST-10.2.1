.class public abstract Lcom/miui/weeder/IWeeder$Stub;
.super Landroid/os/Binder;
.source "IWeeder.java"

# interfaces
.implements Lcom/miui/weeder/IWeeder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weeder/IWeeder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weeder/IWeeder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.weeder.IWeeder"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.weeder.IWeeder"

    invoke-virtual {p0, p0, v0}, Lcom/miui/weeder/IWeeder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/weeder/IWeeder;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.weeder.IWeeder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/weeder/IWeeder;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/weeder/IWeeder;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/weeder/IWeeder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/weeder/IWeeder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_8
    const-string/jumbo v0, "com.miui.weeder.IWeeder"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_8
    .end packed-switch
.end method
