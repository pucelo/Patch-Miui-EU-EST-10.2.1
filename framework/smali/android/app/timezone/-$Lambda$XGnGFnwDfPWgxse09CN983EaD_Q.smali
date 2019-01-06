.class final synthetic Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget v1, p0, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;->-$f0:I

    invoke-virtual {v0, v1}, Landroid/app/timezone/RulesManager$CallbackWrapper;->lambda$-android_app_timezone_RulesManager$CallbackWrapper_7810(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;->-$f0:I

    iput-object p2, p0, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;->$m$0()V

    return-void
.end method
