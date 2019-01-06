.class public Lcom/android/systemui/miui/ViewStateGroup$Builder;
.super Ljava/lang/Object;
.source "ViewStateGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/ViewStateGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mResult:Lcom/android/systemui/miui/ViewStateGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/miui/ViewStateGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/miui/ViewStateGroup;-><init>(Lcom/android/systemui/miui/ViewStateGroup;)V

    iput-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mResult:Lcom/android/systemui/miui/ViewStateGroup;

    iput-object p1, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mResult:Lcom/android/systemui/miui/ViewStateGroup;

    invoke-static {v1}, Lcom/android/systemui/miui/ViewStateGroup;->-get0(Lcom/android/systemui/miui/ViewStateGroup;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;

    invoke-direct {v0, p1}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;-><init>(I)V

    iget-object v1, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mResult:Lcom/android/systemui/miui/ViewStateGroup;

    invoke-static {v1}, Lcom/android/systemui/miui/ViewStateGroup;->-get0(Lcom/android/systemui/miui/ViewStateGroup;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->-get1(Lcom/android/systemui/miui/ViewStateGroup$ViewState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method

.method public addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addStateWithIntRes(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/systemui/miui/ViewStateGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$Builder;->mResult:Lcom/android/systemui/miui/ViewStateGroup;

    return-object v0
.end method
