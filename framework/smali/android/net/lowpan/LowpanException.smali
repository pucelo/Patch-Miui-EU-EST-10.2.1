.class public Landroid/net/lowpan/LowpanException;
.super Landroid/util/AndroidException;
.source "LowpanException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_72

    :pswitch_5
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_b
    new-instance v0, Landroid/net/lowpan/InterfaceDisabledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/InterfaceDisabledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_11
    new-instance v0, Landroid/net/lowpan/WrongStateException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/WrongStateException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_17
    new-instance v0, Landroid/net/lowpan/OperationCanceledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/OperationCanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_1d
    new-instance v0, Landroid/net/lowpan/JoinFailedException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_23
    new-instance v0, Landroid/net/lowpan/JoinFailedAtScanException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtScanException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_29
    new-instance v0, Landroid/net/lowpan/JoinFailedAtAuthException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtAuthException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_2f
    new-instance v0, Landroid/net/lowpan/NetworkAlreadyExistsException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/NetworkAlreadyExistsException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_35
    new-instance v1, Landroid/net/lowpan/LowpanException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-direct {v1, v0, p0}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_45
    const-string/jumbo v0, "Feature not supported"

    goto :goto_41

    :pswitch_49
    new-instance v1, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-direct {v1, v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_59
    const-string/jumbo v0, "NCP problem"

    goto :goto_55

    :pswitch_5d
    new-instance v1, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_69
    invoke-direct {v1, v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6d
    const-string/jumbo v0, "Invalid argument"

    goto :goto_69

    nop

    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_5d
        :pswitch_b
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_49
        :pswitch_5
        :pswitch_5
        :pswitch_17
        :pswitch_35
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
    .end packed-switch
.end method
