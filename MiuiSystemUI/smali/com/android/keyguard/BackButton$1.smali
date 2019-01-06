.class Lcom/android/keyguard/BackButton$1;
.super Ljava/lang/Object;
.source "BackButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/BackButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/BackButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/BackButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/BackButton$1;->this$0:Lcom/android/keyguard/BackButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/BackButton$1;->this$0:Lcom/android/keyguard/BackButton;

    invoke-virtual {v0}, Lcom/android/keyguard/BackButton;->takeBackAction()V

    return-void
.end method
