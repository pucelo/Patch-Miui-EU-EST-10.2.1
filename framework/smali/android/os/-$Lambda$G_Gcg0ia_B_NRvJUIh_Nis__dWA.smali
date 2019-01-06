.class final synthetic Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;

.field public static final synthetic $INST$1:Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroid/os/HidlSupport;->lambda$-android_os_HidlSupport_3440(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroid/os/HidlSupport;->lambda$-android_os_HidlSupport_3646(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;-><init>(B)V

    sput-object v0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;->$INST$0:Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;

    new-instance v0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;-><init>(B)V

    sput-object v0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;->$INST$1:Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 3

    iget-byte v0, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;->$m$1(Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
