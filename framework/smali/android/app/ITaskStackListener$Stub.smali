.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final TRANSACTION_onActivityDismissingDockedStack:I = 0x8

.field static final TRANSACTION_onActivityForcedResizable:I = 0x7

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x9

.field static final TRANSACTION_onActivityPinned:I = 0x2

.field static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xe

.field static final TRANSACTION_onActivityUnpinned:I = 0x3

.field static final TRANSACTION_onPinnedActivityRestartAttempt:I = 0x4

.field static final TRANSACTION_onPinnedStackAnimationEnded:I = 0x6

.field static final TRANSACTION_onPinnedStackAnimationStarted:I = 0x5

.field static final TRANSACTION_onTaskCreated:I = 0xa

.field static final TRANSACTION_onTaskDescriptionChanged:I = 0xd

.field static final TRANSACTION_onTaskMovedToFront:I = 0xc

.field static final TRANSACTION_onTaskProfileLocked:I = 0x10

.field static final TRANSACTION_onTaskRemovalStarted:I = 0xf

.field static final TRANSACTION_onTaskRemoved:I = 0xb

.field static final TRANSACTION_onTaskSnapshotChanged:I = 0x11

.field static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.ITaskStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/ITaskStackListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_134

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_9
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    return v9

    :sswitch_1a
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v3, v7}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;II)V

    return v9

    :sswitch_30
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    return v9

    :sswitch_3a
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4b

    const/4 v2, 0x1

    :goto_47
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onPinnedActivityRestartAttempt(Z)V

    return v9

    :cond_4b
    const/4 v2, 0x0

    goto :goto_47

    :sswitch_4d
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onPinnedStackAnimationStarted()V

    return v9

    :sswitch_57
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onPinnedStackAnimationEnded()V

    return v9

    :sswitch_61
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v3, v7}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    return v9

    :sswitch_77
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedStack()V

    return v9

    :sswitch_81
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed()V

    return v9

    :sswitch_8b
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a7

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_a3
    invoke-virtual {p0, v0, v6}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    return v9

    :cond_a7
    const/4 v6, 0x0

    goto :goto_a3

    :sswitch_a9
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    return v9

    :sswitch_b7
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(I)V

    return v9

    :sswitch_c5
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e1

    sget-object v8, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$TaskDescription;

    :goto_dd
    invoke-virtual {p0, v0, v4}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    return v9

    :cond_e1
    const/4 v4, 0x0

    goto :goto_dd

    :sswitch_e3
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    return v9

    :sswitch_f5
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(I)V

    return v9

    :sswitch_103
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(II)V

    return v9

    :sswitch_115
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_131

    sget-object v8, Landroid/app/ActivityManager$TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$TaskSnapshot;

    :goto_12d
    invoke-virtual {p0, v0, v5}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return v9

    :cond_131
    const/4 v5, 0x0

    goto :goto_12d

    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_30
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_57
        0x7 -> :sswitch_61
        0x8 -> :sswitch_77
        0x9 -> :sswitch_81
        0xa -> :sswitch_8b
        0xb -> :sswitch_a9
        0xc -> :sswitch_b7
        0xd -> :sswitch_c5
        0xe -> :sswitch_e3
        0xf -> :sswitch_f5
        0x10 -> :sswitch_103
        0x11 -> :sswitch_115
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
