.class public Lcom/android/keyguard/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Part;


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mDozeService:Lcom/android/keyguard/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mPendingScreenState:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/doze/DozeMachine$Service;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/doze/-$Lambda$SuUHOx9B6CkHnl1w8LkwhSZPMOk;

    invoke-direct {v0, p0}, Lcom/android/keyguard/doze/-$Lambda$SuUHOx9B6CkHnl1w8LkwhSZPMOk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/doze/DozeScreenState;->mPendingScreenState:I

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeScreenState;->mDozeService:Lcom/android/keyguard/doze/DozeMachine$Service;

    iput-object p2, p0, Lcom/android/keyguard/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private applyPendingScreenState()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/doze/DozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/doze/DozeScreenState;->applyScreenState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/doze/DozeScreenState;->mPendingScreenState:I

    return-void
.end method

.method private applyScreenState(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeScreenState;->mDozeService:Lcom/android/keyguard/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service;->setDozeScreenState(I)V

    iput v1, p0, Lcom/android/keyguard/doze/DozeScreenState;->mPendingScreenState:I

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_doze_DozeScreenState-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method

.method public transitionTo(Lcom/android/keyguard/doze/DozeMachine$State;Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/android/keyguard/doze/DozeMachine$State;->screenState()I

    move-result v1

    sget-object v2, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne p2, v2, :cond_0

    iput v3, p0, Lcom/android/keyguard/doze/DozeScreenState;->mPendingScreenState:I

    iget-object v2, p0, Lcom/android/keyguard/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/doze/DozeScreenState;->applyScreenState(I)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v2, Lcom/android/keyguard/doze/DozeMachine$State;->INITIALIZED:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne p1, v2, :cond_4

    :cond_2
    iput v1, p0, Lcom/android/keyguard/doze/DozeScreenState;->mPendingScreenState:I

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/doze/DozeScreenState;->applyScreenState(I)V

    return-void
.end method
