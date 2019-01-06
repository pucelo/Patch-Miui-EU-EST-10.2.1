.class public abstract Lcom/android/internal/app/IMiuiSysUser$Stub;
.super Landroid/os/Binder;
.source "IMiuiSysUser.java"

# interfaces
.implements Lcom/android/internal/app/IMiuiSysUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMiuiSysUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IMiuiSysUser"

.field static final TRANSACTION_notifyAMCreateActivity:I = 0x7

.field static final TRANSACTION_notifyAMDestroyActivity:I = 0x3

.field static final TRANSACTION_notifyAMPauseActivity:I = 0x4

.field static final TRANSACTION_notifyAMProcDied:I = 0x2

.field static final TRANSACTION_notifyAMProcStart:I = 0x1

.field static final TRANSACTION_notifyAMRestartActivity:I = 0x6

.field static final TRANSACTION_notifyAMResumeActivity:I = 0x5

.field static final TRANSACTION_notifyEvent:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IMiuiSysUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMiuiSysUser;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.app.IMiuiSysUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/app/IMiuiSysUser;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_11e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_8
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_12
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_44
    const/4 v9, 0x0

    goto :goto_3a

    :sswitch_46
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v2, v14}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMProcDied(ILjava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_5b
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMDestroyActivity(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_70
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMPauseActivity(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_85
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_aa

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V

    const/4 v3, 0x1

    return v3

    :cond_aa
    const/4 v11, 0x0

    goto :goto_9d

    :sswitch_ac
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d1

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V

    const/4 v3, 0x1

    return v3

    :cond_d1
    const/4 v11, 0x0

    goto :goto_c4

    :sswitch_d3
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f8

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V

    const/4 v3, 0x1

    return v3

    :cond_f8
    const/4 v11, 0x0

    goto :goto_eb

    :sswitch_fa
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11b

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_116
    invoke-virtual {p0, v12, v13}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v3, 0x1

    return v3

    :cond_11b
    const/4 v13, 0x0

    goto :goto_116

    nop

    :sswitch_data_11e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_46
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_70
        0x5 -> :sswitch_85
        0x6 -> :sswitch_ac
        0x7 -> :sswitch_d3
        0x8 -> :sswitch_fa
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
