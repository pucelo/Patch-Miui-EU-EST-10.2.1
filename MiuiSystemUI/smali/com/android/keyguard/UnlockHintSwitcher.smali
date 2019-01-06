.class public Lcom/android/keyguard/UnlockHintSwitcher;
.super Landroid/widget/TextSwitcher;
.source "UnlockHintSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/UnlockHintSwitcher$1;
    }
.end annotation


# instance fields
.field private mHint:Ljava/lang/CharSequence;

.field private mIsShowingTemp:Z

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/UnlockHintSwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/UnlockHintSwitcher;->mIsShowingTemp:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/UnlockHintSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/UnlockHintSwitcher$1;-><init>(Lcom/android/keyguard/UnlockHintSwitcher;)V

    iput-object v0, p0, Lcom/android/keyguard/UnlockHintSwitcher;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/UnlockHintSwitcher;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/UnlockHintSwitcher;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/UnlockHintSwitcher;->mHint:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/UnlockHintSwitcher;->mHint:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/android/keyguard/UnlockHintSwitcher;->mIsShowingTemp:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
