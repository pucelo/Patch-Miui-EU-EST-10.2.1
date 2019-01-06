.class final synthetic Lcom/android/keyguard/util/wakelock/-$Lambda$zY6HOMmyXmdEeiNPngiXqE_O2t4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/wakelock/-$Lambda$zY6HOMmyXmdEeiNPngiXqE_O2t4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/wakelock/WakeLock;

    invoke-static {v0}, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->-com_android_keyguard_util_wakelock_DelayedWakeLock-mthref-0(Lcom/android/keyguard/util/wakelock/WakeLock;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/util/wakelock/-$Lambda$zY6HOMmyXmdEeiNPngiXqE_O2t4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/util/wakelock/-$Lambda$zY6HOMmyXmdEeiNPngiXqE_O2t4;->$m$0()V

    return-void
.end method
