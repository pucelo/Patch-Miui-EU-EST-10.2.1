.class public Lcom/miui/whetstone/cert/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final LOG_TYPE_IP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchData(I[B)V
    .registers 5

    if-eqz p1, :cond_5

    packed-switch p0, :pswitch_data_1c

    :cond_5
    return-void

    :pswitch_6
    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    aget-byte v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
