.class public abstract Lcom/xiaomi/joyose/IJoyoseInterface$Stub;
.super Landroid/os/Binder;
.source "IJoyoseInterface.java"

# interfaces
.implements Lcom/xiaomi/joyose/IJoyoseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/IJoyoseInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.joyose.IJoyoseInterface"

.field static final TRANSACTION_getAllSteps:I = 0x7

.field static final TRANSACTION_handleGameBoosterForOneway:I = 0x3

.field static final TRANSACTION_handleGameBoosterForSync:I = 0x4

.field static final TRANSACTION_predictAppBucketLevel:I = 0x5

.field static final TRANSACTION_predictAppsBucketLevel:I = 0x6

.field static final TRANSACTION_registerGameEngineListener:I = 0x1

.field static final TRANSACTION_unRegisterGameEngineListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0

    :cond_14
    new-instance v1, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_c0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_8
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_12
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V

    const/4 v13, 0x1

    return v13

    :sswitch_2b
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V

    const/4 v13, 0x1

    return v13

    :sswitch_40
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForOneway(ILjava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_55
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_73
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppBucketLevel(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_84
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppsBucketLevel(Ljava/util/List;I)V

    const/4 v13, 0x1

    return v13

    :sswitch_99
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v8, v9, v10}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->getAllSteps([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v13, 0x1

    return v13

    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_40
        0x4 -> :sswitch_55
        0x5 -> :sswitch_73
        0x6 -> :sswitch_84
        0x7 -> :sswitch_99
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
