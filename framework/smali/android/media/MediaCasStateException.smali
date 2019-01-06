.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    return-void
.end method

.method static throwExceptionIfNeeded(ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_d
    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_58

    :pswitch_13
    const-string/jumbo v0, "Unknown CAS state exception"

    :goto_16
    new-instance v1, Landroid/media/MediaCasStateException;

    const-string/jumbo v2, "%s (err=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :pswitch_2f
    const-string/jumbo v0, "General CAS error"

    goto :goto_16

    :pswitch_33
    const-string/jumbo v0, "No license"

    goto :goto_16

    :pswitch_37
    const-string/jumbo v0, "License expired"

    goto :goto_16

    :pswitch_3b
    const-string/jumbo v0, "Session not opened"

    goto :goto_16

    :pswitch_3f
    const-string/jumbo v0, "Unsupported scheme or data format"

    goto :goto_16

    :pswitch_43
    const-string/jumbo v0, "Invalid CAS state"

    goto :goto_16

    :pswitch_47
    const-string/jumbo v0, "Insufficient output protection"

    goto :goto_16

    :pswitch_4b
    const-string/jumbo v0, "Tamper detected"

    goto :goto_16

    :pswitch_4f
    const-string/jumbo v0, "Not initialized"

    goto :goto_16

    :pswitch_53
    const-string/jumbo v0, "Decrypt error"

    goto :goto_16

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_47
        :pswitch_4b
        :pswitch_13
        :pswitch_4f
        :pswitch_53
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
