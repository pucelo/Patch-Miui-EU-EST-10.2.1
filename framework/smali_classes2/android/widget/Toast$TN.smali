.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x1b58L

.field static final SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final SHOW:I


# instance fields
.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 7

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    if-nez p2, :cond_3b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_3b

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0, p2, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private trySendAccessibilityEvent()V
    .registers 4

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleHide()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_14
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    :cond_16
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .registers 11

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v5, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v5, v6, :cond_e6

    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_3e

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_3e
    const-string/jumbo v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v3, 0x7

    const/4 v6, 0x7

    if-ne v5, v6, :cond_6e

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_6e
    and-int/lit8 v5, v3, 0x70

    const/16 v6, 0x70

    if-ne v5, v6, :cond_78

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_78
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mX:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mDuration:I

    if-ne v6, v8, :cond_e7

    const-wide/16 v6, 0x1b58

    :goto_9c
    iput-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_b1

    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_b1
    :try_start_b1
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V
    :try_end_bd
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b1 .. :try_end_bd} :catch_ea

    :goto_bd
    const-string/jumbo v5, "Toast"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Show toast from OpPackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", PackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    return-void

    :cond_e7
    const-wide/16 v6, 0xfa0

    goto :goto_9c

    :catch_ea
    move-exception v2

    goto :goto_bd
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
