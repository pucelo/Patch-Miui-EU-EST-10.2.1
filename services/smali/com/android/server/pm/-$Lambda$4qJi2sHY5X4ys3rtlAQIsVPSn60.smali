.class final synthetic Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, [B

    check-cast p1, Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$-com_android_server_pm_ShortcutDumpFiles_2368([BLjava/io/PrintWriter;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$-com_android_server_pm_ShortcutPackage_14748(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$-com_android_server_pm_ShortcutService_126098(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService-mthref-4(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private final synthetic $m$4(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService-mthref-5(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private final synthetic $m$5(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService-mthref-6(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private final synthetic $m$6(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$-com_android_server_pm_ShortcutService_127316(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$id:B

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$id:B

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$2(Ljava/lang/Object;)V

    return-void

    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$3(Ljava/lang/Object;)V

    return-void

    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$4(Ljava/lang/Object;)V

    return-void

    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$5(Ljava/lang/Object;)V

    return-void

    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;->$m$6(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method
