.class Lmiui/maml/ActionCommand$AnimationCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lmiui/maml/data/Expression;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$AnimationCommand;->-miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$AnimationCommand;->-miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand;->-miui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues:[I

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

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string/jumbo v2, "command"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    :cond_17
    :goto_17
    const-string/jumbo v2, "tags"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_17

    :cond_39
    const-string/jumbo v2, "resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_17

    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "play("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v2, v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_17

    const-string/jumbo v2, "ActionCommand"

    const-string/jumbo v3, "bad expression format"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_90
    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_17

    :cond_95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    goto :goto_2a
.end method


# virtual methods
.method public doPerform()V
    .registers 15

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    if-nez v1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v8, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-eq v0, v8, :cond_1a

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v8, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-ne v0, v8, :cond_27

    :cond_1a
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    if-eqz v0, :cond_27

    :cond_22
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    :cond_27
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand;->-getmiui-maml-ActionCommand$AnimationCommand$CommandTypeSwitchesValues()[I

    move-result-object v0

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v8}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_b2

    :goto_36
    return-void

    :pswitch_37
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_36

    :pswitch_3b
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_36

    :pswitch_3f
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_36

    :pswitch_43
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_56

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v9

    if-nez v0, :cond_82

    move-wide v8, v10

    :goto_55
    double-to-long v2, v8

    :cond_56
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v12, :cond_64

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    if-nez v0, :cond_8b

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    :goto_63
    double-to-long v4, v8

    :cond_64
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v13, :cond_70

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v13

    if-nez v0, :cond_94

    :cond_6f
    const/4 v6, 0x0

    :cond_70
    :goto_70
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v8, 0x3

    if-le v0, v8, :cond_7e

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v8, 0x3

    aget-object v0, v0, v8

    if-nez v0, :cond_a2

    :cond_7d
    const/4 v7, 0x0

    :cond_7e
    :goto_7e
    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_36

    :cond_82
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_55

    :cond_8b
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_63

    :cond_94
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v0, v8, v10

    if-lez v0, :cond_6f

    const/4 v6, 0x1

    goto :goto_70

    :cond_a2
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v8, 0x3

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v0, v8, v10

    if-lez v0, :cond_7d

    const/4 v7, 0x1

    goto :goto_7e

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_37
        :pswitch_43
        :pswitch_3f
    .end packed-switch
.end method
