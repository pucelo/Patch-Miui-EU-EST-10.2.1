.class Lcom/miui/internal/search/RankedCursor$ScoredData;
.super Ljava/lang/Object;
.source "RankedCursor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/search/RankedCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoredData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/internal/search/RankedCursor$ScoredData;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field private score:D


# direct methods
.method static synthetic -wrap0(Lcom/miui/internal/search/RankedCursor$ScoredData;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(D[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iput-object p3, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->data:[Ljava/lang/String;

    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I
    .registers 6

    iget-wide v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iget-wide v2, p1, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-wide v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iget-wide v2, p1, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, -0x1

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I

    move-result v0

    return v0
.end method
