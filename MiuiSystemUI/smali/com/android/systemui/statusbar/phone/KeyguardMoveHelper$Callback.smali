.class public interface abstract Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
.super Ljava/lang/Object;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getLeftView()Landroid/view/View;
.end method

.method public abstract getLeftViewBg()Landroid/view/View;
.end method

.method public abstract getLockScreenView()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxTranslationDistance()F
.end method

.method public abstract getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getRightView()Landroid/view/View;
.end method

.method public abstract isKeyguardWallpaperCarouselSwitchAnimating()Z
.end method

.method public abstract needsAntiFalsing()Z
.end method

.method public abstract onAnimationToSideEnded()V
.end method

.method public abstract onAnimationToSideStarted(ZFF)V
.end method

.method public abstract onSwipingAborted()V
.end method

.method public abstract onSwipingStarted()V
.end method

.method public abstract startFaceUnlockByMove()V
.end method

.method public abstract stopFaceUnlockByMove()V
.end method

.method public abstract triggerAction(ZFF)V
.end method
