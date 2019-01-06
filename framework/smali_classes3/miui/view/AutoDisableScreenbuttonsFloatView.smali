.class public Lmiui/view/AutoDisableScreenbuttonsFloatView;
.super Landroid/widget/FrameLayout;
.source "AutoDisableScreenbuttonsFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/AutoDisableScreenbuttonsFloatView$1;
    }
.end annotation


# static fields
.field private static final DISMISS_DELAY_TIME:I = 0x1f40


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mIsShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;

    invoke-direct {v0, p0}, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;-><init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V

    iput-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;

    invoke-direct {v0, p0}, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;-><init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V

    iput-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .registers 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x11030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public show()V
    .registers 7

    const/4 v4, -0x2

    iget-boolean v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-nez v1, :cond_14

    return-void

    :cond_14
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7da

    invoke-direct {v0, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x108

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x110d0008

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f40

    invoke-virtual {p0, v2, v4, v5}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    return-void
.end method
