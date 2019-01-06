.class public Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;
.super Ljava/lang/Object;
.source "MiuiStatusBarPromptController.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;
    }
.end annotation


# instance fields
.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

.field private mPromptStateChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorderState:I

.field private mRecordingPausedTime:J

.field private mRecordingStartTime:J

.field private mSilentModeDefault:I

.field private mStatusBarModeState:I

.field private mStatusBarPrompts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;",
            ">;"
        }
    .end annotation
.end field

.field private mTopStatusBarModeState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showPrompt()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mTopStatusBarModeState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mPromptStateChangedListeners:Ljava/util/Map;

    return-void
.end method

.method private dispatchShowPrompt()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$1;-><init>(Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showPrompt()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "MiuiStatusBarPrompt"

    const-string/jumbo v1, "dispatchShowPrompt abandoned, not in main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTopPriorityState()I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x20

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private setSilenceWhenRecording(Z)V
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz p1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    if-eq p1, v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    if-eq v3, v2, :cond_4

    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_4
    iput v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    goto :goto_1
.end method

.method private showPrompt()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getTopPriorityState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Z)V

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToSafeBar(Z)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToDriveMode(Z)V

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToInCall(Z)V

    if-ne v3, v5, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToMulti(Z)V

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    move v4, v5

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToSosBar(Z)V

    if-nez v3, :cond_6

    const/4 v0, 0x1

    :goto_6
    iget v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mTopStatusBarModeState:I

    if-nez v4, :cond_7

    :goto_7
    xor-int v4, v0, v5

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mPromptStateChangedListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;->onPromptStateChanged(Z)V

    goto :goto_8

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    move v5, v6

    goto :goto_7

    :cond_8
    iput v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mTopStatusBarModeState:I

    return-void
.end method


# virtual methods
.method public addPromptStateChangedListener(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mPromptStateChangedListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addStatusBarPrompt(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;ILcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p5}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->addPromptStateChangedListener(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V

    return-void
.end method

.method public blockClickAction()Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->blockClickAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public clearState(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->dispatchShowPrompt()V

    return-void
.end method

.method public dealWithRecordState()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    if-eqz v3, :cond_0

    const-string/jumbo v2, ""

    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    if-ne v3, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1105e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingStartTime:J

    sub-long v0, v4, v6

    invoke-virtual {p0, v2, v9, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1105e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingPausedTime:J

    iget-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingStartTime:J

    sub-long v0, v4, v6

    invoke-virtual {p0, v2, v8, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    return-object v4
.end method

.method public handleClickAction()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->handleClickAction()V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    :cond_0
    return-void
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 3

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideReturnToInCallScreenButton()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideReturnToRecorderView()V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideReturnToRecorderView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideSafePayStatusBar()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideSafePayStatusBar()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideSosStatusBar()V
    .locals 3

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideSosStatusBar()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isShowingState(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeReturnToInCallScreenButtonGone()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->makeReturnToInCallScreenButtonGone()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public makeReturnToInCallScreenButtonVisible()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->makeReturnToInCallScreenButtonVisible()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setState(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->dispatchShowPrompt()V

    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_status_recorder"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v10}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setSilenceWhenRecording(Z)V

    iput v10, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideReturnToRecorderView()V

    goto :goto_0

    :pswitch_1
    iput v10, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideReturnToRecorderView()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_duration"

    const-wide/16 v8, 0x0

    invoke-virtual {p3, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingPausedTime:J

    iget-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingPausedTime:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingStartTime:J

    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_title"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_timer_on_off"

    invoke-virtual {p3, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :pswitch_3
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_silent_mode_changed_by_user"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_enter_silent_mode"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v0, :cond_2

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setSilenceWhenRecording(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideSafePayStatusBar()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showSafePayStatusBar(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_status_sos"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideSosStatusBar()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showSosStatusBar()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public showReturnToDriveMode(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToDriveMode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToDriveModeView(ZZ)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToDriveModeView(ZZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showReturnToInCall(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToInCall(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToInCallScreenButton(Ljava/lang/String;J)V
    .locals 4

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToMulti(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToMulti(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToRecorderView(Ljava/lang/String;ZJ)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToRecorderView(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToRecorderView(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToSafeBar(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToSafeBar(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReturnToSosBar(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToSosBar(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showSafePayStatusBar(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showSafePayStatusBar(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showSosStatusBar()V
    .locals 3

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showSosStatusBar()V

    goto :goto_0

    :cond_0
    return-void
.end method
