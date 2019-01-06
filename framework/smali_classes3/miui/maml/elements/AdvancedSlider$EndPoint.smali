.class Lmiui/maml/elements/AdvancedSlider$EndPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$elements$AdvancedSlider$State:[I

.field public mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lmiui/maml/data/Expression;

.field private mPathY:Lmiui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$State;->values()[Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

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

.method static synthetic -wrap0(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const-string/jumbo v0, "EndPoint"

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    const/16 v0, 0x96

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    invoke-direct {p0, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_36

    new-instance v20, Lmiui/maml/util/Utils$Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lmiui/maml/elements/AdvancedSlider;->-get2(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v21

    sub-float v21, p1, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lmiui/maml/elements/AdvancedSlider;->-get3(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v21

    sub-float v21, p2, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    return-object v20

    :cond_36
    const/4 v14, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v10, 0x1

    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/maml/elements/AdvancedSlider;->-get2(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v20

    sub-float v18, p1, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/maml/elements/AdvancedSlider;->-get3(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v20

    sub-float v19, p2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v10, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/elements/AdvancedSlider$Position;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmiui/maml/elements/AdvancedSlider$Position;

    new-instance v12, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v13, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v11, Lmiui/maml/util/Utils$Point;

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v11, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v12, v13, v11, v0}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v11, v0}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v6

    cmpg-double v20, v6, v8

    if-gez v20, :cond_de

    move-wide v8, v6

    move-object v14, v15

    :cond_de
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3d

    :cond_e2
    return-object v14
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .registers 12

    const/4 v1, 0x0

    const-string/jumbo v0, "Path"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-nez v6, :cond_d

    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-void

    :cond_d
    const-string/jumbo v0, "tolerance"

    const/16 v1, 0x96

    invoke-virtual {p0, v6, v0, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string/jumbo v0, "x"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "y"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "Position"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v7, 0x0

    :goto_45
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_64

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$Position;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    invoke-direct/range {v0 .. v5}, Lmiui/maml/elements/AdvancedSlider$Position;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_64
    return-void
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v3, "Intent"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string/jumbo v3, "Command"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v3, "Trigger"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-nez v1, :cond_1d

    if-nez v0, :cond_1d

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    new-instance v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$LaunchAction;)V

    iput-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_36

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    :cond_35
    :goto_35
    return-void

    :cond_36
    if-eqz v0, :cond_67

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, v4}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v3, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-nez v3, :cond_35

    const-string/jumbo v3, "LockScreen_AdvancedSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid Command element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_67
    if-eqz v2, :cond_35

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Lmiui/maml/CommandTrigger;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, v2, v5}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    goto :goto_35
.end method


# virtual methods
.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    :cond_c
    return-void
.end method

.method public getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F
    .registers 13

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    const v3, 0x7effffff

    return v3

    :cond_b
    if-nez p1, :cond_e

    return v8

    :cond_e
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->-get2(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v3

    sub-float v1, p2, v3

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->-get3(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v3

    sub-float v2, p3, v3

    new-instance v3, Lmiui/maml/util/Utils$Point;

    float-to-double v4, v1

    float-to-double v6, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v4

    double-to-float v0, v4

    iget v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_32

    return v0

    :cond_32
    return v8
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    :cond_c
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .registers 5

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    :goto_12
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_12

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    :cond_c
    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    :cond_c
    return-void
.end method
