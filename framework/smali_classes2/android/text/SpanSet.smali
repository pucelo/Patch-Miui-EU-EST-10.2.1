.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v3, :cond_1a

    iget-object v3, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v3, v0

    iget-object v3, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v3, v0

    if-le v2, p1, :cond_12

    if-ge v2, p2, :cond_12

    move p2, v2

    :cond_12
    if-le v1, p1, :cond_17

    if-ge v1, p2, :cond_17

    move p2, v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    if-ge v1, p2, :cond_11

    iget-object v1, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public init(Landroid/text/Spanned;II)V
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_40

    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    array-length v8, v8

    if-ge v8, v2, :cond_40

    :cond_14
    iget-object v8, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    iput-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    new-array v8, v2, [I

    iput-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    new-array v8, v2, [I

    iput-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    new-array v8, v2, [I

    iput-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    :goto_2a
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    iput v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v2, :cond_67

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v7, v5, :cond_44

    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_40
    invoke-virtual {p0}, Landroid/text/SpanSet;->recycle()V

    goto :goto_2a

    :cond_44
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v4, v8, v9

    iget-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v7, v8, v9

    iget-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v5, v8, v9

    iget-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v6, v8, v9

    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    goto :goto_3d

    :cond_67
    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v8, v3, :cond_72

    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    invoke-static {v8, v9, v3, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_72
    return-void
.end method

.method public recycle()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_d
    return-void
.end method
