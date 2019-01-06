.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I = null

.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty;->-miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty;->-miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->values()[Lmiui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lmiui/maml/ActionCommand$AnimationProperty;->-miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    const-string/jumbo v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string/jumbo v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_10

    :cond_1f
    const-string/jumbo v0, "resume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_10

    :cond_2d
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "play("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string/jumbo v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationProperty;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x5

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const-string/jumbo v0, "ActionCommand"

    const-string/jumbo v1, "bad expression format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_76
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_10
.end method


# virtual methods
.method public doPerform()V
    .registers 14

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty;->-getmiui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    :goto_14
    return-void

    :pswitch_15
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_14

    :pswitch_1b
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_14

    :pswitch_21
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_14

    :pswitch_27
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_3a

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v10

    if-nez v0, :cond_68

    move-wide v0, v8

    :goto_39
    double-to-long v2, v0

    :cond_3a
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v11, :cond_48

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v11

    if-nez v0, :cond_71

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_47
    double-to-long v4, v0

    :cond_48
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v12, :cond_54

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    if-nez v0, :cond_7a

    :cond_53
    const/4 v6, 0x0

    :cond_54
    :goto_54
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_62

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-nez v0, :cond_88

    :cond_61
    const/4 v7, 0x0

    :cond_62
    :goto_62
    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_14

    :cond_68
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_39

    :cond_71
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_47

    :cond_7a
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_53

    const/4 v6, 0x1

    goto :goto_54

    :cond_88
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_61

    const/4 v7, 0x1

    goto :goto_62

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_15
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method
