.class final synthetic Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

.field public static final synthetic $INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

.field public static final synthetic $INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

.field public static final synthetic $INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0()V
    .registers 1

    invoke-static {}, Lcom/android/server/SystemServer;->-com_android_server_SystemServer-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 1

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_33182()V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 1

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_38402()V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 1

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_42824()V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$id:B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$id:B

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$3()V

    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
