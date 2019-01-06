.class final synthetic Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;
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

    iget-object v0, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Call;

    iget-boolean v3, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f0:Z

    iget-object v2, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Call$RttCall;

    invoke-static {v0, v1, v3, v2}, Landroid/telecom/Call;->lambda$-android_telecom_Call_80840(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f0:Z

    iput-object p2, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo;->$m$0()V

    return-void
.end method
