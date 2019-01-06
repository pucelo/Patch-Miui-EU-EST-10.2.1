.class final Lcom/miui/systemui/support/v4/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Lcom/miui/systemui/support/v4/util/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Lcom/miui/systemui/support/v4/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$nameOverrides:Lcom/miui/systemui/support/v4/util/ArrayMap;

    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$fragments:Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iput-object p4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p6, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object p7, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$outFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-boolean p8, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p9, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p11, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$nameOverrides:Lcom/miui/systemui/support/v4/util/ArrayMap;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$fragments:Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v2, v3, v4}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->-wrap1(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$outFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-boolean v4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->-wrap3(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$fragments:Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v1, v2, v3, v4}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->-wrap0(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
