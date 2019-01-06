.class final synthetic Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

.field public static final synthetic $INST$1:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

.field public static final synthetic $INST$2:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$-com_android_server_wm_AppWindowToken_69142(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$-com_android_server_wm_MiuiGesturePointerEventListener_44942(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$-com_android_server_wm_MiuiGesturePointerEventListener_44329(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$INST$0:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    new-instance v0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$INST$1:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    new-instance v0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$INST$2:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
