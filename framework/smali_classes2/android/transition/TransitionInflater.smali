.class public Landroid/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 16

    const/4 v9, 0x0

    const-string/jumbo v8, "class"

    invoke-interface {p1, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " tag must have a \'class\' attribute"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_24
    :try_start_24
    sget-object v9, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    monitor-enter v9
    :try_end_27
    .catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_27} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_27} :catch_fc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_27} :catch_d6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_27} :catch_b0
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_27} :catch_8a

    :try_start_27
    sget-object v8, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_50

    iget-object v8, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_50

    sget-object v8, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v8, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    const/4 v10, 0x1

    aput-object p1, v8, v10

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_61

    move-result-object v8

    :try_start_5f
    monitor-exit v9

    return-object v8

    :catchall_61
    move-exception v8

    monitor-exit v9

    throw v8
    :try_end_64
    .catch Ljava/lang/InstantiationException; {:try_start_5f .. :try_end_64} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5f .. :try_end_64} :catch_fc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5f .. :try_end_64} :catch_d6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_64} :catch_b0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_64} :catch_8a

    :catch_64
    move-exception v5

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_8a
    move-exception v4

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_b0
    move-exception v6

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_d6
    move-exception v7

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_fc
    move-exception v3

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    instance-of v5, p3, Landroid/transition/TransitionSet;

    if-eqz v5, :cond_45

    move-object v3, p3

    check-cast v3, Landroid/transition/TransitionSet;

    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_185

    :cond_19
    const/4 v5, 0x1

    if-eq v4, v5, :cond_185

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "fade"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    new-instance v2, Landroid/transition/Fade;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_33
    if-eqz v2, :cond_c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-direct {p0, p1, p2, v2}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;

    :cond_3e
    if-eqz v3, :cond_17a

    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const/4 v2, 0x0

    goto :goto_c

    :cond_45
    const/4 v3, 0x0

    goto :goto_c

    :cond_47
    const-string/jumbo v5, "changeBounds"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    new-instance v2, Landroid/transition/ChangeBounds;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_33

    :cond_58
    const-string/jumbo v5, "slide"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    new-instance v2, Landroid/transition/Slide;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_33

    :cond_69
    const-string/jumbo v5, "explode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    new-instance v2, Landroid/transition/Explode;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_33

    :cond_7a
    const-string/jumbo v5, "changeImageTransform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    new-instance v2, Landroid/transition/ChangeImageTransform;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_33

    :cond_8b
    const-string/jumbo v5, "changeTransform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    new-instance v2, Landroid/transition/ChangeTransform;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_33

    :cond_9c
    const-string/jumbo v5, "changeClipBounds"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    new-instance v2, Landroid/transition/ChangeClipBounds;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_33

    :cond_ad
    const-string/jumbo v5, "autoTransition"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    new-instance v2, Landroid/transition/AutoTransition;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_33

    :cond_bf
    const-string/jumbo v5, "recolor"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    new-instance v2, Landroid/transition/Recolor;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/Recolor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_33

    :cond_d1
    const-string/jumbo v5, "changeScroll"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e3

    new-instance v2, Landroid/transition/ChangeScroll;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_33

    :cond_e3
    const-string/jumbo v5, "transitionSet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    new-instance v2, Landroid/transition/TransitionSet;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_33

    :cond_f5
    const-string/jumbo v5, "transition"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    const-class v5, Landroid/transition/Transition;

    const-string/jumbo v6, "transition"

    invoke-direct {p0, p2, v5, v6}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    goto/16 :goto_33

    :cond_10b
    const-string/jumbo v5, "targets"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-direct {p0, p1, p2, p3}, Landroid/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V

    goto/16 :goto_33

    :cond_119
    const-string/jumbo v5, "arcMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12e

    new-instance v5, Landroid/transition/ArcMotion;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto/16 :goto_33

    :cond_12e
    const-string/jumbo v5, "pathMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    const-class v5, Landroid/transition/PathMotion;

    const-string/jumbo v6, "pathMotion"

    invoke-direct {p0, p2, v5, v6}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/PathMotion;

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto/16 :goto_33

    :cond_147
    const-string/jumbo v5, "patternPathMotion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15c

    new-instance v5, Landroid/transition/PatternPathMotion;

    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p2}, Landroid/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto/16 :goto_33

    :cond_15c
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown scene name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_17a
    if-eqz p3, :cond_c

    new-instance v5, Landroid/view/InflateException;

    const-string/jumbo v6, "Could not add transition to another transition."

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_185
    return-object v2
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v2, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_58

    :cond_12
    const/4 v4, 0x1

    if-eq v3, v4, :cond_58

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "transitionManager"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    new-instance v2, Landroid/transition/TransitionManager;

    invoke-direct {v2}, Landroid/transition/TransitionManager;-><init>()V

    goto :goto_5

    :cond_2b
    const-string/jumbo v4, "transition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz v2, :cond_3a

    invoke-direct {p0, p2, p3, v2}, Landroid/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V

    goto :goto_5

    :cond_3a
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown scene name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_58
    return-object v2
.end method

.method public static from(Landroid/content/Context;)Landroid/transition/TransitionInflater;
    .registers 2

    new-instance v0, Landroid/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_ba

    :cond_11
    const/4 v9, 0x1

    if-eq v8, v9, :cond_ba

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "target"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    iget-object v9, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/internal/R$styleable;->TransitionTarget:[I

    invoke-virtual {v9, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {p3, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    :cond_37
    :goto_37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :cond_3b
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_48

    const/4 v9, 0x1

    invoke-virtual {p3, v5, v9}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    goto :goto_37

    :cond_48
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_53

    invoke-virtual {p3, v7}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    goto :goto_37

    :cond_53
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5f

    const/4 v9, 0x1

    invoke-virtual {p3, v7, v9}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    goto :goto_37

    :cond_5f
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    :try_start_66
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {p3, v2, v9}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_37

    :catch_6f
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not create "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_8d
    const/4 v9, 0x0

    :try_start_8e
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    :try_end_9b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8e .. :try_end_9b} :catch_6f

    goto :goto_37

    :cond_9c
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown scene name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_ba
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->TransitionManager:[I

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-gez v1, :cond_42

    const/4 v2, 0x0

    :goto_16
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-gez v3, :cond_49

    const/4 v4, 0x0

    :goto_1e
    if-ltz v6, :cond_55

    invoke-virtual {p0, v6}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v5

    if-eqz v5, :cond_55

    if-nez v4, :cond_50

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No toScene for transition ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_42
    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v7}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v2

    goto :goto_16

    :cond_49
    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v7}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v4

    goto :goto_1e

    :cond_50
    if-nez v2, :cond_59

    invoke-virtual {p3, v4, v5}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    :cond_55
    :goto_55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_59
    invoke-virtual {p3, v2, v4, v5}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_55
.end method


# virtual methods
.method public inflateTransition(I)Landroid/transition/Transition;
    .registers 8

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :try_start_a
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_12} :catch_46
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_17
    .catchall {:try_start_a .. :try_end_12} :catchall_41

    move-result-object v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v4

    :catch_17
    move-exception v0

    :try_start_18
    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4

    :catch_46
    move-exception v1

    :try_start_47
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_41
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .registers 9

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :try_start_a
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Landroid/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_11} :catch_45
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_16
    .catchall {:try_start_a .. :try_end_11} :catchall_40

    move-result-object v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v4

    :catch_16
    move-exception v0

    :try_start_17
    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4

    :catch_45
    move-exception v1

    :try_start_46
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_40
.end method
