.class final Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/smartcover/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/smartcover/ContentProviderBinder;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;->this$0:Lcom/android/keyguard/smartcover/ContentProviderBinder;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;->this$0:Lcom/android/keyguard/smartcover/ContentProviderBinder;

    invoke-static {v0, p3}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->-wrap0(Lcom/android/keyguard/smartcover/ContentProviderBinder;Landroid/database/Cursor;)V

    return-void
.end method
