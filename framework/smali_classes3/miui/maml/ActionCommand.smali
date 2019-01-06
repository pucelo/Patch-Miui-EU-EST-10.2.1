.class public abstract Lmiui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$ActionPerformCommand;,
        Lmiui/maml/ActionCommand$AnimationCommand;,
        Lmiui/maml/ActionCommand$AnimationProperty;,
        Lmiui/maml/ActionCommand$BaseMethodCommand;,
        Lmiui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/maml/ActionCommand$ConditionCommand;,
        Lmiui/maml/ActionCommand$DataSwitchCommand;,
        Lmiui/maml/ActionCommand$DelayCommand;,
        Lmiui/maml/ActionCommand$ExternCommand;,
        Lmiui/maml/ActionCommand$FieldCommand;,
        Lmiui/maml/ActionCommand$IntentCommand;,
        Lmiui/maml/ActionCommand$LoopCommand;,
        Lmiui/maml/ActionCommand$MethodCommand;,
        Lmiui/maml/ActionCommand$ModeToggleHelper;,
        Lmiui/maml/ActionCommand$MultiCommand;,
        Lmiui/maml/ActionCommand$NotificationReceiver;,
        Lmiui/maml/ActionCommand$ObjVar;,
        Lmiui/maml/ActionCommand$OnOffCommandHelper;,
        Lmiui/maml/ActionCommand$PropertyCommand;,
        Lmiui/maml/ActionCommand$RingModeCommand;,
        Lmiui/maml/ActionCommand$SoundCommand;,
        Lmiui/maml/ActionCommand$StateTracker;,
        Lmiui/maml/ActionCommand$StatefulActionCommand;,
        Lmiui/maml/ActionCommand$TargetCommand;,
        Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/maml/ActionCommand$VariableAssignmentCommand;,
        Lmiui/maml/ActionCommand$VariableBinderCommand;,
        Lmiui/maml/ActionCommand$VisibilityProperty;,
        Lmiui/maml/ActionCommand$WifiStateTracker;,
        Lmiui/maml/ActionCommand$WifiSwitchCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    return-void
.end method

.method protected static create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    return-object v3

    :cond_e
    new-instance v1, Lmiui/maml/util/Variable;

    invoke-direct {v1, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-static {p0, p1, p2}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v2

    return-object v2

    :cond_1e
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "RingMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Lmiui/maml/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$RingModeCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    :cond_31
    const-string/jumbo v2, "Wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Lmiui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    :cond_40
    const-string/jumbo v2, "Data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    new-instance v2, Lmiui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$DataSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    :cond_4f
    const-string/jumbo v2, "Bluetooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    :cond_5e
    const-string/jumbo v2, "UsbStorage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    new-instance v2, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    :cond_6d
    return-object v3
.end method

.method public static create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;
    .registers 16

    if-nez p0, :cond_4

    const/4 v10, 0x0

    return-object v10

    :cond_4
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string/jumbo v11, "condition"

    invoke-interface {p0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string/jumbo v11, "delayCondition"

    invoke-interface {p0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    const-string/jumbo v10, "delay"

    const-wide/16 v12, 0x0

    invoke-static {p0, v10, v12, v13}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "Command"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    const-string/jumbo v10, "target"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "value"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lmiui/maml/ActionCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;

    move-result-object v5

    move-object v6, v5

    :goto_4c
    if-nez v6, :cond_134

    const/4 v10, 0x0

    return-object v10

    :cond_50
    const-string/jumbo v10, "VariableCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    new-instance v5, Lmiui/maml/ActionCommand$VariableAssignmentCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_60
    const-string/jumbo v10, "BinderCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    new-instance v5, Lmiui/maml/ActionCommand$VariableBinderCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_70
    const-string/jumbo v10, "IntentCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    new-instance v5, Lmiui/maml/ActionCommand$IntentCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$IntentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_80
    const-string/jumbo v10, "SoundCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_90

    new-instance v5, Lmiui/maml/ActionCommand$SoundCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$SoundCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_90
    const-string/jumbo v10, "ExternCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0

    new-instance v5, Lmiui/maml/ActionCommand$ExternCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ExternCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_a0
    const-string/jumbo v10, "VibrateCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0

    new-instance v5, Lmiui/maml/VibrateCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/VibrateCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_b0
    const-string/jumbo v10, "MethodCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c0

    new-instance v5, Lmiui/maml/ActionCommand$MethodCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$MethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto :goto_4c

    :cond_c0
    const-string/jumbo v10, "FieldCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d1

    new-instance v5, Lmiui/maml/ActionCommand$FieldCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$FieldCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto/16 :goto_4c

    :cond_d1
    const-string/jumbo v10, "MultiCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e3

    const-string/jumbo v10, "GroupCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_eb

    :cond_e3
    new-instance v5, Lmiui/maml/ActionCommand$MultiCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto/16 :goto_4c

    :cond_eb
    const-string/jumbo v10, "LoopCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fc

    new-instance v5, Lmiui/maml/ActionCommand$LoopCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$LoopCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto/16 :goto_4c

    :cond_fc
    const-string/jumbo v10, "AnimationCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10d

    new-instance v5, Lmiui/maml/ActionCommand$AnimationCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$AnimationCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto/16 :goto_4c

    :cond_10d
    const-string/jumbo v10, "ActionCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11e

    new-instance v5, Lmiui/maml/ActionCommand$ActionPerformCommand;

    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ActionPerformCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    move-object v6, v5

    goto/16 :goto_4c

    :cond_11e
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    const-string/jumbo v11, "ActionCommand"

    invoke-virtual {v10, v11}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v4

    check-cast v4, Lmiui/maml/ObjectFactory$ActionCommandFactory;

    if-eqz v4, :cond_152

    invoke-virtual {v4, p1, p0}, Lmiui/maml/ObjectFactory$ActionCommandFactory;->create(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_4c

    :cond_134
    if-eqz v1, :cond_13c

    new-instance v5, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v5, v6, v1}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    move-object v6, v5

    :cond_13c
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_148

    new-instance v5, Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {v5, v6, v2, v3}, Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V

    move-object v6, v5

    :cond_148
    if-eqz v0, :cond_150

    new-instance v5, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v5, v6, v0}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    :goto_14f
    return-object v5

    :cond_150
    move-object v5, v6

    goto :goto_14f

    :cond_152
    move-object v6, v5

    goto/16 :goto_4c
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .registers 1

    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getScreenContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final getScreenContext()Lmiui/maml/ScreenContext;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenElement()Lmiui/maml/elements/ScreenElement;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public perform()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->doPerform()V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method
