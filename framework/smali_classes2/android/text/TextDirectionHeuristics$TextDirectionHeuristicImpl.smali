.class abstract Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5

    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    return v0

    :pswitch_e
    const/4 v0, 0x1

    return v0

    :pswitch_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_4

    if-gez p2, :cond_a

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    if-ltz p3, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_4

    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    return v0

    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public isRtl([CII)Z
    .registers 5

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
