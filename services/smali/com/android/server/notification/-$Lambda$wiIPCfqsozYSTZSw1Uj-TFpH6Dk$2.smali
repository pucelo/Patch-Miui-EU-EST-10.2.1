.class final synthetic Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ManagedServices;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices;->-com_android_server_notification_ManagedServices-mthref-1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$2;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
