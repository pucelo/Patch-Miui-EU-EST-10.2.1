.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;,
        Landroid/media/audiopolicy/AudioMixingRule$Builder;
    }
.end annotation


# static fields
.field public static final RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field public static final RULE_EXCLUDE_UID:I = 0x8004

.field private static final RULE_EXCLUSION_MASK:I = 0x8000

.field public static final RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2

.field public static final RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1

.field public static final RULE_MATCH_UID:I = 0x4


# instance fields
.field private final mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetMixType:I


# direct methods
.method static synthetic -wrap0(I)Z
    .registers 2

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isAudioAttributeRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Z
    .registers 2

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)Z
    .registers 2

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidAttributesSystemApiRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(I)Z
    .registers 2

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)Z
    .registers 2

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;)V

    return-void
.end method

.method private static isAudioAttributeRule(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isPlayerRule(I)Z
    .registers 3

    const v1, -0x8001

    and-int v0, p0, v1

    packed-switch v0, :pswitch_data_c

    :pswitch_8
    const/4 v1, 0x0

    return v1

    :pswitch_a
    const/4 v1, 0x1

    return v1

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private static isValidAttributesSystemApiRule(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isValidRule(I)Z
    .registers 3

    const v1, -0x8001

    and-int v0, p0, v1

    packed-switch v0, :pswitch_data_c

    :pswitch_8
    const/4 v1, 0x0

    return v1

    :pswitch_a
    const/4 v1, 0x1

    return v1

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private static isValidSystemApiRule(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method getCriteria()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTargetMixType()I
    .registers 2

    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
