.class Lmiui/maml/ActionCommand$SoundCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field private static final synthetic -miui-maml-SoundManager$CommandSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mCommand:Lmiui/maml/SoundManager$Command;

.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mStreamIdExp:Lmiui/maml/data/Expression;

.field private mStreamIdVar:Lmiui/maml/data/IndexedVariable;

.field private mVolumeExp:Lmiui/maml/data/Expression;


# direct methods
.method private static synthetic -getmiui-maml-SoundManager$CommandSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$SoundCommand;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$SoundCommand;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/SoundManager$Command;->values()[Lmiui/maml/SoundManager$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/ActionCommand$SoundCommand;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    const-string/jumbo v1, "sound"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    const-string/jumbo v1, "keepCur"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    const-string/jumbo v1, "loop"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    const-string/jumbo v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/SoundManager$Command;->parse(Ljava/lang/String;)Lmiui/maml/SoundManager$Command;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mCommand:Lmiui/maml/SoundManager$Command;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "volume"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_51

    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "invalid expression in SoundCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "streamId"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "streamIdVar"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lmiui/maml/data/IndexedVariable;

    :cond_7b
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 8

    invoke-static {}, Lmiui/maml/ActionCommand$SoundCommand;->-getmiui-maml-SoundManager$CommandSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$SoundCommand;->mCommand:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v3}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50

    :cond_f
    :goto_f
    return-void

    :pswitch_10
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v1, v2

    :cond_1c
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v4, Lmiui/maml/SoundManager$SoundOptions;

    iget-boolean v5, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v6, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    invoke-direct {v4, v5, v6, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {v2, v3, v4}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_f

    :pswitch_3a
    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$SoundCommand;->mCommand:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v2, v0, v3}, Lmiui/maml/ScreenElementRoot;->playSound(ILmiui/maml/SoundManager$Command;)V

    goto :goto_f

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_10
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method
