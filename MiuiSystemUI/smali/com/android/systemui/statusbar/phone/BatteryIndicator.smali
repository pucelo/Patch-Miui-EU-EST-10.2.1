.class public Lcom/android/systemui/statusbar/phone/BatteryIndicator;
.super Landroid/widget/ImageView;
.source "BatteryIndicator.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mClipWidth:I

.field private mDemoMode:Z

.field protected mDisabled:Z

.field protected mDisplayWidth:I

.field protected mIsCharging:Z

.field protected mIsExtremePowerSave:Z

.field protected mIsPowerSave:Z

.field protected final mLowLevel:I

.field protected mPowerLevel:I

.field private mShowBatteryIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDisplaySize()V

    return-void
.end method

.method private postUpdate()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    :cond_1
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mShowBatteryIndicator:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDisplaySize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->postUpdate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateCanvas(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsExtremePowerSave:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsExtremePowerSave:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDisplaySize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->postUpdate()V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsPowerSave:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsPowerSave:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDrawable()V

    return-void
.end method

.method protected updateCanvas(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLeft:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mTop:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mTop:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method updateDisplaySize()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisplayWidth:I

    return-void
.end method

.method protected updateDrawable()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    mul-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x64

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    if-eq v4, v2, :cond_1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->invalidate()V

    :cond_1
    const v3, 0x7f08005f

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsPowerSave:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsExtremePowerSave:Z

    if-eqz v4, :cond_5

    :cond_2
    const v3, 0x7f080061

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060181

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    if-ge v4, v5, :cond_3

    const v3, 0x7f080060

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method protected updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mShowBatteryIndicator:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->clearAnimation()V

    goto :goto_0
.end method
