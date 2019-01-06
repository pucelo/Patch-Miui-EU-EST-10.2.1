.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;,
        Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mMinimized:Z

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/Divider;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return-void
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d002f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    move v3, v2

    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, -0x1

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Lcom/android/systemui/stackdivider/DividerView;II)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V

    return-void

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeDivider()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    :cond_0
    return-void
.end method

.method private updateMinimizedDockedStack(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZJ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;->onDockedStackMinimizedChanged(Z)V

    :cond_0
    return-void
.end method

.method private updateTouchable()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "  mVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mMinimized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mAdjustedForIme="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method public isMinimized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public registerDockedStackExistsChangedListener(Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    return-void
.end method

.method public start()V
    .locals 3

    new-instance v1, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-void
.end method
