.class Lcom/android/keyguard/util/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/util/ContentProviderBinder;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/ContentProviderBinder$ChangeObserver;->this$0:Lcom/android/keyguard/util/ContentProviderBinder;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/ContentProviderBinder$ChangeObserver;->this$0:Lcom/android/keyguard/util/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ContentProviderBinder;->startQuery()V

    return-void
.end method
