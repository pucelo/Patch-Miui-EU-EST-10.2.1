.class final synthetic Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4

    invoke-static {p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->lambda$-com_android_server_display_VirtualDisplayAdapter_3051(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;

    invoke-direct {v0}, Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;-><init>()V

    sput-object v0, Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;->$INST$0:Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/-$Lambda$pe87L53A2dvYIZSUUR6Usyk2Zwo;->$m$0(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
