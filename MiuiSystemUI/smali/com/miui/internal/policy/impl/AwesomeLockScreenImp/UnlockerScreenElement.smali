.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.super Lmiui/maml/elements/AdvancedSlider;
.source "UnlockerScreenElement.java"


# instance fields
.field private mAlwaysShow:Z

.field private mDelay:Lmiui/maml/data/Expression;

.field private mNoUnlock:Z

.field private mPreX:F

.field private mPreY:F

.field private mUnlockingHide:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string/jumbo v0, "alwaysShow"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    const-string/jumbo v0, "noUnlock"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "delay"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:Lmiui/maml/data/Expression;

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mIsHaptic:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "haptic"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mIsHaptic:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    return-object v0
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1

    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    return-void
.end method

.method public isVisible()Z
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider;->onCancel()V

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:Lmiui/maml/data/Expression;

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, p2, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V

    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LockScreen_UnlockerScreenElement"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onMove(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->onMove(FF)V

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPreX:F

    sub-float v0, p1, v2

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPreY:F

    sub-float v1, p2, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    iput p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPreX:F

    iput p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPreY:F

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider;->onStart()V

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->getLockScreenRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1

    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->resetInner()V

    :cond_0
    return-void
.end method
