.class public abstract Landroid/net/INetworkScoreService$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreService"

.field static final TRANSACTION_clearScores:I = 0x2

.field static final TRANSACTION_disableScoring:I = 0x4

.field static final TRANSACTION_getActiveScorer:I = 0xa

.field static final TRANSACTION_getActiveScorerPackage:I = 0x9

.field static final TRANSACTION_getAllValidScorers:I = 0xb

.field static final TRANSACTION_isCallerActiveScorer:I = 0x8

.field static final TRANSACTION_registerNetworkScoreCache:I = 0x5

.field static final TRANSACTION_requestScores:I = 0x7

.field static final TRANSACTION_setActiveScorer:I = 0x3

.field static final TRANSACTION_unregisterNetworkScoreCache:I = 0x6

.field static final TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.INetworkScoreService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.INetworkScoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkScoreService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/INetworkScoreService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/INetworkScoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkScoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_124

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v10, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/ScoredNetwork;

    invoke-virtual {p0, v3}, Landroid/net/INetworkScoreService$Stub;->updateScores([Landroid/net/ScoredNetwork;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_2d

    const/4 v10, 0x1

    :goto_28
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_2d
    const/4 v10, 0x0

    goto :goto_28

    :sswitch_2f
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->clearScores()Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_44

    const/4 v10, 0x1

    :goto_3f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_44
    const/4 v10, 0x0

    goto :goto_3f

    :sswitch_46
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/INetworkScoreService$Stub;->setActiveScorer(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_5f

    const/4 v10, 0x1

    :goto_5a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_5f
    const/4 v10, 0x0

    goto :goto_5a

    :sswitch_61
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->disableScoring()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_6f
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/INetworkScoreService$Stub;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_8d
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/net/INetworkScoreService$Stub;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_a7
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v10, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/NetworkKey;

    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->requestScores([Landroid/net/NetworkKey;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_c4

    const/4 v10, 0x1

    :goto_bf
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_c4
    const/4 v10, 0x0

    goto :goto_bf

    :sswitch_c6
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/INetworkScoreService$Stub;->isCallerActiveScorer(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_df

    const/4 v10, 0x1

    :goto_da
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_df
    const/4 v10, 0x0

    goto :goto_da

    :sswitch_e1
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_f3
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_10c

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, p3, v10}, Landroid/net/NetworkScorerAppData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_10a
    const/4 v10, 0x1

    return v10

    :cond_10c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10a

    :sswitch_111
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getAllValidScorers()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    nop

    :sswitch_data_124
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_46
        0x4 -> :sswitch_61
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_a7
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_e1
        0xa -> :sswitch_f3
        0xb -> :sswitch_111
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
