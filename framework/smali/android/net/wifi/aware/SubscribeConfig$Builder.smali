.class public final Landroid/net/wifi/aware/SubscribeConfig$Builder;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnableTerminateNotification:Z

.field private mMatchFilter:[B

.field private mServiceName:[B

.field private mServiceSpecificInfo:[B

.field private mSubscribeType:I

.field private mTtlSec:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/SubscribeConfig;
    .registers 8

    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    iget v4, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    iget v5, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    iget-boolean v6, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZ)V

    return-object v0
.end method

.method public setMatchFilter(Ljava/util/List;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Landroid/net/wifi/aware/SubscribeConfig$Builder;"
        }
    .end annotation

    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid service name - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    return-object p0
.end method

.method public setServiceSpecificInfo([B)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public setSubscribeType(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid subscribeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    return-object p0
.end method

.method public setTerminateNotificationEnabled(Z)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4

    if-gez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    return-object p0
.end method
