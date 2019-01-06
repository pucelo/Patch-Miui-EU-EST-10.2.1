.class public Landroid/os/statistics/FastPerfEventList;
.super Ljava/lang/Object;
.source "FastPerfEventList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public events:[Landroid/os/statistics/PerfEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/statistics/PerfEvent;

    iput-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    return-void
.end method


# virtual methods
.method public add(ILandroid/os/statistics/PerfEvent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v1, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    :cond_e
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aput-object p2, v0, p1

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    return-void
.end method

.method public add(Landroid/os/statistics/PerfEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v1, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    :cond_e
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addAll(Landroid/os/statistics/FastPerfEventList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<+TT;>;)V"
        }
    .end annotation

    iget v0, p1, Landroid/os/statistics/FastPerfEventList;->size:I

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    iget-object v1, p1, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    return-void
.end method

.method public compact()V
    .registers 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_3
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v2, v3, :cond_37

    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v1, v3, :cond_37

    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v3, v3, v2

    if-eqz v3, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    if-gt v1, v2, :cond_18

    add-int/lit8 v1, v2, 0x1

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v1, v3, :cond_23

    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v0, v3, v1

    if-eqz v0, :cond_34

    :cond_23
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aput-object v0, v3, v2

    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_37
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-eq v2, v3, :cond_41

    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v3, v3, v2

    if-nez v3, :cond_44

    :cond_41
    iput v2, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    :goto_43
    return-void

    :cond_44
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    goto :goto_43
.end method

.method public ensureCapacity(I)V
    .registers 5

    iget-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v1, v2

    if-le p1, v1, :cond_16

    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    if-ge v0, p1, :cond_c

    move v0, p1

    :cond_c
    iget-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/statistics/PerfEvent;

    iput-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    :cond_16
    return-void
.end method

.method public get(I)Landroid/os/statistics/PerfEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public trimTo(I)V
    .registers 4

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_11

    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    shr-int/lit8 v1, v1, 0x1

    add-int p1, v0, v1

    :cond_11
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v0, v0

    if-lt p1, v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/statistics/PerfEvent;

    iput-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    return-void
.end method
