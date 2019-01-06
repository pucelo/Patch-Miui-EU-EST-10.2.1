.class public abstract Lcom/android/ims/internal/IImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUtListener"

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0x8

.field static final TRANSACTION_utConfigurationCallBarringQueried:I = 0x5

.field static final TRANSACTION_utConfigurationCallForwardQueried:I = 0x6

.field static final TRANSACTION_utConfigurationCallWaitingQueried:I = 0x7

.field static final TRANSACTION_utConfigurationQueried:I = 0x3

.field static final TRANSACTION_utConfigurationQueryFailed:I = 0x4

.field static final TRANSACTION_utConfigurationUpdateFailed:I = 0x2

.field static final TRANSACTION_utConfigurationUpdated:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.IImsUtListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/IImsUtListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_10c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_9
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_10
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    return v8

    :sswitch_26
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4a

    sget-object v7, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsReasonInfo;

    :goto_46
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return v8

    :cond_4a
    const/4 v4, 0x0

    goto :goto_46

    :sswitch_4c
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_70

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_6c
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    return v8

    :cond_70
    const/4 v3, 0x0

    goto :goto_6c

    :sswitch_72
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_96

    sget-object v7, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsReasonInfo;

    :goto_92
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    return v8

    :cond_96
    const/4 v4, 0x0

    goto :goto_92

    :sswitch_98
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v7, Lcom/android/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/ims/ImsSsInfo;

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    return v8

    :sswitch_b6
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v7, Lcom/android/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/ims/ImsCallForwardInfo;

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    return v8

    :sswitch_d4
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v7, Lcom/android/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/ims/ImsSsInfo;

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    return v8

    :sswitch_f2
    const-string/jumbo v7, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10a

    sget-object v7, Lcom/android/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsSsData;

    :goto_106
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->onSupplementaryServiceIndication(Lcom/android/ims/ImsSsData;)V

    return v8

    :cond_10a
    const/4 v0, 0x0

    goto :goto_106

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_72
        0x5 -> :sswitch_98
        0x6 -> :sswitch_b6
        0x7 -> :sswitch_d4
        0x8 -> :sswitch_f2
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
