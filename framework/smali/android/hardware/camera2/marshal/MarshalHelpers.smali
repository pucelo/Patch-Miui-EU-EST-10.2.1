.class public final Landroid/hardware/camera2/marshal/MarshalHelpers;
.super Ljava/lang/Object;
.source "MarshalHelpers.java"


# static fields
.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final SIZEOF_INT32:I = 0x4

.field public static final SIZEOF_INT64:I = 0x8

.field public static final SIZEOF_RATIONAL:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkNativeType(I)I
    .registers 4

    packed-switch p0, :pswitch_data_1e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown nativeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    return p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public static checkNativeTypeEquals(II)I
    .registers 7

    if-eq p0, p1, :cond_20

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Expected native type %d, but got %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return p1
.end method

.method public static checkPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "klass must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->isPrimitiveClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'; expected a metadata primitive class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrimitiveTypeSize(I)I
    .registers 4

    const/4 v1, 0x4

    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type, can\'t get size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    const/4 v0, 0x1

    return v0

    :pswitch_22
    return v1

    :pswitch_23
    return v1

    :pswitch_24
    return v0

    :pswitch_25
    return v0

    :pswitch_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public static isPrimitiveClass(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_5

    return v2

    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_d

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_e

    :cond_d
    return v1

    :cond_e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_16

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_17

    :cond_16
    return v1

    :cond_17
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1f

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_20

    :cond_1f
    return v1

    :cond_20
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_28

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_29

    :cond_28
    return v1

    :cond_29
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_31

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_32

    :cond_31
    return v1

    :cond_32
    const-class v0, Landroid/util/Rational;

    if-ne p0, v0, :cond_37

    return v1

    :cond_37
    return v2
.end method

.method public static toStringNativeType(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "TYPE_BYTE"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "TYPE_INT32"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "TYPE_FLOAT"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "TYPE_INT64"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "TYPE_DOUBLE"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "TYPE_RATIONAL"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
    .end packed-switch
.end method

.method public static wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    return-object v0

    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class v0, Ljava/lang/Integer;

    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class v0, Ljava/lang/Float;

    return-object v0

    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class v0, Ljava/lang/Long;

    return-object v0

    :cond_1c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class v0, Ljava/lang/Double;

    return-object v0

    :cond_23
    return-object p0
.end method
