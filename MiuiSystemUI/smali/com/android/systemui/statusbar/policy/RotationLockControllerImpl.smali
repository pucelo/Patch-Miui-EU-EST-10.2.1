.class public final Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;
.super Ljava/lang/Object;
.source "RotationLockControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Landroid/view/IWindowManager;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->getRotation(Landroid/view/IWindowManager;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setListening(Z)V

    return-void
.end method

.method private getRotation(Landroid/view/IWindowManager;)I
    .locals 4

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    const-string/jumbo v1, "getRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "getDefaultDisplayRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(ZZ)V

    return-void
.end method

.method private setRotationLock(ZI)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;ZI)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public getRotationLockOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotationLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    goto :goto_0
.end method

.method public setRotationLock(Landroid/content/Context;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setRotationLock(ZI)V

    return-void
.end method

.method public setRotationLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setRotationLock(Landroid/content/Context;Z)V

    return-void
.end method
