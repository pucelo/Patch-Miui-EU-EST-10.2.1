.class final synthetic Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:J

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    iget-wide v2, p0, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->-$f0:J

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->lambda$-com_android_server_connectivity_tethering_OffloadController$OffloadTetheringStatsProvider_12382(JLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->-$f0:J

    iput-object p3, p0, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;->$m$0()V

    return-void
.end method
