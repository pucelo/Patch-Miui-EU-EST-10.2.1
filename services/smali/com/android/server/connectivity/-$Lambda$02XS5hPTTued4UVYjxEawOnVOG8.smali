.class final synthetic Lcom/android/server/connectivity/-$Lambda$02XS5hPTTued4UVYjxEawOnVOG8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$Lambda$02XS5hPTTued4UVYjxEawOnVOG8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/Nat464Xlat;

    iget-object v1, p0, Lcom/android/server/connectivity/-$Lambda$02XS5hPTTued4UVYjxEawOnVOG8;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->lambda$-com_android_server_connectivity_Nat464Xlat_12384(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$Lambda$02XS5hPTTued4UVYjxEawOnVOG8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/connectivity/-$Lambda$02XS5hPTTued4UVYjxEawOnVOG8;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/-$Lambda$02XS5hPTTued4UVYjxEawOnVOG8;->$m$0()V

    return-void
.end method
