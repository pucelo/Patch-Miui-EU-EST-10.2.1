.class Landroid/inputmethodservice/InputMethodService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "com.xiaomi.mibrain.speech"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-wrap3(Landroid/inputmethodservice/InputMethodService;)V

    :cond_e
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "com.xiaomi.mibrain.speech"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-wrap3(Landroid/inputmethodservice/InputMethodService;)V

    :cond_e
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "com.xiaomi.mibrain.speech"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->destroy()V

    :cond_c
    return-void
.end method
