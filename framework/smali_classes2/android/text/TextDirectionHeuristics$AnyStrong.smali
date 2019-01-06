.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    add-int v1, p2, p3

    :goto_7
    if-ge v3, v1, :cond_3e

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/16 v7, 0x2066

    if-gt v7, v0, :cond_1d

    const/16 v7, 0x2068

    if-gt v0, v7, :cond_1d

    add-int/lit8 v4, v4, 0x1

    :cond_17
    :goto_17
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_7

    :cond_1d
    const/16 v7, 0x2069

    if-ne v0, v7, :cond_26

    if-lez v4, :cond_17

    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    :cond_26
    if-nez v4, :cond_17

    invoke-static {v0}, Landroid/text/TextDirectionHeuristics;->-wrap0(I)I

    move-result v7

    packed-switch v7, :pswitch_data_4a

    goto :goto_17

    :pswitch_30
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v7, :cond_35

    return v6

    :cond_35
    const/4 v2, 0x1

    goto :goto_17

    :pswitch_37
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v7, :cond_3c

    return v5

    :cond_3c
    const/4 v2, 0x1

    goto :goto_17

    :cond_3e
    if-eqz v2, :cond_47

    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v7, :cond_45

    :goto_44
    return v5

    :cond_45
    move v5, v6

    goto :goto_44

    :cond_47
    const/4 v5, 0x2

    return v5

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_37
    .end packed-switch
.end method
