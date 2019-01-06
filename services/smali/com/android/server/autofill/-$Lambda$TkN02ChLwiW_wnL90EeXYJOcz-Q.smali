.class final synthetic Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/service/autofill/ValueFinder;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/Session;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/Session;->lambda$-com_android_server_autofill_Session_37701(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q;->$m$0(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
