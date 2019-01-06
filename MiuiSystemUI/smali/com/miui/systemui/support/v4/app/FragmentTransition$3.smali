.class final Lcom/miui/systemui/support/v4/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Lcom/miui/systemui/support/v4/util/ArrayMap;

.field final synthetic val$outFragment:Lcom/miui/systemui/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$outFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-boolean p3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$inIsPop:Z

    iput-object p4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$inSharedElements:Lcom/miui/systemui/support/v4/util/ArrayMap;

    iput-object p5, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$outFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$inIsPop:Z

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$inSharedElements:Lcom/miui/systemui/support/v4/util/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->-wrap3(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
