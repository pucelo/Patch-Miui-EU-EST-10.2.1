.class public Lcom/android/systemui/miui/ToastOverlayManager;
.super Ljava/lang/Object;
.source "ToastOverlayManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/ToastOverlayManager$1;,
        Lcom/android/systemui/miui/ToastOverlayManager$2;,
        Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;
    }
.end annotation


# static fields
.field private static final ENABLED:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDispatchClearToastRunnable:Ljava/lang/Runnable;

.field private mDispatchHideToastRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLastToast:Landroid/widget/Toast;

.field private mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

.field private mRoot:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/ToastOverlayManager;)Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/ToastOverlayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/ToastOverlayManager;->handleHideToast()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/miui/ToastOverlayManager;Landroid/widget/Toast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/ToastOverlayManager;->handleShowToast(Landroid/widget/Toast;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/miui/ToastOverlayManager;->ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    new-instance v0, Lcom/android/systemui/miui/ToastOverlayManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/ToastOverlayManager$1;-><init>(Lcom/android/systemui/miui/ToastOverlayManager;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mDispatchHideToastRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/miui/ToastOverlayManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/ToastOverlayManager$2;-><init>(Lcom/android/systemui/miui/ToastOverlayManager;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mDispatchClearToastRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private handleHideToast()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "toast_exit"

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/ToastOverlayManager;->startAnimIfExists(Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mDispatchClearToastRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v5, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    return-void

    :cond_0
    const-wide/16 v2, 0x12c

    goto :goto_0
.end method

.method private handleShowToast(Landroid/widget/Toast;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mDispatchHideToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mDispatchClearToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->setToast(Landroid/widget/Toast;)V

    iput-object p1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const-string/jumbo v0, "toast_enter"

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/ToastOverlayManager;->startAnimIfExists(Ljava/lang/String;)Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mDispatchHideToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/16 v0, 0xdac

    :goto_0
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method private startAnimIfExists(Ljava/lang/String;)Landroid/view/animation/Animation;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "anim"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->invalidate()V

    return-object v0

    :cond_1
    return-object v5
.end method


# virtual methods
.method public dispatchShowToast(Landroid/widget/Toast;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/miui/ToastOverlayManager;->ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/miui/ToastOverlayManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/miui/ToastOverlayManager$3;-><init>(Lcom/android/systemui/miui/ToastOverlayManager;Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-array v1, v3, [I

    new-array v0, v3, [I

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    aget v3, v1, v4

    aget v4, v0, v4

    sub-int/2addr v3, v4

    aget v4, v1, v5

    aget v5, v0, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->setLocation(II)V

    iget-object v2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v2}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;->invalidate()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, -0x1

    sget-boolean v0, Lcom/android/systemui/miui/ToastOverlayManager;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-direct {v0, p1}, Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    iput-object p2, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/miui/ToastOverlayManager;->mOverlayLayout:Lcom/android/systemui/miui/ToastOverlayManager$ToastOverlayLayout;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method
