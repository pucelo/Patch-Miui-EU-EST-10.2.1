.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final TRANSACTION_onInterruptionFilterChanged:I = 0x6

.field static final TRANSACTION_onListenerConnected:I = 0x1

.field static final TRANSACTION_onListenerHintsChanged:I = 0x5

.field static final TRANSACTION_onNotificationChannelGroupModification:I = 0x8

.field static final TRANSACTION_onNotificationChannelModification:I = 0x7

.field static final TRANSACTION_onNotificationEnqueued:I = 0x9

.field static final TRANSACTION_onNotificationPosted:I = 0x2

.field static final TRANSACTION_onNotificationRankingUpdate:I = 0x4

.field static final TRANSACTION_onNotificationRemoved:I = 0x3

.field static final TRANSACTION_onNotificationSnoozedUntilContext:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/notification/INotificationListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/notification/INotificationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_13e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_29

    sget-object v11, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    :goto_24
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v11, 0x1

    return v11

    :cond_29
    const/4 v2, 0x0

    goto :goto_24

    :sswitch_2b
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4c

    sget-object v11, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/NotificationRankingUpdate;

    :goto_47
    invoke-virtual {p0, v1, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v11, 0x1

    return v11

    :cond_4c
    const/4 v5, 0x0

    goto :goto_47

    :sswitch_4e
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_73

    sget-object v11, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/NotificationRankingUpdate;

    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v5, v7}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;I)V

    const/4 v11, 0x1

    return v11

    :cond_73
    const/4 v5, 0x0

    goto :goto_6a

    :sswitch_75
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8e

    sget-object v11, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    :goto_89
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    const/4 v11, 0x1

    return v11

    :cond_8e
    const/4 v2, 0x0

    goto :goto_89

    :sswitch_90
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_9f
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_ae
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_dd

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    :goto_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_df

    sget-object v11, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    :goto_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p0, v3, v4, v8, v10}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    const/4 v11, 0x1

    return v11

    :cond_dd
    const/4 v4, 0x0

    goto :goto_c6

    :cond_df
    const/4 v8, 0x0

    goto :goto_d4

    :sswitch_e1
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_110

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    :goto_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_112

    sget-object v11, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    :goto_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p0, v3, v4, v9, v10}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    const/4 v11, 0x1

    return v11

    :cond_110
    const/4 v4, 0x0

    goto :goto_f9

    :cond_112
    const/4 v9, 0x0

    goto :goto_107

    :sswitch_114
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V

    const/4 v11, 0x1

    return v11

    :sswitch_127
    const-string/jumbo v11, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_data_13e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_75
        0x5 -> :sswitch_90
        0x6 -> :sswitch_9f
        0x7 -> :sswitch_ae
        0x8 -> :sswitch_e1
        0x9 -> :sswitch_114
        0xa -> :sswitch_127
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
