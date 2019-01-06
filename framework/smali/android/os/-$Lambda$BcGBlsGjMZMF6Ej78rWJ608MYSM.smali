.class final synthetic Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic $INST$0:Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;

.field public static final synthetic $INST$1:Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0()V
    .registers 1

    invoke-static {}, Landroid/os/GraphicsEnvironment;->lambda$-android_os_GraphicsEnvironment_4205()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 1

    invoke-static {}, Landroid/os/Trace;->lambda$-android_os_Trace_5027()V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;-><init>(B)V

    sput-object v0, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;->$INST$0:Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;

    new-instance v0, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;-><init>(B)V

    sput-object v0, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;->$INST$1:Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;->$id:B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/os/-$Lambda$BcGBlsGjMZMF6Ej78rWJ608MYSM;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
