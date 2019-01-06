.class final synthetic Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:J


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->-$f0:J

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$-com_android_server_pm_InstantAppRegistry_31751(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->-$f0:J

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_7060(JLandroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->$id:B

    iput-wide p2, p0, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->-$f0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$5qSWip3Q3NYNf0S8FNRU2st8ZfA;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
