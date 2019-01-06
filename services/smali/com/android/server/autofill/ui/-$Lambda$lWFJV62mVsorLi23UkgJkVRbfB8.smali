.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$-com_android_server_autofill_ui_SaveUi_11481(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method
