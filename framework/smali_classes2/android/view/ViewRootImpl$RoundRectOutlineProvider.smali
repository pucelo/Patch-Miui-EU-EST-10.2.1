.class Landroid/view/ViewRootImpl$RoundRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundRectOutlineProvider"
.end annotation


# instance fields
.field private mCurRect:Landroid/graphics/Rect;

.field private mRadius:F

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;F)V
    .registers 4

    iput-object p1, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->mCurRect:Landroid/graphics/Rect;

    iput p2, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->mRadius:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->mCurRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->mRadius:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method setCurRect(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$RoundRectOutlineProvider;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
