.class final synthetic Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;


# static fields
.field public static final synthetic $INST$0:Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;


# direct methods
.method private final synthetic $m$0()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/telecom/Log;->-android_telecom_Log-mthref-0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;

    invoke-direct {v0}, Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;-><init>()V

    sput-object v0, Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;->$INST$0:Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSessionId()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telecom/-$Lambda$afyb_ODGzn3xMew6fjs8ANSIdVo;->$m$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
