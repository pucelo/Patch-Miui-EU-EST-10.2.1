.class Lcom/android/keyguard/PasswordTextViewForPIN$1;
.super Ljava/lang/Object;
.source "PasswordTextViewForPIN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPIN;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get6(Lcom/android/keyguard/PasswordTextViewForPIN;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v2, 0x28

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get6(Lcom/android/keyguard/PasswordTextViewForPIN;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    sub-int v5, v4, v1

    int-to-long v8, v5

    const-wide/16 v10, 0x28

    mul-long v6, v8, v10

    invoke-static {v0, v6, v7}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->-wrap1(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
