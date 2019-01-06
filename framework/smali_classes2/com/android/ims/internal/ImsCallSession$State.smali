.class public Lcom/android/ims/internal/ImsCallSession$State;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ESTABLISHED:I = 0x4

.field public static final ESTABLISHING:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final INITIATED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NEGOTIATING:I = 0x2

.field public static final REESTABLISHING:I = 0x6

.field public static final RENEGOTIATING:I = 0x5

.field public static final TERMINATED:I = 0x8

.field public static final TERMINATING:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2c

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "IDLE"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "INITIATED"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "NEGOTIATING"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "ESTABLISHING"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "ESTABLISHED"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "RENEGOTIATING"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "REESTABLISHING"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "TERMINATING"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "TERMINATED"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method
