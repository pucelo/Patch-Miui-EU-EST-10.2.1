.class Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
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
.field mFloatAnimatedValue:F

.field mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

.field private mFloatProperty:Landroid/util/FloatProperty;

.field mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/Property;Landroid/animation/Keyframes$FloatKeyframes;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    :cond_16
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/Keyframes$FloatKeyframes;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .registers 3

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getFloatValue(F)F

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .registers 3

    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v1, Landroid/animation/Keyframes$FloatKeyframes;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/PropertyValuesHolder;
    .registers 2

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 8

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v2, p1, v3}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    :cond_c
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1c
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    iget v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {p1, v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->-wrap4(Ljava/lang/Object;JF)V

    return-void

    :cond_2c
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_42

    :try_start_30
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_42} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_4f
    move-exception v1

    const-string/jumbo v2, "PropertyValuesHolder"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public varargs setFloatValues([F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v0, Landroid/animation/Keyframes$FloatKeyframes;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .registers 3

    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/util/FloatProperty;

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    :goto_8
    return-void

    :cond_9
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    goto :goto_8
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 12

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v5, :cond_5

    return-void

    :cond_5
    sget-object v6, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_8
    sget-object v5, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const/4 v4, 0x0

    if-eqz v3, :cond_2b

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    :cond_2b
    if-nez v4, :cond_53

    const-string/jumbo v5, "set"

    iget-object v7, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_60

    move-result-object v2

    :try_start_36
    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->-wrap0(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_36 .. :try_end_3c} :catch_63
    .catchall {:try_start_36 .. :try_end_3c} :catchall_60

    :goto_3c
    if-nez v3, :cond_48

    :try_start_3e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v8, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_60

    :cond_53
    monitor-exit v6

    iget-wide v6, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_5f

    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    :cond_5f
    return-void

    :catchall_60
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_63
    move-exception v0

    goto :goto_3c
.end method
