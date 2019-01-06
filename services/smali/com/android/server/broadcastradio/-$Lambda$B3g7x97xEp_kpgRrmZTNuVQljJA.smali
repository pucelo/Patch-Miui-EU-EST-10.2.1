.class final synthetic Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/Tuner;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/Tuner;->-com_android_server_broadcastradio_Tuner-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;->$m$0()V

    return-void
.end method
