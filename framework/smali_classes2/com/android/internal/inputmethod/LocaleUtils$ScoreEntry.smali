.class final Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "LocaleUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoreEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    return-void
.end method

.method private static compare([B[B)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_17

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-le v1, v2, :cond_c

    const/4 v1, 0x1

    return v1

    :cond_c
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-ge v1, v2, :cond_14

    const/4 v1, -0x1

    return v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method private set([BI)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    array-length v1, v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iput p2, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    iget-object v1, p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I

    move-result v0

    return v0
.end method

.method public updateIfBetter([BI)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    :cond_c
    return-void
.end method