.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_12
.end method

.method private static isParsedModifier(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, -0x8

    if-eq p0, v1, :cond_7

    const/4 v1, -0x7

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v1, -0x6

    if-eq p0, v1, :cond_7

    const/4 v1, -0x5

    if-eq p0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v1, 0x0

    array-length v9, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v10, v9, :cond_64

    aget v12, p0, v10

    packed-switch v12, :pswitch_data_6c

    :pswitch_10
    move v7, v10

    const/4 v3, 0x0

    add-int/lit8 v10, v10, 0x1

    :goto_14
    if-lt v10, v9, :cond_36

    const/4 v5, 0x1

    const/4 v4, 0x1

    :goto_18
    if-le v4, v5, :cond_57

    const/4 v0, 0x0

    return v0

    :pswitch_1c
    const/4 v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :pswitch_20
    const/4 v0, -0x1

    if-ne v12, v0, :cond_34

    const/4 v3, 0x2

    :goto_24
    add-int/lit8 v7, v10, 0x1

    :cond_26
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v9, :cond_2f

    aget v0, p0, v10

    const/4 v6, -0x3

    if-ne v0, v6, :cond_26

    :cond_2f
    add-int/lit8 v8, v10, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_34
    const/4 v3, 0x3

    goto :goto_24

    :cond_36
    aget v12, p0, v10

    packed-switch v12, :pswitch_data_78

    :pswitch_3b
    const/4 v5, 0x1

    const/4 v4, 0x1

    goto :goto_18

    :pswitch_3e
    const/4 v4, 0x0

    const v5, 0x7fffffff

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :pswitch_45
    const/4 v4, 0x1

    const v5, 0x7fffffff

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :pswitch_4c
    add-int/lit8 v10, v10, 0x1

    aget v4, p0, v10

    add-int/lit8 v10, v10, 0x1

    aget v5, p0, v10

    add-int/lit8 v10, v10, 0x2

    goto :goto_18

    :cond_57
    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v11

    const/4 v0, -0x1

    if-ne v11, v0, :cond_62

    const/4 v0, 0x0

    return v0

    :cond_62
    add-int/2addr v1, v11

    goto :goto_9

    :cond_64
    if-lt v10, v9, :cond_6a

    if-lt v1, v2, :cond_6a

    const/4 v0, 0x1

    :goto_69
    return v0

    :cond_6a
    const/4 v0, 0x0

    goto :goto_69

    :pswitch_data_6c
    .packed-switch -0x4
        :pswitch_1c
        :pswitch_10
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_78
    .packed-switch -0x8
        :pswitch_45
        :pswitch_3e
        :pswitch_3b
        :pswitch_4c
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p1, p2, :cond_5

    return v3

    :cond_5
    packed-switch p3, :pswitch_data_42

    return v3

    :pswitch_9
    return v2

    :pswitch_a
    move v0, p5

    :goto_b
    if-ge v0, p6, :cond_1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v4, p4, v0

    if-lt v1, v4, :cond_1c

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    if-gt v1, v4, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_1f
    return v3

    :pswitch_20
    move v0, p5

    :goto_21
    if-ge v0, p6, :cond_35

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v4, p4, v0

    if-lt v1, v4, :cond_32

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    if-gt v1, v4, :cond_32

    return v3

    :cond_32
    add-int/lit8 v0, v0, 0x2

    goto :goto_21

    :cond_35
    return v2

    :pswitch_36
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v5, p4, p5

    if-ne v4, v5, :cond_3f

    :goto_3e
    return v2

    :cond_3f
    move v2, v3

    goto :goto_3e

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36
        :pswitch_9
        :pswitch_a
        :pswitch_20
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .registers 17

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p5, :cond_15

    add-int v1, p1, v7

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v0

    if-eqz v0, :cond_15

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_15
    if-ge v7, p4, :cond_18

    const/4 v7, -0x1

    :cond_18
    return v7
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/16 v12, 0x5c

    const/16 v11, 0x2a

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_15

    :goto_14
    return v7

    :cond_15
    move v7, v8

    goto :goto_14

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_21
    if-ge v5, v1, :cond_9b

    if-ge v4, v0, :cond_9b

    move v2, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_47

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2e
    if-ne v2, v12, :cond_49

    const/4 v3, 0x1

    :goto_31
    if-eqz v3, :cond_3c

    move v2, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_4b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :cond_3c
    :goto_3c
    if-ne v6, v11, :cond_8f

    if-nez v3, :cond_7e

    if-ne v2, v10, :cond_7e

    add-int/lit8 v9, v1, -0x1

    if-lt v5, v9, :cond_4d

    return v7

    :cond_47
    const/4 v6, 0x0

    goto :goto_2e

    :cond_49
    const/4 v3, 0x0

    goto :goto_31

    :cond_4b
    const/4 v6, 0x0

    goto :goto_3c

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_5d

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_66

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :cond_5d
    :goto_5d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_68

    :cond_63
    if-ne v4, v0, :cond_6d

    return v8

    :cond_66
    const/4 v6, 0x0

    goto :goto_5d

    :cond_68
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_63

    goto :goto_5d

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_78

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_78
    const/4 v6, 0x0

    goto :goto_75

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_84

    :cond_7e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_7a

    :cond_84
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_8d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_21

    :cond_8d
    const/4 v6, 0x0

    goto :goto_21

    :cond_8f
    if-eq v2, v10, :cond_98

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_98

    return v8

    :cond_98
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_9b
    if-lt v5, v1, :cond_a0

    if-lt v4, v0, :cond_a0

    return v7

    :cond_a0
    add-int/lit8 v9, v1, -0x2

    if-ne v5, v9, :cond_b3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_b3

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_b3

    return v7

    :cond_b3
    return v8
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return v1

    :cond_4
    if-nez p3, :cond_b

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    if-ne p3, v0, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1b

    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x3

    if-ne p3, v0, :cond_23

    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_23
    return v1
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .registers 23

    const-class v20, Landroid/os/PatternMatcher;

    monitor-enter v20

    const/4 v11, 0x0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move v13, v12

    :goto_d
    if-ge v11, v2, :cond_228

    const/16 v19, 0x7fd

    move/from16 v0, v19

    if-le v13, v0, :cond_25

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Pattern is too large!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_25
    :try_start_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v3, 0x0

    sparse-switch v4, :sswitch_data_256

    const/4 v3, 0x1

    :goto_30
    if-eqz v10, :cond_195

    if-eqz v8, :cond_151

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    const/4 v8, 0x0

    :goto_3b
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    goto :goto_d

    :sswitch_3f
    if-eqz v10, :cond_43

    const/4 v3, 0x1

    goto :goto_30

    :cond_43
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x5e

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_64

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x2

    aput v21, v19, v13

    add-int/lit8 v11, v11, 0x1

    :goto_5f
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    move v13, v12

    goto :goto_d

    :cond_64
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x1

    aput v21, v19, v13

    goto :goto_5f

    :sswitch_6d
    if-nez v10, :cond_73

    const/4 v3, 0x1

    move v12, v13

    :goto_71
    move v13, v12

    goto :goto_30

    :cond_73
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v15, v19, v21

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_85

    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_92

    :cond_85
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "You must define characters in a set."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_92
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x3

    aput v21, v19, v13

    const/4 v10, 0x0

    const/4 v8, 0x0

    goto :goto_71

    :sswitch_9d
    if-nez v10, :cond_252

    if-eqz v13, :cond_ad

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_ba

    :cond_ad
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_ba
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x5

    aput v21, v19, v13

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    :goto_c5
    move v13, v12

    goto/16 :goto_30

    :sswitch_c8
    if-eqz v9, :cond_24f

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x6

    aput v21, v19, v13

    const/4 v9, 0x0

    :goto_d3
    move v13, v12

    goto/16 :goto_30

    :sswitch_d6
    if-nez v10, :cond_24c

    if-eqz v13, :cond_e6

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_f3

    :cond_e6
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_f3
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x7

    aput v21, v19, v13

    :goto_fb
    move v13, v12

    goto/16 :goto_30

    :sswitch_fe
    if-nez v10, :cond_249

    if-eqz v13, :cond_10e

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_11b

    :cond_10e
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_11b
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x8

    aput v21, v19, v13

    :goto_123
    move v13, v12

    goto/16 :goto_30

    :sswitch_126
    if-nez v10, :cond_246

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x4

    aput v21, v19, v13

    :goto_130
    move v13, v12

    goto/16 :goto_30

    :sswitch_133
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_146

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Escape found at end of pattern!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_146
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v3, 0x1

    goto/16 :goto_30

    :cond_151
    add-int/lit8 v19, v11, 0x2

    move/from16 v0, v19

    if-ge v0, v2, :cond_186

    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x2d

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_186

    add-int/lit8 v19, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x5d

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_186

    const/4 v8, 0x1

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3b

    :cond_186
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v12, 0x1

    aput v4, v19, v12

    move v12, v13

    goto/16 :goto_3b

    :cond_195
    if-eqz v9, :cond_21e

    const/16 v19, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_1b0

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range not ended with \'}\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_1b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I
    :try_end_1bb
    .catchall {:try_start_25 .. :try_end_1bb} :catchall_22

    move-result v5

    if-gez v5, :cond_1e8

    :try_start_1be
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v16, v14

    move/from16 v17, v14

    :goto_1c6
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_20f

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range quantifier minimum is greater than maximum"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1d9
    .catch Ljava/lang/NumberFormatException; {:try_start_1be .. :try_end_1d9} :catch_1d9
    .catchall {:try_start_1be .. :try_end_1d9} :catchall_22

    :catch_1d9
    move-exception v6

    move v12, v13

    :goto_1db
    :try_start_1db
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range number format incorrect"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_1e8
    .catchall {:try_start_1db .. :try_end_1e8} :catchall_22

    :cond_1e8
    const/16 v19, 0x0

    :try_start_1ea
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_204

    const v16, 0x7fffffff

    goto :goto_1c6

    :cond_204
    add-int/lit8 v19, v5, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_1c6

    :cond_20f
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_211
    .catch Ljava/lang/NumberFormatException; {:try_start_1ea .. :try_end_211} :catch_1d9
    .catchall {:try_start_1ea .. :try_end_211} :catchall_22

    add-int/lit8 v12, v13, 0x1

    :try_start_213
    aput v17, v19, v13

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_217
    .catch Ljava/lang/NumberFormatException; {:try_start_213 .. :try_end_217} :catch_241
    .catchall {:try_start_213 .. :try_end_217} :catchall_22

    add-int/lit8 v13, v12, 0x1

    :try_start_219
    aput v16, v19, v12
    :try_end_21b
    .catch Ljava/lang/NumberFormatException; {:try_start_219 .. :try_end_21b} :catch_1d9
    .catchall {:try_start_219 .. :try_end_21b} :catchall_22

    move v11, v7

    goto/16 :goto_d

    :cond_21e
    if-eqz v3, :cond_243

    :try_start_220
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    goto/16 :goto_3b

    :cond_228
    if-eqz v10, :cond_237

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Set was not terminated!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_237
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([II)[I
    :try_end_23e
    .catchall {:try_start_220 .. :try_end_23e} :catchall_22

    move-result-object v19

    monitor-exit v20

    return-object v19

    :catch_241
    move-exception v6

    goto :goto_1db

    :cond_243
    move v12, v13

    goto/16 :goto_3b

    :cond_246
    move v12, v13

    goto/16 :goto_130

    :cond_249
    move v12, v13

    goto/16 :goto_123

    :cond_24c
    move v12, v13

    goto/16 :goto_fb

    :cond_24f
    move v12, v13

    goto/16 :goto_d3

    :cond_252
    move v12, v13

    goto/16 :goto_c5

    nop

    :sswitch_data_256
    .sparse-switch
        0x2a -> :sswitch_d6
        0x2b -> :sswitch_fe
        0x2e -> :sswitch_126
        0x5b -> :sswitch_3f
        0x5c -> :sswitch_133
        0x5d -> :sswitch_6d
        0x7b -> :sswitch_9d
        0x7d -> :sswitch_c8
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "? "

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_3a

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2a
    const-string/jumbo v0, "LITERAL: "

    goto :goto_8

    :pswitch_2e
    const-string/jumbo v0, "PREFIX: "

    goto :goto_8

    :pswitch_32
    const-string/jumbo v0, "GLOB: "

    goto :goto_8

    :pswitch_36
    const-string/jumbo v0, "ADVANCED: "

    goto :goto_8

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
