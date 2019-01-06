.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragmentControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentController;


# instance fields
.field private mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

.field private mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSystemIconArea(Z)V
    .locals 0

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    return-void
.end method

.method public isStatusIconsVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public showSystemIconArea(Z)V
    .locals 0

    return-void
.end method

.method public start(Landroid/view/View;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotchleftearIconsList:Landroid/util/ArraySet;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotchLeftEarIcons:Lcom/android/systemui/miui/widget/ClipEdgeLinearLayout;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->mWhiteList:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->mWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mNotchLeftEarIconManager:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;->mFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_1
    return-void
.end method
