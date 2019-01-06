.class public Landroid/view/WindowId;
.super Ljava/lang/Object;
.source "WindowId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowId$1;,
        Landroid/view/WindowId$FocusObserver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mToken:Landroid/view/IWindowId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/WindowId$1;

    invoke-direct {v0}, Landroid/view/WindowId$1;-><init>()V

    sput-object v0, Landroid/view/WindowId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowId;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/view/WindowId;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/view/WindowId;

    iget-object v1, p1, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getTarget()Landroid/view/IWindowId;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->isFocused()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public registerFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .registers 6

    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Focus observer already registered with input token"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1d
    :try_start_1d
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_1a

    :try_start_28
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    iget-object v3, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    invoke-interface {v1, v3}, Landroid/view/IWindowId;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_31
    .catchall {:try_start_28 .. :try_end_2f} :catchall_1a

    :goto_2f
    monitor-exit v2

    return-void

    :catch_31
    move-exception v0

    goto :goto_2f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "IntentSender{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    if-eqz v2, :cond_29

    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .registers 6

    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Focus observer not registered with input token"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    iget-object v3, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    invoke-interface {v1, v3}, Landroid/view/IWindowId;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_26
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    :goto_24
    monitor-exit v2

    return-void

    :catch_26
    move-exception v0

    goto :goto_24
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
