.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toViewScreenState(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 8

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_4a

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_4a

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v0

    if-eq v2, v0, :cond_4a

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    if-eqz v2, :cond_4a

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v3

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v1

    if-eq v3, v1, :cond_3f

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    :cond_3f
    if-ne v2, v5, :cond_4a

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_4a
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
