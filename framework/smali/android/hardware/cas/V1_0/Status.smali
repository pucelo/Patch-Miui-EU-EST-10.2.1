.class public final Landroid/hardware/cas/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final BAD_VALUE:I = 0x6

.field public static final ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final ERROR_CAS_DECRYPT:I = 0xd

.field public static final ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final ERROR_CAS_RESOURCE_BUSY:I = 0x8

.field public static final ERROR_CAS_SESSION_NOT_OPENED:I = 0x3

.field public static final ERROR_CAS_TAMPER_DETECTED:I = 0xa

.field public static final ERROR_CAS_UNKNOWN:I = 0xe

.field public static final OK:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-string/jumbo v2, "OK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    const-string/jumbo v2, "ERROR_CAS_NO_LICENSE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    const-string/jumbo v2, "ERROR_CAS_LICENSE_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    const-string/jumbo v2, "ERROR_CAS_SESSION_NOT_OPENED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3

    :cond_32
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    const-string/jumbo v2, "ERROR_CAS_CANNOT_HANDLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_3f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4c

    const-string/jumbo v2, "ERROR_CAS_INVALID_STATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5

    :cond_4c
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_59

    const-string/jumbo v2, "BAD_VALUE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6

    :cond_59
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_66

    const-string/jumbo v2, "ERROR_CAS_NOT_PROVISIONED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x7

    :cond_66
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_74

    const-string/jumbo v2, "ERROR_CAS_RESOURCE_BUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x8

    :cond_74
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_82

    const-string/jumbo v2, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x9

    :cond_82
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_90

    const-string/jumbo v2, "ERROR_CAS_TAMPER_DETECTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xa

    :cond_90
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9e

    const-string/jumbo v2, "ERROR_CAS_DEVICE_REVOKED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xb

    :cond_9e
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_ac

    const-string/jumbo v2, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xc

    :cond_ac
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ba

    const-string/jumbo v2, "ERROR_CAS_DECRYPT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xd

    :cond_ba
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_c8

    const-string/jumbo v2, "ERROR_CAS_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xe

    :cond_c8
    if-eq p0, v0, :cond_e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "OK"

    return-object v0

    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    const-string/jumbo v0, "ERROR_CAS_NO_LICENSE"

    return-object v0

    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    const-string/jumbo v0, "ERROR_CAS_LICENSE_EXPIRED"

    return-object v0

    :cond_14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    const-string/jumbo v0, "ERROR_CAS_SESSION_NOT_OPENED"

    return-object v0

    :cond_1b
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    const-string/jumbo v0, "ERROR_CAS_CANNOT_HANDLE"

    return-object v0

    :cond_22
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    const-string/jumbo v0, "ERROR_CAS_INVALID_STATE"

    return-object v0

    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_30

    const-string/jumbo v0, "BAD_VALUE"

    return-object v0

    :cond_30
    const/4 v0, 0x7

    if-ne p0, v0, :cond_37

    const-string/jumbo v0, "ERROR_CAS_NOT_PROVISIONED"

    return-object v0

    :cond_37
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3f

    const-string/jumbo v0, "ERROR_CAS_RESOURCE_BUSY"

    return-object v0

    :cond_3f
    const/16 v0, 0x9

    if-ne p0, v0, :cond_47

    const-string/jumbo v0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    return-object v0

    :cond_47
    const/16 v0, 0xa

    if-ne p0, v0, :cond_4f

    const-string/jumbo v0, "ERROR_CAS_TAMPER_DETECTED"

    return-object v0

    :cond_4f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_57

    const-string/jumbo v0, "ERROR_CAS_DEVICE_REVOKED"

    return-object v0

    :cond_57
    const/16 v0, 0xc

    if-ne p0, v0, :cond_5f

    const-string/jumbo v0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    return-object v0

    :cond_5f
    const/16 v0, 0xd

    if-ne p0, v0, :cond_67

    const-string/jumbo v0, "ERROR_CAS_DECRYPT"

    return-object v0

    :cond_67
    const/16 v0, 0xe

    if-ne p0, v0, :cond_6f

    const-string/jumbo v0, "ERROR_CAS_UNKNOWN"

    return-object v0

    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
