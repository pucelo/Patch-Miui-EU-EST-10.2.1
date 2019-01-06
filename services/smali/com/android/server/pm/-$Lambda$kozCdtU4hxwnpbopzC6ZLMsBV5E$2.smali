.class final synthetic Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:J

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f1:J

    iget v4, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f0:I

    iget-object v5, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f4:Ljava/lang/Object;

    check-cast v5, Landroid/content/IntentSender;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$-com_android_server_pm_PackageManagerService_220334(Ljava/lang/String;JILandroid/content/IntentSender;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f1:J

    iget v4, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f0:I

    iget-object v5, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f4:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/IPackageDataObserver;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$-com_android_server_pm_PackageManagerService_219535(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(BIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->$id:B

    iput p2, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f0:I

    iput-wide p3, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f1:J

    iput-object p5, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f2:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f3:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$2;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
