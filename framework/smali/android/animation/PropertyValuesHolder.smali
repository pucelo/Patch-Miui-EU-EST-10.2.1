.class public Landroid/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;,
        Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;,
        Landroid/animation/PropertyValuesHolder$PointFToFloatArray;,
        Landroid/animation/PropertyValuesHolder$PointFToIntArray;,
        Landroid/animation/PropertyValuesHolder$PropertyValues;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mConverter:Landroid/animation/TypeConverter;

.field private mEvaluator:Landroid/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframes:Landroid/animation/Keyframes;

.field protected mProperty:Landroid/util/Property;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static synthetic -wrap0(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 4

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 4

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap10(Ljava/lang/Object;JFF)V
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->nCallTwoFloatMethod(Ljava/lang/Object;JFF)V

    return-void
.end method

.method static synthetic -wrap11(Ljava/lang/Object;JII)V
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->nCallTwoIntMethod(Ljava/lang/Object;JII)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/Class;Ljava/lang/String;I)J
    .registers 5

    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Ljava/lang/Class;Ljava/lang/String;I)J
    .registers 5

    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Ljava/lang/Object;JF)V
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;JF)V

    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/Object;JFFFF)V
    .registers 8

    invoke-static/range {p0 .. p6}, Landroid/animation/PropertyValuesHolder;->nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V

    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/Object;JIIII)V
    .registers 8

    invoke-static/range {p0 .. p6}, Landroid/animation/PropertyValuesHolder;->nCallFourIntMethod(Ljava/lang/Object;JIIII)V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/Object;JI)V
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic -wrap8(Ljava/lang/Object;J[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/Object;J[I)V
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallMultipleIntMethod(Ljava/lang/Object;J[I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/util/Property;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_19
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    instance-of v0, v0, Landroid/animation/BidirectionalTypeConverter;

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Converter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    invoke-virtual {v2}, Landroid/animation/TypeConverter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be a BidirectionalTypeConverter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    check-cast v0, Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_3d
    return-object p1
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return-object p0

    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez p3, :cond_4b

    :try_start_c
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_f} :catch_49

    move-result-object v3

    :cond_10
    :goto_10
    if-nez v3, :cond_48

    const-string/jumbo v6, "PropertyValuesHolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v8}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "() with type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found on target class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-object v3

    :catch_49
    move-exception v1

    goto :goto_10

    :cond_4b
    new-array v0, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    invoke-virtual {p3, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    sget-object v5, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    :goto_57
    array-length v8, v5

    move v6, v7

    :goto_59
    if-ge v6, v8, :cond_10

    aget-object v4, v5, v6

    aput-object v4, v0, v7

    :try_start_5f
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v9, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-nez v9, :cond_69

    iput-object v4, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_69
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_69} :catch_85

    :cond_69
    return-object v3

    :cond_6a
    const-class v6, Ljava/lang/Integer;

    invoke-virtual {p3, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    sget-object v5, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_57

    :cond_75
    const-class v6, Ljava/lang/Double;

    invoke-virtual {p3, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    sget-object v5, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_57

    :cond_80
    new-array v5, v8, [Ljava/lang/Class;

    aput-object p3, v5, v7

    goto :goto_57

    :catch_85
    move-exception v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_59
.end method

.method private static native nCallFloatMethod(Ljava/lang/Object;JF)V
.end method

.method private static native nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V
.end method

.method private static native nCallFourIntMethod(Ljava/lang/Object;JIIII)V
.end method

.method private static native nCallIntMethod(Ljava/lang/Object;JI)V
.end method

.method private static native nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V
.end method

.method private static native nCallMultipleIntMethod(Ljava/lang/Object;J[I)V
.end method

.method private static native nCallTwoFloatMethod(Ljava/lang/Object;JFF)V
.end method

.method private static native nCallTwoIntMethod(Ljava/lang/Object;JII)V
.end method

.method private static native nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method private static native nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method private static native nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J
.end method

.method private static native nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J
.end method

.method public static varargs ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    .registers 3

    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    .registers 3

    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 4

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 4

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    return-object v1
.end method

.method static ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;
    .registers 4

    instance-of v1, p1, Landroid/animation/Keyframes$IntKeyframes;

    if-eqz v1, :cond_c

    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast p1, Landroid/animation/Keyframes$IntKeyframes;

    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V

    return-object v1

    :cond_c
    instance-of v1, p1, Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v1, :cond_18

    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast p1, Landroid/animation/Keyframes$FloatKeyframes;

    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/Keyframes$FloatKeyframes;)V

    return-object v1

    :cond_18
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    iput-object p1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {p1}, Landroid/animation/Keyframes;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method static ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;
    .registers 4

    instance-of v1, p1, Landroid/animation/Keyframes$IntKeyframes;

    if-eqz v1, :cond_c

    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast p1, Landroid/animation/Keyframes$IntKeyframes;

    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V

    return-object v1

    :cond_c
    instance-of v1, p1, Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v1, :cond_18

    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast p1, Landroid/animation/Keyframes$FloatKeyframes;

    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/Keyframes$FloatKeyframes;)V

    return-object v1

    :cond_18
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {p1}, Landroid/animation/Keyframes;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public static varargs ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[",
            "Landroid/animation/Keyframe;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    new-instance v1, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v1
.end method

.method public static varargs ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TV;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 6

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v1

    new-instance v0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;

    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;-><init>()V

    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, v1}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v2
.end method

.method public static ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;
    .registers 9

    const/4 v6, 0x0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "At least 2 values must be supplied"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_10
    array-length v4, p1

    if-ge v1, v4, :cond_34

    aget-object v4, p1, v1

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "values must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_20
    aget-object v4, p1, v1

    array-length v2, v4

    if-nez v1, :cond_29

    move v3, v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    if-eq v2, v3, :cond_26

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Values must all have the same length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_34
    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    new-array v4, v3, [F

    invoke-direct {v0, v4}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    new-instance v4, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    invoke-direct {v4, p0, v6, v0, p1}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public static varargs ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[",
            "Landroid/animation/Keyframe;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    new-instance v1, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v1
.end method

.method public static varargs ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TV;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 6

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v1

    new-instance v0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;

    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PointFToIntArray;-><init>()V

    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, v1}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v2
.end method

.method public static ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;
    .registers 9

    const/4 v6, 0x0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "At least 2 values must be supplied"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_10
    array-length v4, p1

    if-ge v1, v4, :cond_34

    aget-object v4, p1, v1

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "values must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_20
    aget-object v4, p1, v1

    array-length v2, v4

    if-nez v1, :cond_29

    move v3, v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    if-eq v2, v3, :cond_26

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Values must all have the same length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_34
    new-instance v0, Landroid/animation/IntArrayEvaluator;

    new-array v4, v3, [I

    invoke-direct {v0, v4}, Landroid/animation/IntArrayEvaluator;-><init>([I)V

    new-instance v4, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    invoke-direct {v4, p0, v6, v0, p1}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public static varargs ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property",
            "<*TV;>;",
            "Landroid/animation/TypeConverter",
            "<TT;TV;>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    invoke-virtual {v0, p3}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property",
            "<*TV;>;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-static {p2}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const-class v1, Landroid/graphics/PointF;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    return-object v0
.end method

.method public static varargs ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const-class v1, Landroid/graphics/PointF;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 4

    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .registers 5

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p2

    :try_start_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    :cond_1d
    if-nez v3, :cond_32

    invoke-direct {p0, p1, p3, p4}, Landroid/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit p2

    return-object v2

    :catchall_34
    move-exception v4

    monitor-exit p2

    throw v4
.end method

.method private setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V
    .registers 9

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v4, :cond_12

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v4, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    :goto_11
    return-void

    :cond_12
    :try_start_12
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v4, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v4, :cond_22

    return-void

    :cond_22
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_32} :catch_3f

    goto :goto_11

    :catch_33
    move-exception v1

    const-string/jumbo v4, "PropertyValuesHolder"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_3f
    move-exception v0

    const-string/jumbo v4, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method


# virtual methods
.method calculateValue(F)V
    .registers 4

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v1, p1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-nez v1, :cond_d

    :goto_a
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-void

    :cond_d
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    invoke-virtual {v1, v0}, Landroid/animation/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public clone()Landroid/animation/PropertyValuesHolder;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v2}, Landroid/animation/Keyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->init()V

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    iget-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_26

    new-instance v1, Landroid/util/PathParser$PathData;

    iget-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/PathParser$PathData;

    invoke-direct {v1, v0}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    iput-object v1, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    :cond_26
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    iget-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_41

    new-instance v1, Landroid/util/PathParser$PathData;

    iget-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/PathParser$PathData;

    invoke-direct {v1, v0}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    iput-object v1, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    :cond_41
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v0, v0, Landroid/animation/PathKeyframes$FloatKeyframesBase;

    if-nez v0, :cond_62

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v0, v0, Landroid/animation/PathKeyframes$IntKeyframesBase;

    if-nez v0, :cond_62

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6a

    :cond_62
    new-instance v0, Landroid/animation/PropertyValuesHolder$1;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder$1;-><init>(Landroid/animation/PropertyValuesHolder;)V

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    :goto_69
    return-void

    :cond_6a
    iput-object v2, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    goto :goto_69
.end method

.method public getValueType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method init()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v1, :cond_f

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_1b

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    :cond_d
    :goto_d
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    :cond_f
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_d

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    goto :goto_d
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 7

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_21

    :try_start_11
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_21} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string/jumbo v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catch_2e
    move-exception v1

    const-string/jumbo v2, "PropertyValuesHolder"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setConverter(Landroid/animation/TypeConverter;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    return-void
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 3

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofFloat([F)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofInt([I)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    return-void
.end method

.method public varargs setKeyframes([Landroid/animation/Keyframe;)V
    .registers 6

    array-length v2, p1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_1b

    aget-object v3, p1, v0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1b
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1a
    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v1}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v1}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    :cond_1b
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 5

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-nez v1, :cond_12

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    :goto_6
    sget-object v1, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v2, "set"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    return-void

    :cond_12
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    invoke-virtual {v1}, Landroid/animation/TypeConverter;->getTargetType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 16

    const/4 v13, 0x0

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v10, :cond_75

    const/4 v8, 0x0

    :try_start_6
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v10}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_3a

    const/4 v4, 0x0

    :goto_f
    const/4 v3, 0x0

    :goto_10
    if-ge v3, v4, :cond_3f

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-virtual {v6}, Landroid/animation/Keyframe;->valueWasSetOnStart()Z

    move-result v10

    if-eqz v10, :cond_37

    :cond_24
    if-nez v8, :cond_30

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v10, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_30
    invoke-virtual {v6, v8}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/animation/Keyframe;->setValueWasSetOnStart(Z)V

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_3a
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_3d} :catch_40

    move-result v4

    goto :goto_f

    :cond_3f
    return-void

    :catch_40
    move-exception v0

    const-string/jumbo v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No such property ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v12}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") on target object "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Trying reflection instead"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v13, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    :cond_75
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-nez v10, :cond_e2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v10, :cond_84

    invoke-virtual {p0, v7}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    :cond_84
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v10}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_ae

    const/4 v4, 0x0

    :goto_8d
    const/4 v3, 0x0

    :goto_8e
    if-ge v3, v4, :cond_e2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v10

    if-eqz v10, :cond_a2

    invoke-virtual {v6}, Landroid/animation/Keyframe;->valueWasSetOnStart()Z

    move-result v10

    if-eqz v10, :cond_c7

    :cond_a2
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v10, :cond_b3

    invoke-direct {p0, v7}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v10, :cond_b3

    return-void

    :cond_ae
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_8d

    :cond_b3
    :try_start_b3
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/animation/Keyframe;->setValueWasSetOnStart(Z)V
    :try_end_c7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b3 .. :try_end_c7} :catch_d6
    .catch Ljava/lang/IllegalAccessException; {:try_start_b3 .. :try_end_c7} :catch_ca

    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    :catch_ca
    move-exception v1

    const-string/jumbo v10, "PropertyValuesHolder"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :catch_d6
    move-exception v2

    const-string/jumbo v10, "PropertyValuesHolder"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_e2
    return-void
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v1}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v1}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
