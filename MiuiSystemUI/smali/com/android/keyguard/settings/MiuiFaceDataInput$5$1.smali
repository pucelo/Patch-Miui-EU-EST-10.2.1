.class Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/settings/MiuiFaceDataInput$5;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;->this$1:Lcom/android/keyguard/settings/MiuiFaceDataInput$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;->this$1:Lcom/android/keyguard/settings/MiuiFaceDataInput$5;

    iget-object v0, v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get10(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/view/TextureView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    return-void
.end method
