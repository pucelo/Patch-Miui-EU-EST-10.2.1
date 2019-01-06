.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$1;,
        Landroid/view/FocusFinder$FocusSorter;,
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator;
    }
.end annotation


# static fields
.field private static final tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBestCandidateRect:Landroid/graphics/Rect;

.field private final mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

.field final mFocusedRect:Landroid/graphics/Rect;

.field final mOtherRect:Landroid/graphics/Rect;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

.field private final mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    sget-object v1, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$INST$0:Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    sget-object v1, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$INST$1:Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v0, Landroid/view/FocusFinder$FocusSorter;

    invoke-direct {v0}, Landroid/view/FocusFinder$FocusSorter;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 12

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder;->getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz p2, :cond_b

    invoke-direct {p0, v1, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    :cond_b
    if-eqz v6, :cond_e

    return-object v6

    :cond_e
    iget-object v5, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    :try_start_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v5, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_28

    move-result-object v6

    :cond_24
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-object v6

    :catchall_28
    move-exception v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v0
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p2, :cond_29

    if-nez p3, :cond_6

    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    :cond_6
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_c
    :goto_c
    sparse-switch p4, :sswitch_data_6c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    if-nez p3, :cond_c

    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    sparse-switch p4, :sswitch_data_86

    goto :goto_c

    :sswitch_31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :sswitch_3b
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :sswitch_3f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :cond_49
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :sswitch_4d
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :cond_51
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_c

    :sswitch_55
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_60
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_55
        0x11 -> :sswitch_60
        0x21 -> :sswitch_60
        0x42 -> :sswitch_60
        0x82 -> :sswitch_60
    .end sparse-switch

    :sswitch_data_86
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_3f
        0x11 -> :sswitch_4d
        0x21 -> :sswitch_4d
        0x42 -> :sswitch_3b
        0x82 -> :sswitch_3b
    .end sparse-switch
.end method

.method private findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1f

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch p5, :pswitch_data_30

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :catchall_1f
    move-exception v1

    iget-object v2, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    throw v1

    :pswitch_26
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_2b
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method private findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1, p3, p1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_30

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sparse-switch p4, :sswitch_data_42

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_30
    move-exception v1

    iget-object v2, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    throw v1

    :sswitch_37
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :sswitch_3c
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_37
        0x11 -> :sswitch_3c
        0x21 -> :sswitch_3c
        0x42 -> :sswitch_37
        0x82 -> :sswitch_37
    .end sparse-switch
.end method

.method private findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    const/4 v1, 0x1

    :cond_7
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    return-object v2

    :cond_22
    invoke-virtual {v2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v2, :cond_7

    :cond_30
    return-object v4
.end method

.method private findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    return-object v2
.end method

.method private getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8

    if-eqz p2, :cond_4

    if-ne p2, p1, :cond_5

    :cond_4
    return-object p1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_a
    if-ne v1, p1, :cond_11

    if-eqz v0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    move-object v0, p1

    goto :goto_e

    :cond_11
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-eqz v3, :cond_32

    move-object v0, v2

    :cond_32
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-nez v3, :cond_a

    return-object p1
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .registers 1

    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_17

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_17

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_24
    return-object v3
.end method

.method private static getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_a
    invoke-interface {p2, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1d

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_1d

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_1d
    return-object p0
.end method

.method private static getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_12

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_21
    return-object v2
.end method

.method private static getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-nez p1, :cond_b

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_b
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1a

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    :cond_1a
    return-object p0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p4, :sswitch_data_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_1b

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_1b

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :sswitch_1d
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_2a

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_2a

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_2a

    :goto_29
    return v0

    :cond_2a
    move v0, v1

    goto :goto_29

    :sswitch_2c
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_39

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_39

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38

    :sswitch_3b
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_48

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_48

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_48

    :goto_47
    return v0

    :cond_48
    move v0, v1

    goto :goto_47

    :sswitch_data_4a
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_2c
        0x42 -> :sswitch_1d
        0x82 -> :sswitch_3b
    .end sparse-switch
.end method

.method private static final isValidId(I)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const/4 v1, -0x1

    if-eq p0, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method static synthetic lambda$-android_view_FocusFinder_1877(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic lambda$-android_view_FocusFinder_2135(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    sparse-switch p0, :sswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_12
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_1e
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_18
        0x42 -> :sswitch_12
        0x82 -> :sswitch_1e
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    sparse-switch p0, :sswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_12
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_1e
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_18
        0x42 -> :sswitch_12
        0x82 -> :sswitch_1e
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6

    sparse-switch p0, :sswitch_data_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    :sswitch_24
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_24
        0x42 -> :sswitch_c
        0x82 -> :sswitch_24
    .end sparse-switch
.end method

.method private setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .registers 11

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v0, v0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder$FocusSorter;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    return-void
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_10

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_11

    :cond_10
    return v3

    :cond_11
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_18

    return v2

    :cond_18
    const/16 v4, 0x11

    if-eq p1, v4, :cond_20

    const/16 v4, 0x42

    if-ne p1, v4, :cond_21

    :cond_20
    return v2

    :cond_21
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-ge v4, v5, :cond_2c

    :goto_2b
    return v2

    :cond_2c
    move v2, v3

    goto :goto_2b
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_1b

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :sswitch_1d
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2a

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_2a

    move v1, v0

    :cond_2a
    return v1

    nop

    :sswitch_data_2c
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_1d
        0x42 -> :sswitch_e
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v12

    const v8, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v6

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v9, :cond_88

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v11, v2}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_41

    :cond_3e
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_41
    const v5, 0x7fffffff

    sparse-switch p4, :sswitch_data_8a

    :goto_47
    if-ge v5, v6, :cond_3e

    if-eqz v3, :cond_59

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_59

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_3e

    if-ge v5, v8, :cond_3e

    :cond_59
    move v8, v5

    move-object v3, v10

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sparse-switch p4, :sswitch_data_9c

    goto :goto_3e

    :sswitch_62
    neg-int v13, v5

    const/4 v14, 0x0

    aput v13, p5, v14

    goto :goto_3e

    :sswitch_67
    iget v13, v11, Landroid/graphics/Rect;->right:I

    sub-int v13, p2, v13

    add-int/lit8 v5, v13, 0x1

    goto :goto_47

    :sswitch_6e
    iget v5, v11, Landroid/graphics/Rect;->left:I

    goto :goto_47

    :sswitch_71
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v13, p3, v13

    add-int/lit8 v5, v13, 0x1

    goto :goto_47

    :sswitch_78
    iget v5, v11, Landroid/graphics/Rect;->top:I

    goto :goto_47

    :sswitch_7b
    const/4 v13, 0x0

    aput v5, p5, v13

    goto :goto_3e

    :sswitch_7f
    neg-int v13, v5

    const/4 v14, 0x1

    aput v13, p5, v14

    goto :goto_3e

    :sswitch_84
    const/4 v13, 0x1

    aput v5, p5, v13

    goto :goto_3e

    :cond_88
    return-object v3

    nop

    :sswitch_data_8a
    .sparse-switch
        0x11 -> :sswitch_67
        0x21 -> :sswitch_71
        0x42 -> :sswitch_6e
        0x82 -> :sswitch_78
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        0x11 -> :sswitch_62
        0x21 -> :sswitch_7f
        0x42 -> :sswitch_7b
        0x82 -> :sswitch_84
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sparse-switch p5, :sswitch_data_6e

    :goto_9
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_6d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq v1, p3, :cond_1b

    if-ne v1, p2, :cond_50

    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :sswitch_1e
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    :sswitch_2a
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    :sswitch_37
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    :sswitch_43
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    :cond_50
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_1b

    :cond_6d
    return-object v0

    :sswitch_data_6e
    .sparse-switch
        0x11 -> :sswitch_1e
        0x21 -> :sswitch_37
        0x42 -> :sswitch_2a
        0x82 -> :sswitch_43
    .end sparse-switch
.end method

.method public findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 7

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-direct {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    :try_start_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_20

    move-result-object v1

    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object v1

    :catchall_20
    move-exception v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method getWeightedDistanceFor(II)I
    .registers 5

    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v0

    :cond_17
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    :cond_1e
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v3

    if-ge v2, v3, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_1a

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_21

    :cond_1a
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_22

    :goto_20
    move v1, v0

    :cond_21
    return v1

    :cond_22
    move v0, v1

    goto :goto_20

    :sswitch_24
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_30

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_37

    :cond_30
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_38

    :goto_36
    move v1, v0

    :cond_37
    return v1

    :cond_38
    move v0, v1

    goto :goto_36

    :sswitch_3a
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_46

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_4d

    :cond_46
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_4e

    :goto_4c
    move v1, v0

    :cond_4d
    return v1

    :cond_4e
    move v0, v1

    goto :goto_4c

    :sswitch_50
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_5c

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_63

    :cond_5c
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_64

    :goto_62
    move v1, v0

    :cond_63
    return v1

    :cond_64
    move v0, v1

    goto :goto_62

    :sswitch_data_66
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_3a
        0x42 -> :sswitch_24
        0x82 -> :sswitch_50
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :sswitch_17
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d

    :sswitch_20
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_27

    :goto_26
    return v0

    :cond_27
    move v0, v1

    goto :goto_26

    :sswitch_29
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_30

    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f

    :sswitch_data_32
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_20
        0x42 -> :sswitch_17
        0x82 -> :sswitch_29
    .end sparse-switch
.end method
