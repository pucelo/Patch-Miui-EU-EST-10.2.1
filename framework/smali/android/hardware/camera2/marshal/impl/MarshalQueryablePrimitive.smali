.class public final Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.super Ljava/lang/Object;
.source "MarshalQueryablePrimitive.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_5e

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_18

    const-class v3, Ljava/lang/Byte;

    if-ne v0, v3, :cond_1d

    :cond_18
    if-nez p2, :cond_1b

    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a

    :cond_1d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_25

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_2a

    :cond_25
    if-ne p2, v1, :cond_28

    :goto_27
    return v1

    :cond_28
    move v1, v2

    goto :goto_27

    :cond_2a
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_32

    const-class v3, Ljava/lang/Float;

    if-ne v0, v3, :cond_38

    :cond_32
    const/4 v3, 0x2

    if-ne p2, v3, :cond_36

    :goto_35
    return v1

    :cond_36
    move v1, v2

    goto :goto_35

    :cond_38
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_40

    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_46

    :cond_40
    const/4 v3, 0x3

    if-ne p2, v3, :cond_44

    :goto_43
    return v1

    :cond_44
    move v1, v2

    goto :goto_43

    :cond_46
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_4e

    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_54

    :cond_4e
    const/4 v3, 0x4

    if-ne p2, v3, :cond_52

    :goto_51
    return v1

    :cond_52
    move v1, v2

    goto :goto_51

    :cond_54
    const-class v3, Landroid/util/Rational;

    if-ne v0, v3, :cond_5e

    const/4 v3, 0x5

    if-ne p2, v3, :cond_5c

    :goto_5b
    return v1

    :cond_5c
    move v1, v2

    goto :goto_5b

    :cond_5e
    return v2
.end method
