.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
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

    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const v2, 0x110c0035

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_50

    const/4 v0, 0x0

    :goto_c
    invoke-static {v1, v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-set0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)I

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get3(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get3(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_53

    const/4 v0, 0x1

    :goto_2c
    invoke-static {v1, v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-set1(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)I

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get5(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get1(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get4(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_44
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get2(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I

    move-result v1

    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-wrap0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V

    return-void

    :cond_50
    const/16 v0, 0x3e7

    goto :goto_c

    :cond_53
    const/4 v0, 0x2

    goto :goto_2c
.end method
