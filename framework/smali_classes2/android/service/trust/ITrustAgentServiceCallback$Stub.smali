.class public abstract Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentServiceCallback.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentServiceCallback"

.field static final TRANSACTION_addEscrowToken:I = 0x5

.field static final TRANSACTION_grantTrust:I = 0x1

.field static final TRANSACTION_isEscrowTokenActive:I = 0x6

.field static final TRANSACTION_onConfigureCompleted:I = 0x4

.field static final TRANSACTION_removeEscrowToken:I = 0x7

.field static final TRANSACTION_revokeTrust:I = 0x2

.field static final TRANSACTION_setManagingTrust:I = 0x3

.field static final TRANSACTION_unlockUserWithToken:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.trust.ITrustAgentServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_ba

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_31

    sget-object v11, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p0, v2, v6, v7, v10}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->grantTrust(Ljava/lang/CharSequence;JI)V

    const/4 v11, 0x1

    return v11

    :cond_31
    const/4 v2, 0x0

    goto :goto_24

    :sswitch_33
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->revokeTrust()V

    const/4 v11, 0x1

    return v11

    :sswitch_3e
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_50

    const/4 v3, 0x1

    :goto_4b
    invoke-virtual {p0, v3}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->setManagingTrust(Z)V

    const/4 v11, 0x1

    return v11

    :cond_50
    const/4 v3, 0x0

    goto :goto_4b

    :sswitch_52
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_68

    const/4 v3, 0x1

    :goto_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    const/4 v11, 0x1

    return v11

    :cond_68
    const/4 v3, 0x0

    goto :goto_5f

    :sswitch_6a
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->addEscrowToken([BI)V

    const/4 v11, 0x1

    return v11

    :sswitch_7d
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v1, v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->isEscrowTokenActive(JI)V

    const/4 v11, 0x1

    return v11

    :sswitch_90
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v1, v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->removeEscrowToken(JI)V

    const/4 v11, 0x1

    return v11

    :sswitch_a3
    const-string/jumbo v11, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p0, v0, v1, v9, v10}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->unlockUserWithToken(J[BI)V

    const/4 v11, 0x1

    return v11

    :sswitch_data_ba
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_52
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_90
        0x8 -> :sswitch_a3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
