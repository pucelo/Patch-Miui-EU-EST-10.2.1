.class Lcom/android/keyguard/KeyguardSecurityContainer$7$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSecurityContainer$7;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainer$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainer$7;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0

    :cond_0
    return-object v1
.end method
