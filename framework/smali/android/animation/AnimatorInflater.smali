.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    :cond_7
    :goto_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_18

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_100

    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_100

    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v18, 0x0

    const-string/jumbo v4, "objectAnimator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    :goto_3f
    if-eqz p4, :cond_7

    xor-int/lit8 v4, v18, 0x1

    if-eqz v4, :cond_7

    if-nez v16, :cond_4c

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_4c
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_52
    const-string/jumbo v4, "animator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v14

    goto :goto_3f

    :cond_6b
    const-string/jumbo v4, "set"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_aa

    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    :goto_89
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v14, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    move-object v8, v14

    check-cast v8, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3f

    :cond_aa
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    goto :goto_89

    :cond_b5
    const-string/jumbo v4, "propertyValuesHolder"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v23

    if-eqz v23, :cond_de

    if-eqz v14, :cond_de

    instance-of v4, v14, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_de

    move-object v4, v14

    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_de
    const/16 v18, 0x1

    goto/16 :goto_3f

    :cond_e2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_100
    if-eqz p4, :cond_12a

    if-eqz v16, :cond_12a

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v15, v4, [Landroid/animation/Animator;

    const/16 v19, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_110
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_123

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    add-int/lit8 v20, v19, 0x1

    aput-object v11, v15, v19

    move/from16 v19, v20

    goto :goto_110

    :cond_123
    if-nez p5, :cond_12b

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_12a
    :goto_12a
    return-object v14

    :cond_12b
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_12a
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c

    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v7, Landroid/animation/StateListAnimator;

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    packed-switch v9, :pswitch_data_70

    goto :goto_5

    :pswitch_d
    return-object v7

    :pswitch_e
    const/4 v1, 0x0

    const-string/jumbo v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    new-array v8, v3, [I

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v5

    :goto_25
    if-ge v4, v3, :cond_4c

    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    const v10, 0x10101cd

    if-ne v2, v10, :cond_3e

    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    move v5, v6

    :goto_3a
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_25

    :cond_3e
    add-int/lit8 v5, v6, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_4a

    :goto_47
    aput v2, v8, v6

    goto :goto_3a

    :cond_4a
    neg-int v2, v2

    goto :goto_47

    :cond_4c
    if-nez v1, :cond_5c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1

    :cond_5c
    if-nez v1, :cond_67

    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v11, "animation state item must have a valid animation"

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_67
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_5

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 9

    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    int-to-float v3, v0

    div-float v2, p1, v3

    move v1, p2

    :goto_8
    if-gt v1, p3, :cond_1b

    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    if-eqz p0, :cond_5

    array-length v3, p0

    if-nez v3, :cond_6

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v3, "AnimatorInflater"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_71

    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    const-string/jumbo v4, "AnimatorInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Keyframe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": fraction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_64

    const-string/jumbo v3, "null"

    :goto_3a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", value : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_64
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3a

    :cond_6d
    const-string/jumbo v3, "null"

    goto :goto_56

    :cond_71
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .registers 5

    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_9a

    const/4 v7, 0x1

    :goto_b
    if-eqz v7, :cond_9d

    iget v5, v14, Landroid/util/TypedValue;->type:I

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_a0

    const/4 v8, 0x1

    :goto_1a
    if-eqz v8, :cond_a3

    iget v13, v15, Landroid/util/TypedValue;->type:I

    :goto_1e
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_38

    if-eqz v7, :cond_2e

    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-nez v20, :cond_36

    :cond_2e
    if-eqz v8, :cond_a6

    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_a6

    :cond_36
    const/16 p1, 0x3

    :cond_38
    :goto_38
    if-nez p1, :cond_a9

    const/4 v6, 0x1

    :goto_3b
    const/4 v11, 0x0

    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_105

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v4, :cond_ab

    const/4 v9, 0x0

    :goto_57
    if-nez v12, :cond_b1

    const/4 v10, 0x0

    :goto_5a
    if-nez v9, :cond_5e

    if-eqz v10, :cond_cf

    :cond_5e
    if-eqz v9, :cond_e5

    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    if-eqz v10, :cond_d0

    invoke-static {v9, v10}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v20

    if-nez v20, :cond_b7

    new-instance v20, Landroid/view/InflateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " Can\'t morph from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_9a
    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_9d
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_a0
    const/4 v8, 0x0

    goto/16 :goto_1a

    :cond_a3
    const/4 v13, 0x0

    goto/16 :goto_1e

    :cond_a6
    const/16 p1, 0x0

    goto :goto_38

    :cond_a9
    const/4 v6, 0x0

    goto :goto_3b

    :cond_ab
    new-instance v9, Landroid/util/PathParser$PathData;

    invoke-direct {v9, v4}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :cond_b1
    new-instance v10, Landroid/util/PathParser$PathData;

    invoke-direct {v10, v12}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    goto :goto_5a

    :cond_b7
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    :cond_cf
    :goto_cf
    return-object v11

    :cond_d0
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_cf

    :cond_e5
    if-eqz v10, :cond_cf

    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_cf

    :cond_105
    const/4 v3, 0x0

    const/16 v20, 0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_112

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v3

    :cond_112
    if-eqz v6, :cond_1c0

    if-eqz v7, :cond_18c

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_15d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    :goto_128
    if-eqz v8, :cond_177

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_16a

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    :goto_13c
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v16, v20, v21

    const/16 v21, 0x1

    aput v18, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    :cond_154
    :goto_154
    if-eqz v11, :cond_cf

    if-eqz v3, :cond_cf

    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_cf

    :cond_15d
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto :goto_128

    :cond_16a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    goto :goto_13c

    :cond_177
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v16, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_154

    :cond_18c
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_1b3

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    :goto_19e
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v18, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_154

    :cond_1b3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    goto :goto_19e

    :cond_1c0
    if-eqz v7, :cond_262

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_20c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    :goto_1d9
    if-eqz v8, :cond_24c

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_22c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    :goto_1f2
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    const/16 v21, 0x1

    aput v19, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_154

    :cond_20c
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_21f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto :goto_1d9

    :cond_21f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    goto :goto_1d9

    :cond_22c
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_23f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto :goto_1f2

    :cond_23f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    goto :goto_1f2

    :cond_24c
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_154

    :cond_262
    if-eqz v8, :cond_154

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_291

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    :goto_27b
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v19, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_154

    :cond_291
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_2a4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto :goto_27b

    :cond_2a4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    goto :goto_27b
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 11

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_28

    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_2a

    iget v0, v4, Landroid/util/TypedValue;->type:I

    :goto_b
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_2c

    const/4 v2, 0x1

    :goto_12
    if-eqz v2, :cond_2e

    iget v3, v5, Landroid/util/TypedValue;->type:I

    :goto_16
    if-eqz v1, :cond_1e

    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_26

    :cond_1e
    if-eqz v2, :cond_30

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_30

    :cond_26
    const/4 v6, 0x3

    :goto_27
    return v6

    :cond_28
    const/4 v1, 0x0

    goto :goto_7

    :cond_2a
    const/4 v0, 0x0

    goto :goto_b

    :cond_2c
    const/4 v2, 0x0

    goto :goto_12

    :cond_2e
    const/4 v3, 0x0

    goto :goto_16

    :cond_30
    const/4 v6, 0x0

    goto :goto_27
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .registers 9

    const/4 v5, 0x0

    if-eqz p1, :cond_1f

    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_9
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    :goto_10
    if-eqz v1, :cond_28

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v3, 0x3

    :goto_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v3

    :cond_1f
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_9

    :cond_26
    const/4 v1, 0x0

    goto :goto_10

    :cond_28
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private static isColorType(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-lt p0, v1, :cond_a

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v3

    int-to-long v10, p2

    invoke-virtual {v3, v10, v11, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz v2, :cond_e

    return-object v2

    :cond_e
    const/4 v7, 0x0

    :try_start_f
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    if-eqz v4, :cond_32

    int-to-long v10, p2

    invoke-virtual {v3, v10, v11, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    invoke-virtual {v4, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/animation/Animator;

    move-object v2, v0
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_32} :catch_61
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_38
    .catchall {:try_start_f .. :try_end_32} :catchall_5a

    :cond_32
    if-eqz v7, :cond_37

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_37
    return-object v2

    :catch_38
    move-exception v5

    :try_start_39
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v8
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v9

    if-eqz v7, :cond_60

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_60
    throw v9

    :catch_61
    move-exception v6

    :try_start_62
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v8
    :try_end_83
    .catchall {:try_start_62 .. :try_end_83} :catchall_5a
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_b
    if-eqz p3, :cond_1c

    if-eqz p1, :cond_58

    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_1c
    if-nez p3, :cond_23

    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_48

    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_45

    move-object v4, v2

    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_45
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_50
    return-object p3

    :cond_51
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_b

    :cond_58
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_15
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    if-eqz p1, :cond_3d

    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v9, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_9
    const/4 v5, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_44

    const/4 v2, 0x1

    :goto_18
    const/4 v9, 0x4

    if-ne p3, v9, :cond_26

    if-eqz v2, :cond_46

    iget v9, v6, Landroid/util/TypedValue;->type:I

    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v9

    if-eqz v9, :cond_46

    const/4 p3, 0x3

    :cond_26
    :goto_26
    if-eqz v2, :cond_5b

    packed-switch p3, :pswitch_data_68

    :goto_2b
    :pswitch_2b
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-lez v7, :cond_39

    invoke-static {p0, p1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_3d
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_9

    :cond_44
    const/4 v2, 0x0

    goto :goto_18

    :cond_46
    const/4 p3, 0x0

    goto :goto_26

    :pswitch_48
    const/4 v9, 0x0

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_2b

    :pswitch_52
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v1, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_2b

    :cond_5b
    if-nez p3, :cond_62

    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_2b

    :cond_62
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_2b

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_48
        :pswitch_52
        :pswitch_2b
        :pswitch_52
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v19, 0x0

    const/4 v13, 0x0

    :cond_3
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5c

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v20, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x4

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_3c

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result p4

    :cond_3c
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v11

    if-eqz v11, :cond_58

    if-nez v13, :cond_55

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_55
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_3

    :cond_5c
    if-eqz v13, :cond_146

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_146

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Keyframe;

    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, v5, v20

    if-gez v20, :cond_8f

    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_c6

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_8f
    :goto_8f
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-eqz v20, :cond_a6

    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_dc

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_a6
    :goto_a6
    new-array v12, v4, [Landroid/animation/Keyframe;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_ac
    if-ge v9, v4, :cond_131

    aget-object v11, v12, v9

    invoke-virtual {v11}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_c3

    if-nez v9, :cond_f0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_c3
    :goto_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_ac

    :cond_c6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    invoke-static {v14, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_dc
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    :cond_f0
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_fe

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_c3

    :cond_fe
    move/from16 v17, v9

    move v6, v9

    add-int/lit8 v10, v9, 0x1

    :goto_103
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_115

    aget-object v20, v12, v10

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_12d

    :cond_115
    add-int/lit8 v20, v6, 0x1

    aget-object v20, v12, v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    add-int/lit8 v21, v17, -0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    sub-float v8, v20, v21

    move/from16 v0, v17

    invoke-static {v12, v8, v0, v6}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_c3

    :cond_12d
    move v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_103

    :cond_131
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_146

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_146
    return-object v19
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    int-to-long v12, p1

    invoke-virtual {v3, v12, v13, v8, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;

    if-eqz v2, :cond_16

    return-object v2

    :cond_16
    const/4 v7, 0x0

    :try_start_17
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    if-eqz v4, :cond_3e

    int-to-long v12, p1

    invoke-virtual {v3, v12, v13, v10, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    invoke-virtual {v4, v8, v10}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/animation/StateListAnimator;

    move-object v2, v0
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_3e} :catch_6d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3e} :catch_44
    .catchall {:try_start_17 .. :try_end_3e} :catchall_66

    :cond_3e
    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_43
    return-object v2

    :catch_44
    move-exception v5

    :try_start_45
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v9
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v11

    if-eqz v7, :cond_6c

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6c
    throw v11

    :catch_6d
    move-exception v6

    :try_start_6e
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v9
    :try_end_8f
    .catchall {:try_start_6e .. :try_end_8f} :catchall_66
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v11, 0x3

    if-eq v7, v11, :cond_60

    const/4 v11, 0x1

    if-eq v7, v11, :cond_60

    const/4 v11, 0x2

    if-eq v7, v11, :cond_12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_12
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v11, "propertyValuesHolder"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    if-eqz p1, :cond_57

    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_2b
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v5, v8}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    if-nez v6, :cond_44

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v8, v11, v12, v5}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    :cond_44
    if-eqz v6, :cond_50

    if-nez v9, :cond_4d

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_4d
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_53
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_57
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_2b

    :cond_60
    const/4 v10, 0x0

    if-eqz v9, :cond_77

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v2, :cond_77

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/PropertyValuesHolder;

    aput-object v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_77
    return-object v10
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .registers 13

    const/4 v6, 0x1

    const/16 v7, 0x12c

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v0, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v4, v6

    const/4 v6, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1e

    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    :cond_1e
    const-string/jumbo v6, ""

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-static {p1, v3, v7, v8, v6}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v2, :cond_32

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_32
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_48
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_58

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_58
    if-eqz p2, :cond_5d

    invoke-static {p0, p2, v3, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    :cond_5d
    return-void
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_55

    const/4 v2, 0x0

    :goto_11
    if-nez v4, :cond_5b

    const/4 v3, 0x0

    :goto_14
    if-eqz v2, :cond_6e

    if-eqz v3, :cond_61

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v5

    if-nez v5, :cond_68

    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_55
    new-instance v2, Landroid/util/PathParser$PathData;

    invoke-direct {v2, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_5b
    new-instance v3, Landroid/util/PathParser$PathData;

    invoke-direct {v3, v4}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :cond_61
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    :cond_68
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v0, v6}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    :cond_6d
    :goto_6d
    return-object v0

    :cond_6e
    if-eqz v3, :cond_6d

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v0, v6}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    goto :goto_6d
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .registers 20

    move-object/from16 v3, p0

    check-cast v3, Landroid/animation/ObjectAnimator;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9b

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    move/from16 v0, p2

    if-eq v0, v13, :cond_25

    const/4 v13, 0x4

    move/from16 v0, p2

    if-ne v0, v13, :cond_27

    :cond_25
    const/16 p2, 0x0

    :cond_27
    if-nez v7, :cond_49

    if-nez v8, :cond_49

    new-instance v13, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_49
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v1, v13, p3

    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v2

    if-nez p2, :cond_79

    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v10

    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    :goto_5f
    const/4 v9, 0x0

    const/4 v11, 0x0

    if-eqz v7, :cond_67

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    :cond_67
    if-eqz v8, :cond_6d

    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    :cond_6d
    if-nez v9, :cond_82

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_78
    return-void

    :cond_79
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v10

    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    goto :goto_5f

    :cond_82
    if-nez v11, :cond_8e

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_78

    :cond_8e
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_78

    :cond_9b
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_78
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .registers 15

    const/4 v2, 0x5

    const/4 v5, 0x6

    if-eqz p2, :cond_53

    if-eqz p3, :cond_3b

    const/4 v6, 0x5

    if-ne p4, v6, :cond_25

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    :goto_e
    if-eqz p5, :cond_31

    const/4 v6, 0x5

    if-ne p6, v6, :cond_2b

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    :goto_18
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_e

    :cond_2b
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    goto :goto_18

    :cond_31
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_24

    :cond_3b
    const/4 v6, 0x5

    if-ne p6, v6, :cond_4d

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    :goto_43
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_24

    :cond_4d
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    goto :goto_43

    :cond_53
    if-eqz p3, :cond_a4

    const/4 v6, 0x5

    if-ne p4, v6, :cond_76

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v1, v6

    :goto_5e
    if-eqz p5, :cond_9a

    const/4 v6, 0x5

    if-ne p6, v6, :cond_88

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v4, v6

    :goto_69
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_24

    :cond_76
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    goto :goto_5e

    :cond_82
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    goto :goto_5e

    :cond_88
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_94

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    goto :goto_69

    :cond_94
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_69

    :cond_9a
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_24

    :cond_a4
    if-eqz p5, :cond_24

    const/4 v6, 0x5

    if-ne p6, v6, :cond_ba

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v4, v6

    :goto_af
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_24

    :cond_ba
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_c6

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    goto :goto_af

    :cond_c6
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_af
.end method
