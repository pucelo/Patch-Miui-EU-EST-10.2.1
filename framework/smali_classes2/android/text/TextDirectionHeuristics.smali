.class public Landroid/text/TextDirectionHeuristics;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextDirectionHeuristics$AnyStrong;,
        Landroid/text/TextDirectionHeuristics$FirstStrong;,
        Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

.field public static final LOCALE:Landroid/text/TextDirectionHeuristic;

.field public static final LTR:Landroid/text/TextDirectionHeuristic;

.field public static final RTL:Landroid/text/TextDirectionHeuristic;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static synthetic -wrap0(I)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v1, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isRtlCodePoint(I)I
    .registers 6

    const v4, 0xfffe

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    packed-switch v0, :pswitch_data_88

    return v3

    :pswitch_e
    return v2

    :pswitch_f
    return v1

    :pswitch_10
    const/16 v0, 0x590

    if-gt v0, p0, :cond_19

    const/16 v0, 0x8ff

    if-gt p0, v0, :cond_19

    :cond_18
    return v1

    :cond_19
    const v0, 0xfb1d

    if-gt v0, p0, :cond_23

    const v0, 0xfdcf

    if-le p0, v0, :cond_18

    :cond_23
    const v0, 0xfdf0

    if-gt v0, p0, :cond_2d

    const v0, 0xfdff

    if-le p0, v0, :cond_18

    :cond_2d
    const v0, 0xfe70

    if-gt v0, p0, :cond_37

    const v0, 0xfeff

    if-le p0, v0, :cond_18

    :cond_37
    const v0, 0x10800

    if-gt v0, p0, :cond_41

    const v0, 0x10fff

    if-le p0, v0, :cond_18

    :cond_41
    const v0, 0x1e800

    if-gt v0, p0, :cond_4b

    const v0, 0x1efff

    if-le p0, v0, :cond_18

    :cond_4b
    const/16 v0, 0x2065

    if-gt v0, p0, :cond_54

    const/16 v0, 0x2069

    if-gt p0, v0, :cond_54

    :cond_53
    return v3

    :cond_54
    const v0, 0xfff0

    if-gt v0, p0, :cond_5e

    const v0, 0xfff8

    if-le p0, v0, :cond_53

    :cond_5e
    const/high16 v0, 0xe0000

    if-gt v0, p0, :cond_67

    const v0, 0xe0fff

    if-le p0, v0, :cond_53

    :cond_67
    const v0, 0xfdd0

    if-gt v0, p0, :cond_71

    const v0, 0xfdef

    if-le p0, v0, :cond_53

    :cond_71
    and-int v0, p0, v4

    if-eq v0, v4, :cond_53

    const/16 v0, 0x20a0

    if-gt v0, p0, :cond_7d

    const/16 v0, 0x20cf

    if-le p0, v0, :cond_53

    :cond_7d
    const v0, 0xd800

    if-gt v0, p0, :cond_87

    const v0, 0xdfff

    if-le p0, v0, :cond_53

    :cond_87
    return v2

    :pswitch_data_88
    .packed-switch -0x1
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
