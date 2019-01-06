.class final synthetic Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->lambda$-com_android_server_notification_ManagedServices_17497(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;

    invoke-direct {v0}, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;->$INST$0:Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
