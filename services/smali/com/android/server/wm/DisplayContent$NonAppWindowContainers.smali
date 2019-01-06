.class final Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonAppWindowContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer",
        "<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>()V

    new-instance v0, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    sget-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent$NonAppWindowContainers_159563(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    :cond_d
    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    :cond_18
    return v2

    :cond_19
    const/4 v1, -0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()I
    .registers 7

    const/4 v4, -0x1

    const/4 v5, -0x2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3, v1}, Lcom/android/server/wm/DisplayContent;->-set1(Lcom/android/server/wm/DisplayContent;I)I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayContent;->-set2(Lcom/android/server/wm/DisplayContent;I)I

    return v5

    :cond_2f
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3, v1}, Lcom/android/server/wm/DisplayContent;->-set2(Lcom/android/server/wm/DisplayContent;I)I

    move-result v3

    return v3

    :cond_36
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayContent;->-set2(Lcom/android/server/wm/DisplayContent;I)I

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_56

    :cond_4f
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->-get1(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    return v3

    :cond_56
    return v5
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent$NonAppWindowContainers_159124(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v3, p2, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    if-ge v0, v1, :cond_20

    const/4 v0, -0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method
