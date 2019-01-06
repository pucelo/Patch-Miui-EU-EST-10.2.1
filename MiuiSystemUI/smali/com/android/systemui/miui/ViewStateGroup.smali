.class public Lcom/android/systemui/miui/ViewStateGroup;
.super Ljava/lang/Object;
.source "ViewStateGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/ViewStateGroup$Builder;,
        Lcom/android/systemui/miui/ViewStateGroup$ViewState;
    }
.end annotation


# instance fields
.field private mStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/miui/ViewStateGroup$ViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/ViewStateGroup;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup;->mStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup;->mStates:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/miui/ViewStateGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/ViewStateGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/miui/ViewStateGroup;->mStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/miui/ViewStateGroup;->mStates:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/systemui/miui/ViewStateGroup;->mStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/ViewStateGroup$ViewState;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->-get2(Lcom/android/systemui/miui/ViewStateGroup$ViewState;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->apply(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
