.class public final Landroid/hardware/tetheroffload/control/V1_0/OffloadCallbackEvent;
.super Ljava/lang/Object;
.source "OffloadCallbackEvent.java"


# static fields
.field public static final OFFLOAD_STARTED:I = 0x1

.field public static final OFFLOAD_STOPPED_ERROR:I = 0x2

.field public static final OFFLOAD_STOPPED_LIMIT_REACHED:I = 0x5

.field public static final OFFLOAD_STOPPED_UNSUPPORTED:I = 0x3

.field public static final OFFLOAD_SUPPORT_AVAILABLE:I = 0x4


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

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string/jumbo v2, "OFFLOAD_STARTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    const-string/jumbo v2, "OFFLOAD_STOPPED_ERROR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_1f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    const-string/jumbo v2, "OFFLOAD_STOPPED_UNSUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3

    :cond_2c
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    const-string/jumbo v2, "OFFLOAD_SUPPORT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_39
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_46

    const-string/jumbo v2, "OFFLOAD_STOPPED_LIMIT_REACHED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5

    :cond_46
    if-eq p0, v0, :cond_65

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

    :cond_65
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "OFFLOAD_STARTED"

    return-object v0

    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "OFFLOAD_STOPPED_ERROR"

    return-object v0

    :cond_e
    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    const-string/jumbo v0, "OFFLOAD_STOPPED_UNSUPPORTED"

    return-object v0

    :cond_15
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1c

    const-string/jumbo v0, "OFFLOAD_SUPPORT_AVAILABLE"

    return-object v0

    :cond_1c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string/jumbo v0, "OFFLOAD_STOPPED_LIMIT_REACHED"

    return-object v0

    :cond_23
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
