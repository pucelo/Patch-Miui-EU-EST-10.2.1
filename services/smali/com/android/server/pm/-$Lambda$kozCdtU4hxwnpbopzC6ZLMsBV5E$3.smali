.class final synthetic Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f2:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f0:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->lambda$-com_android_server_pm_PackageManagerService_723212([ILjava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f0:Z

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$kozCdtU4hxwnpbopzC6ZLMsBV5E$3;->$m$0()V

    return-void
.end method
