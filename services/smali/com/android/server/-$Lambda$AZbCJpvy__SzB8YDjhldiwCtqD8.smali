.class final synthetic Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NsdService$DaemonConnectionSupplier;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;


# direct methods
.method private final synthetic $m$0(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;
    .registers 3

    invoke-static {p1}, Lcom/android/server/NsdService;->-com_android_server_NsdService-mthref-0(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;

    invoke-direct {v0}, Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;-><init>()V

    sput-object v0, Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;->$INST$0:Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;->$m$0(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    return-object v0
.end method
