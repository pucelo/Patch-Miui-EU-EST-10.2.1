.class public Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandCollapseLinearLayout.java"

# interfaces
.implements Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;


# instance fields
.field private mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    invoke-direct {v0, p0, p0, p2, p3}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public onExpandStateUpdated(Z)V
    .locals 0

    return-void
.end method

.method public updateExpanded(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->updateExpanded(ZZ)V

    return-void
.end method
