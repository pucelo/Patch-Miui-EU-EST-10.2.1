.class final Lcom/android/server/pm/PackageManagerServiceInjector$3;
.super Landroid/database/ContentObserver;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;->registerDataObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->-wrap0(Landroid/content/Context;)V

    return-void
.end method
