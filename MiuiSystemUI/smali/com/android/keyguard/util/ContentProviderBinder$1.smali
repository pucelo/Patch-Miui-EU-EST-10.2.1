.class Lcom/android/keyguard/util/ContentProviderBinder$1;
.super Lcom/android/keyguard/util/QueryHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/util/ContentProviderBinder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/ContentProviderBinder;


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/ContentProviderBinder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/ContentProviderBinder$1;->this$0:Lcom/android/keyguard/util/ContentProviderBinder;

    invoke-direct {p0, p2}, Lcom/android/keyguard/util/QueryHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/ContentProviderBinder$1;->this$0:Lcom/android/keyguard/util/ContentProviderBinder;

    invoke-static {v0, p3}, Lcom/android/keyguard/util/ContentProviderBinder;->-wrap0(Lcom/android/keyguard/util/ContentProviderBinder;Landroid/database/Cursor;)V

    return-void
.end method
