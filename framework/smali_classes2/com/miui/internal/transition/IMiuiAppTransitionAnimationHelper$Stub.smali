.class public abstract Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiAppTransitionAnimationHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

.field static final TRANSACTION_getSpec:I = 0x1

.field static final TRANSACTION_notifyMiuiAnimationEnd:I = 0x3

.field static final TRANSACTION_notifyMiuiAnimationStart:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_48

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2e

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v4}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2d
    return v4

    :cond_2e
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    :sswitch_33
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationStart()V

    return v4

    :sswitch_3d
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationEnd()V

    return v4

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_3d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
