.class Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFloatValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method


# virtual methods
.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    array-length v0, v8

    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_19

    packed-switch v0, :pswitch_data_3e

    :pswitch_14
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    invoke-static {p1, v2, v3, v8}, Landroid/animation/PropertyValuesHolder;->-wrap8(Ljava/lang/Object;J[F)V

    :cond_19
    :goto_19
    return-void

    :pswitch_1a
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    aget v1, v8, v6

    invoke-static {p1, v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->-wrap4(Ljava/lang/Object;JF)V

    goto :goto_19

    :pswitch_22
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    aget v1, v8, v6

    aget v4, v8, v7

    invoke-static {p1, v2, v3, v1, v4}, Landroid/animation/PropertyValuesHolder;->-wrap10(Ljava/lang/Object;JFF)V

    goto :goto_19

    :pswitch_2c
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    aget v4, v8, v6

    aget v5, v8, v7

    const/4 v1, 0x2

    aget v6, v8, v1

    const/4 v1, 0x3

    aget v7, v8, v1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/animation/PropertyValuesHolder;->-wrap5(Ljava/lang/Object;JFFFF)V

    goto :goto_19

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_22
        :pswitch_14
        :pswitch_2c
    .end packed-switch
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 14

    iget-wide v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    return-void

    :cond_9
    sget-object v9, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_c
    sget-object v8, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const/4 v7, 0x0

    if-eqz v5, :cond_2f

    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    :cond_2f
    if-nez v7, :cond_62

    const-string/jumbo v8, "set"

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->calculateValue(F)V

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    array-length v4, v6
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_70

    :try_start_45
    invoke-static {p1, v3, v4}, Landroid/animation/PropertyValuesHolder;->-wrap2(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_45 .. :try_end_4b} :catch_64
    .catchall {:try_start_45 .. :try_end_4b} :catchall_70

    :goto_4b
    if-nez v5, :cond_57

    :try_start_4d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v8, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_70

    :cond_62
    monitor-exit v9

    return-void

    :catch_64
    move-exception v0

    :try_start_65
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p1, v8, v4}, Landroid/animation/PropertyValuesHolder;->-wrap2(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_6d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_65 .. :try_end_6d} :catch_6e
    .catchall {:try_start_65 .. :try_end_6d} :catchall_70

    goto :goto_4b

    :catch_6e
    move-exception v1

    goto :goto_4b

    :catchall_70
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setupSetter(Ljava/lang/Class;)V

    return-void
.end method
