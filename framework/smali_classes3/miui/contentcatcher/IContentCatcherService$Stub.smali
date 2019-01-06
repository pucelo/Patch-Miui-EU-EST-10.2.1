.class public abstract Lmiui/contentcatcher/IContentCatcherService$Stub;
.super Landroid/os/Binder;
.source "IContentCatcherService.java"

# interfaces
.implements Lmiui/contentcatcher/IContentCatcherService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/IContentCatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.contentcatcher.IContentCatcherService"

.field static final TRANSACTION_decorateContent:I = 0x7

.field static final TRANSACTION_getPageConfig:I = 0x1

.field static final TRANSACTION_onContentCatched:I = 0x4

.field static final TRANSACTION_registerContentInjector:I = 0x2

.field static final TRANSACTION_registerContentListener:I = 0x5

.field static final TRANSACTION_unregisterContentInjector:I = 0x3

.field static final TRANSACTION_unregisterContentListener:I = 0x6

.field static final TRANSACTION_updateClientConfig:I = 0x9

.field static final TRANSACTION_updateConfig:I = 0x8

.field static final TRANSACTION_updateJobValidity:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.contentcatcher.IContentCatcherService"

    invoke-virtual {p0, p0, v0}, Lmiui/contentcatcher/IContentCatcherService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.contentcatcher.IContentCatcherService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/contentcatcher/IContentCatcherService;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/contentcatcher/IContentCatcherService;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_1a0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_8
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_12
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_41

    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/Token;

    :goto_2a
    invoke-virtual {p0, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_43

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lmiui/contentcatcher/sdk/data/PageConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3f
    const/4 v13, 0x1

    return v13

    :cond_41
    const/4 v4, 0x0

    goto :goto_2a

    :cond_43
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    :sswitch_4a
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_72

    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/Token;

    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;

    move-result-object v8

    invoke-virtual {p0, v4, v8}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_72
    const/4 v4, 0x0

    goto :goto_62

    :sswitch_74
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_94

    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/Token;

    :goto_8c
    invoke-virtual {p0, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_94
    const/4 v4, 0x0

    goto :goto_8c

    :sswitch_96
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_b6

    sget-object v13, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/contentcatcher/sdk/Content;

    :goto_ae
    invoke-virtual {p0, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_b6
    const/4 v3, 0x0

    goto :goto_ae

    :sswitch_b8
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_e0

    sget-object v13, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    move-result-object v9

    invoke-virtual {p0, v2, v9}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_e0
    const/4 v2, 0x0

    goto :goto_d0

    :sswitch_e2
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_102

    sget-object v13, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    :goto_fa
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_102
    const/4 v2, 0x0

    goto :goto_fa

    :sswitch_104
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_144

    sget-object v13, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    :goto_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_146

    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/contentcatcher/sdk/Token;

    :goto_12c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_148

    sget-object v13, Lmiui/contentcatcher/sdk/DecorateContentParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/contentcatcher/sdk/DecorateContentParam;

    :goto_13c
    invoke-virtual {p0, v2, v7, v10}, Lmiui/contentcatcher/IContentCatcherService$Stub;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_144
    const/4 v2, 0x0

    goto :goto_11c

    :cond_146
    const/4 v7, 0x0

    goto :goto_12c

    :cond_148
    const/4 v10, 0x0

    goto :goto_13c

    :sswitch_14a
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateConfig([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_15e
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_17d

    const/4 v11, 0x1

    :goto_175
    invoke-virtual {p0, v1, v6, v11}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_17d
    const/4 v11, 0x0

    goto :goto_175

    :sswitch_17f
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_19e

    const/4 v11, 0x1

    :goto_196
    invoke-virtual {p0, v1, v6, v11}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_19e
    const/4 v11, 0x0

    goto :goto_196

    :sswitch_data_1a0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_74
        0x4 -> :sswitch_96
        0x5 -> :sswitch_b8
        0x6 -> :sswitch_e2
        0x7 -> :sswitch_104
        0x8 -> :sswitch_14a
        0x9 -> :sswitch_15e
        0xa -> :sswitch_17f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
