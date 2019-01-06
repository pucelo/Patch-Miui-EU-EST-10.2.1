.class Lmiui/maml/ActionCommand$VariableBinderCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lmiui/maml/data/VariableBinder;

.field private mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand;->-miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand;->-miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand;->-miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string/jumbo v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    const-string/jumbo v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    :cond_24
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    if-eqz v0, :cond_13

    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand;->-getmiui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->refresh()V

    goto :goto_13

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method public init()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    return-void
.end method
