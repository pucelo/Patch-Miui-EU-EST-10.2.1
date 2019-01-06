.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStateForEvent(I)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public removeEvents(I)V
    .registers 5

    const v1, -0xc001

    and-int v0, p1, v1

    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method

.method public updateState(ILjava/lang/String;II)Z
    .registers 11

    const v5, -0xc001

    const/4 v4, 0x0

    const v3, 0x8000

    and-int/2addr v3, p1

    if-eqz v3, :cond_37

    and-int v1, p1, v5

    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v3, v1

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v0, v3, v1

    :cond_1b
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-nez v2, :cond_2b

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_32

    return v4

    :cond_32
    invoke-virtual {v2, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_35
    :goto_35
    const/4 v3, 0x1

    return v3

    :cond_37
    and-int/lit16 v3, p1, 0x4000

    if-eqz v3, :cond_35

    and-int v1, p1, v5

    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v3, v1

    if-nez v0, :cond_44

    return v4

    :cond_44
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-nez v2, :cond_4d

    return v4

    :cond_4d
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_54

    return v4

    :cond_54
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-gtz v3, :cond_35

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35
.end method
