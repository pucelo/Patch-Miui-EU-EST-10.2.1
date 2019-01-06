.class public abstract Landroid/media/IMiuiAudioRecord$Stub;
.super Landroid/os/Binder;
.source "IMiuiAudioRecord.java"

# interfaces
.implements Landroid/media/IMiuiAudioRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMiuiAudioRecord$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMiuiAudioRecord"

.field static final TRANSACTION_fillBuffer:I = 0x4

.field static final TRANSACTION_getMetaData:I = 0x3

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.IMiuiAudioRecord"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMiuiAudioRecord$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMiuiAudioRecord;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.IMiuiAudioRecord"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMiuiAudioRecord;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/IMiuiAudioRecord;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/IMiuiAudioRecord$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMiuiAudioRecord$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_7a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_a
    const-string/jumbo v6, "android.media.IMiuiAudioRecord"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_11
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/media/IMiuiAudioRecord$Stub;->start(J)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_25

    move v6, v7

    :cond_25
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_29
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->stop()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_39

    move v6, v7

    :cond_39
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_3d
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_53

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_52
    return v7

    :cond_53
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52

    :sswitch_57
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/IMiuiAudioRecord$Stub;->fillBuffer(II)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_75

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_74
    return v7

    :cond_75
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_57
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
