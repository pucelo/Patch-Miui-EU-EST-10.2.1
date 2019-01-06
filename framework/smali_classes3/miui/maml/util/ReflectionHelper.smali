.class public Lmiui/maml/util/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# static fields
.field static PRIMITIVE_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "byte[]"

    const-class v2, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "short[]"

    const-class v2, [S

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "int[]"

    const-class v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "long[]"

    const-class v2, [J

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "char[]"

    const-class v2, [C

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean[]"

    const-class v2, [Z

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "float[]"

    const-class v2, [F

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "double[]"

    const-class v2, [D

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnumConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    return-object v4

    :cond_e
    :try_start_e
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_15} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_15} :catch_19
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_15} :catch_1b

    move-result-object v3

    return-object v3

    :catch_17
    move-exception v2

    :goto_18
    return-object v4

    :catch_19
    move-exception v1

    goto :goto_18

    :catch_1b
    move-exception v0

    goto :goto_18
.end method

.method public static strTypeToClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lmiui/maml/util/ReflectionHelper;->strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lmiui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_11
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_1a
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "java.lang."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1a
.end method

.method public static strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-static {v2}, Lmiui/maml/util/ReflectionHelper;->strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-object v1
.end method
