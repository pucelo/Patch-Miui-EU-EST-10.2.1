.class final synthetic Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    iget v3, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f0:I

    iget-object v1, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$-com_android_server_companion_CompanionDeviceManagerService_20115(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    iget v3, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f0:I

    iget-object v1, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$-com_android_server_companion_CompanionDeviceManagerService_17294(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->$id:B

    iput p2, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f0:I

    iput-object p3, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f2:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-byte v0, p0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
