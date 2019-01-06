.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;


# direct methods
.method constructor <init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V
    .registers 2

    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
