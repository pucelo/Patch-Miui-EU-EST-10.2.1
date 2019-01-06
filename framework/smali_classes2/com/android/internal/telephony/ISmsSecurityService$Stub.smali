.class public abstract Lcom/android/internal/telephony/ISmsSecurityService$Stub;
.super Landroid/os/Binder;
.source "ISmsSecurityService.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsSecurityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISmsSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsSecurityService"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_sendResponse:I = 0x3

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.telephony.ISmsSecurityService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISmsSecurityService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/telephony/ISmsSecurityService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_76

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_11
    const-string/jumbo v6, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_29

    move v4, v5

    :cond_29
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_2d
    const-string/jumbo v6, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_45

    move v4, v5

    :cond_45
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_49
    const-string/jumbo v6, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    sget-object v6, Lcom/android/internal/telephony/SmsAuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsAuthorizationRequest;

    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_74

    const/4 v2, 0x1

    :goto_64
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6e

    move v4, v5

    :cond_6e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :cond_72
    const/4 v1, 0x0

    goto :goto_5d

    :cond_74
    const/4 v2, 0x0

    goto :goto_64

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_49
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
