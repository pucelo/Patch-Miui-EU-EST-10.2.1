.class public abstract Landroid/view/IPinnedStackListener$Stub;
.super Landroid/os/Binder;
.source "IPinnedStackListener.java"

# interfaces
.implements Landroid/view/IPinnedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPinnedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IPinnedStackListener"

.field static final TRANSACTION_onActionsChanged:I = 0x5

.field static final TRANSACTION_onImeVisibilityChanged:I = 0x3

.field static final TRANSACTION_onListenerRegistered:I = 0x1

.field static final TRANSACTION_onMinimizedStateChanged:I = 0x4

.field static final TRANSACTION_onMovementBoundsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IPinnedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.IPinnedStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IPinnedStackListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/IPinnedStackListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/IPinnedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IPinnedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_ae

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_9
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_10
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IPinnedStackController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackController;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/view/IPinnedStackListener$Stub;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    return v10

    :sswitch_22
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68

    const/4 v4, 0x1

    :goto_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IPinnedStackListener$Stub;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    return v10

    :cond_62
    const/4 v1, 0x0

    goto :goto_36

    :cond_64
    const/4 v2, 0x0

    goto :goto_44

    :cond_66
    const/4 v3, 0x0

    goto :goto_52

    :cond_68
    const/4 v4, 0x0

    goto :goto_59

    :sswitch_6a
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v8, 0x1

    :goto_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/view/IPinnedStackListener$Stub;->onImeVisibilityChanged(ZI)V

    return v10

    :cond_7f
    const/4 v8, 0x0

    goto :goto_77

    :sswitch_81
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_92

    const/4 v8, 0x1

    :goto_8e
    invoke-virtual {p0, v8}, Landroid/view/IPinnedStackListener$Stub;->onMinimizedStateChanged(Z)V

    return v10

    :cond_92
    const/4 v8, 0x0

    goto :goto_8e

    :sswitch_94
    const-string/jumbo v0, "android.view.IPinnedStackListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ParceledListSlice;

    :goto_a8
    invoke-virtual {p0, v6}, Landroid/view/IPinnedStackListener$Stub;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    return v10

    :cond_ac
    const/4 v6, 0x0

    goto :goto_a8

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_81
        0x5 -> :sswitch_94
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
