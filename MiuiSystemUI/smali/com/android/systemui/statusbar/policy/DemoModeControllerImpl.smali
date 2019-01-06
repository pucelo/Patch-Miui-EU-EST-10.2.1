.class public Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;
.super Ljava/lang/Object;
.source "DemoModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DemoModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDemoReceiver:Landroid/content/BroadcastReceiver;

.field private mLastArgs:Landroid/os/Bundle;

.field private mLastCommand:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mLastArgs:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mLastCommand:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.android.systemui.demo"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.DUMP"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mLastCommand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mLastCommand:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mLastArgs:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;->onDemoModeChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;)V

    return-void
.end method
