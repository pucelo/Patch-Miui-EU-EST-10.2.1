.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;
.super Ljava/lang/Object;
.source "KeyguardStatusBarViewControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;


# instance fields
.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideStatusIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_0
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0a02af

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isPromptCenter()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDarkMode(Landroid/graphics/Rect;FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setDarkIntensity(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method public showStatusIcons()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShieldDarkReceiver(Z)V

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    const-string/jumbo v1, "quiet"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    const-string/jumbo v1, "alarm_clock"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_2
    return-void
.end method

.method public updateNotchVisible()V
    .locals 0

    return-void
.end method
